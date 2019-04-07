#include "stdafx.h"
#include <Math.h>
#include <sstream>
#include <fstream>
#include "Horizon.hh"

using namespace std;
using namespace GelCore;

Horizon::Horizon(void)
{
}

Horizon::Horizon(std::string infilename)
{
	filename = infilename;
	
	Load();

	CalcBoundingBox();
}

bool Horizon::Load()
{
	if (LoadXYZ() > 0)
		return true;

	return false;
}

void Horizon::DrawPoints()
{
	glPointSize(4);
	GLdouble colorTop[3] = {1.0, 0.0, 0.0};
	GLdouble colorBottom[3] = {0.0, 0.0, 1.0};
	GLdouble color[3];
	
	GLdouble glVtx[3];
	Vertex3* vtx;
	glBegin(GL_POINTS);
	for (vector<Vertex3*>::iterator iter = vertices.begin(); iter != vertices.end(); ++iter) {
		vtx = *iter;
		// TODO: Make the color range a little more intelligent...
		InterpolateColor(colorTop, colorBottom, color, (-vtx->z-1200)/1300);
		glColor3dv(color);
		glVtx[0] = vtx->x;
		glVtx[1] = vtx->y;
		glVtx[2] = vtx->z;
		glVertex3dv(glVtx);
	}
	glEnd();
}

void Horizon::CalcBoundingBox()
{
	Vertex3 vtx;
	
	bbox.VtxMin = *(vertices.front());
	bbox.VtxMax = *(vertices.back());

	// TODO: Find the real z range by looping over all points.
	// Could be best to do this during loading.
	double minZ = bbox.VtxMin.z;
	if (minZ > bbox.VtxMax.z) {
		bbox.VtxMin.z = bbox.VtxMax.z;
		bbox.VtxMax.z = minZ;
	}
}

int Horizon::LoadXYZ()
{
	int lineCounter = 0;

	ifstream infile(filename.c_str());
	string str;
	while (getline(infile, str)) {
		if (str[0] == '#') {
			// Simply skip the header information for now.
			continue;
		}
		// Create a new vertex
		Vertex3* vtx = new Vertex3();
		istringstream iss(str);
		iss >> vtx->x >> vtx->y >> vtx->z;
		vertices.push_back(vtx);

		++lineCounter;
	}

	return lineCounter;
}
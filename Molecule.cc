#include "stdafx.h"
#include <Math.h>
#include <sstream>
#include <fstream>
#include "Molecule.hh"

using namespace std;
using namespace GelCore;

Molecule::Molecule(void)
{
}

Molecule::Molecule(std::string infilename)
{
	filename = infilename;
	
	Load();

	CalcBoundingBox();
}

bool Molecule::Load()
{
	if (LoadXYZ() > 0)
		return true;

	return false;
}

void Molecule::DrawPoints()
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

void Molecule::CalcBoundingBox()
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

int Molecule::LoadXYZ()
{
	int lineCounter = 0;

	ifstream infile(filename.c_str());
	string str;
	int atoms = 0;
	while (getline(infile, str)) {
		istringstream iss(str);
		if (lineCounter == 0) {
			// Store the first number which should equal the number of atoms
			iss >> atoms;
			++lineCounter;
			continue;
		}
		if (str.empty()) {
			// Simply skip empty lines
			++lineCounter;
			continue;
		}
		// Create a new vertex
		Vertex3* vtx = new Vertex3();
		char atomType;
		iss >> atomType >> vtx->x >> vtx->y >> vtx->z;
		atomTypes.push_back(atomType);
		vertices.push_back(vtx);

		++lineCounter;
	}

	if (vertices.size() == atoms) {
		return atoms;
	}
	else {
		// Return error value if the number of loaded lines does not match file header number.
		return -1;
	}
}
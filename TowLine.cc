#include "StdAfx.h"
#include <math.h>
#include "Utilities.hh"
#include "TowLine.hh"

using namespace std;
using namespace GelCore;

TowLine::TowLine(void)
{
}

TowLine::TowLine(std::string nameStr)
{
	name = nameStr;
}

TowLine::~TowLine(void)
{
}

void TowLine::DrawPoints()
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
		InterpolateColor(colorTop, colorBottom, color, (vtx->z-bbox.VtxMin.z)/(bbox.VtxMax.z-bbox.VtxMin.z));
		glColor3dv(color);
		glVtx[0] = vtx->x;
		glVtx[1] = vtx->y;
		glVtx[2] = vtx->z;
		glVertex3dv(glVtx);
	}
	glEnd();
}

void TowLine::DrawLines()
{
}

void TowLine::CalcBoundingBox()
{
	bbox.VtxMin.Init(HUGE, HUGE, HUGE);
	bbox.VtxMax.Init(-HUGE, -HUGE, -HUGE);

	// Find the height and width of the bounding box.
	for (vector<Vertex3*>::iterator iter = vertices.begin(); iter != vertices.end(); ++iter) {
		bbox.VtxMin.x = min(bbox.VtxMin.x, (*iter)->x);
		bbox.VtxMin.y = min(bbox.VtxMin.y, (*iter)->y);
		bbox.VtxMin.z = min(bbox.VtxMin.z, (*iter)->z);
		bbox.VtxMax.x = max(bbox.VtxMax.x, (*iter)->x);
		bbox.VtxMax.y = max(bbox.VtxMax.y, (*iter)->y);
		bbox.VtxMax.z = max(bbox.VtxMax.z, (*iter)->z);
	}

	// Definition of the origin for this bounding box:
	// Imagine a line going from the first (a) to the last vertex (b) of the tow line.
	// Find a vector perpendicular to this line, running through the first vertex.
	// Set the origin to be the point on this vector, on the right side of the tow line when
	// looking from a to b, with horizontal distance maxDist*(1+margin) to a, and z=minZ.
	//double margin = 0.01;
	//tlineStart.z = 0.0;
	//tlineEnd.z = 0.0;
	//Vertex3 perp;
	//perp.x = tlineEnd.y - tlineStart.y;
	//perp.y = tlineStart.x - tlineEnd.x;
	//perp.z = 0.0;
	//perp *= (tlineEnd - tlineStart).innerProduct / (maxDist*(1+margin));	
	//bbox.origin = tlineStart + perp;
}
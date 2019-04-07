#include "stdafx.h"
#include "Cube.hh"

using namespace GelCore;

Cube::Cube(int nx, int ny, int nz, double csx, double csy, double csz, double sx, double sy, double sz)
{
	// Make sure we have at least one cell in each direction.
	numCells.x = max(nx, 1);
	numCells.y = max(ny, 1);
	numCells.z = max(nz, 1);
	// Allow any cell size
	cellSize.x = csx;
	cellSize.y = csy;
	cellSize.z = csz;
	// Allow any start position
	startPos.x = sx;
	startPos.y = sy;
	startPos.z = sz;

	CalcBoundingBox();
}

void Cube::DrawLines()
{
	int i, j;

	GLdouble colorTop[3] = {1.0, 0.0, 0.0};
	GLdouble colorBottom[3] = {0.0, 0.0, 1.0};
	GLdouble color[3];
	
	glBegin(GL_LINES);
	// Lines along x axis:
	for (i=0; i<=numCells.y; ++i) {
		for (j=0; j<=numCells.z; ++j) {
			InterpolateColor(colorTop, colorBottom, color, (double)j/numCells.z);
			glColor3dv(color);
			glVertex3d(startPos.x, startPos.y+i*cellSize.y, startPos.z+j*cellSize.z);
			glVertex3d(startPos.x+numCells.x*cellSize.x, startPos.y+i*cellSize.y, startPos.z+j*cellSize.z);
		}
	}
	// Lines along y axis:
	for (i=0; i<=numCells.x; ++i) {
		for (j=0; j<=numCells.z; ++j) {
			InterpolateColor(colorTop, colorBottom, color, (double)j/numCells.z);
			glColor3dv(color);
			glVertex3d(startPos.x+i*cellSize.x, startPos.y, startPos.z+j*cellSize.z);
			glVertex3d(startPos.x+i*cellSize.x, startPos.y+numCells.y*cellSize.y, startPos.z+j*cellSize.z);
		}
	}
	// Lines along z axis:
	for (i=0; i<=numCells.x; ++i) {
		for (j=0; j<=numCells.y; ++j) {
			InterpolateColor(colorTop, colorBottom, color, 0.0);
			glColor3dv(color);
			glVertex3d(startPos.x+i*cellSize.x, startPos.y+j*cellSize.y, startPos.z);
			InterpolateColor(colorTop, colorBottom, color, 1.0);
			glColor3dv(color);
			glVertex3d(startPos.x+i*cellSize.x, startPos.y+j*cellSize.y, startPos.z+numCells.z*cellSize.z);
		}
	}
	glEnd();
}

void Cube::CalcBoundingBox()
{
	bbox.VtxMin = startPos;

	bbox.VtxMax.x = startPos.x + numCells.x * cellSize.x;
	bbox.VtxMax.y = startPos.y + numCells.y * cellSize.y;
	bbox.VtxMax.z = startPos.z + numCells.z * cellSize.z;
}
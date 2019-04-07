#include "StdAfx.h"
#include "GlScene.hh"

using namespace std;
using namespace GelCore;

GlScene::GlScene(GLsizei iWidth, GLsizei iHeight)
{
	width = iWidth;
	height = iHeight;

	zScale = 1.0;
	camDist = 2.0;
	rotAxisX = new Vector4();
	rotAxisY = new Vector4();
	rotAxisZ = new Vector4();
	SetRotAxes();
}

void GlScene::Init()
{
	// Clear the color and depth buffers.
	glClearDepth(1.0f);
	glClearColor(0.0f, 0.0f, 0.0f, 0.0f) ;
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(45.0f, (float)this->width/(float)this->height, 0.0001f, 1000000.0f);

	// Set the model view before rendering.
	// TODO: Find a good initial modelview based on bounding box of rendered object(s).
	glMatrixMode(GL_MODELVIEW);
	glLoadIdentity();
	glScalef(1.0f, 1.0f, 1.0f);
	glTranslatef(0.0f, 0.0f, -2.0f);
}

void GlScene::Render()
{
	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	for (std::vector<Drawable*>::iterator iter = sceneObjects.begin(); iter < sceneObjects.end(); ++iter) {
		(*iter)->DrawPoints();
	}
}

void GlScene::Resize(int iWidth, int iHeight)
{
	height = iHeight;
	width = iWidth;
	if (height == 0)
		height = 1; // To prevent divide by zero.

	// Reset the projection matrix to fit the new window
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	gluPerspective(45.0f, (double)width/(double)height, 0.0001f, 1000000.0f);
	glViewport(0, 0, width, height);

	Render();
}

void GlScene::Rotate(int xPos, int yPos, int dx, int dy)
{
	double ratio;

	// Procedure:
	// 1. Back off scaling of the z axis.
	// 2. Move the local origin to the global origin.
	// 3. Rotate around scene x and y axes according to the received movement.
	// 3. Rotate around scene z axis according to the received movement and start (mouse) position.
	// 4. Move the local origin back to the persisted origin.
	// 5. Re-apply scaling of the z axis.

	glMatrixMode(GL_MODELVIEW);
	glScaled(1.0, 1.0, 1/zScale);
	glTranslated(origin.x, origin.y, origin.z);
	if (dx != 0) {
		// Dragging from top to bottom gives 1 full rotation.
		ratio = 1.0*360.0/width;
		glRotated(dx*ratio, rotAxisY[0], rotAxisY[1], rotAxisY[2]);
		glRotated(dx*ratio*(yPos*2-height)/height, rotAxisZ[0], rotAxisZ[1], rotAxisZ[2]);
	}
	if (dy != 0) {
		// Dragging from far left to far right gives 1 full rotation.
		ratio = 1.0*360.0/height;
		glRotated(dy*ratio, rotAxisX[0], rotAxisX[1], rotAxisX[2]);
		glRotated(-dy*ratio*(xPos*2-width)/width, rotAxisZ[0], rotAxisZ[1], rotAxisZ[2]);
	}
	SetRotAxes();
	
	glTranslated(-origin.x, -origin.y, -origin.z);
	glScaled(1.0, 1.0, zScale);
		
	Render();

	//// Draw the rotation axes for qc.
	//glBegin(GL_LINES);
	//GLdouble color[3] = {0.0, 1.0, 1.0};
	//glColor3dv(color);
	//glVertex3d(0.0, 0.0, 0.0);
	//glVertex3d(1000*rotAxisX[0], 1000*rotAxisX[1], 1000*rotAxisX[2]);
	//color[2] = 0.0;
	//glColor3dv(color);
	//glVertex3d(0.0, 0.0, 0.0);
	//glVertex3d(1000*rotAxisY[0], 1000*rotAxisY[1], 1000*rotAxisY[2]);
	//color[0] = 1.0;
	//glColor3dv(color);
	//glVertex3d(0.0, 0.0, 0.0);
	//glVertex3d(1000*rotAxisZ[0], 1000*rotAxisZ[1], 1000*rotAxisZ[2]);
	//glEnd();
}

void GlScene::Pan(int dx, int dy)
{
	// TODO: Set the panning speed relative to the size of the aggregate bounding box.
	double ratio = 100;

	// Procedure:
	// 1. Back off scaling of the z axis.
	// 2. Move the local origin to the global origin.
	// 3. Set the new persisted origin according to the received movement
	// 4. Move the local origin to the new persisted origin.
	// 5. Re-apply scaling of the z axis.

	glMatrixMode(GL_MODELVIEW);
	glScaled(1.0, 1.0, 1/zScale);
	glTranslated(origin.x, origin.y, origin.z);
	if (dx != 0) {
		SetOrigin((GLdouble)dx*ratio*rotAxisX[0], (GLdouble)dx*ratio*rotAxisX[1], (GLdouble)dx*ratio*rotAxisX[2]);
	}
	if (dy != 0) {
		SetOrigin((GLdouble)dy*ratio*rotAxisY[0], (GLdouble)dy*ratio*rotAxisY[1], (GLdouble)dy*ratio*rotAxisY[2]);
	}
	glTranslated(-origin.x, -origin.y, -origin.z);
	glScaled(1.0, 1.0, zScale);
	
	Render();
}

void GlScene::Zoom(int increment)
{
	double step = camDist*increment*0.01;

	glMatrixMode(GL_MODELVIEW);
	glTranslated(-step*rotAxisZ[0], -step*rotAxisZ[1], -step*rotAxisZ[2]/zScale);
	camDist += step;

	Render();
}

void GlScene::SetRotAxes()
{
	GLdouble* mvMtxAry = new GLdouble[16];
	glGetDoublev(GL_MODELVIEW_MATRIX, mvMtxAry);
	Matrix4 mvMtx;
	mvMtx.Set(mvMtxAry);

	Vector4 basis = new Vector4();
	basis[0] = 1.0;
	// Multiply model view matrix with x basis vector, and put result in rotAxisX.
	basis.Multiply(&mvMtx, &rotAxisX);
	rotAxisX.Set(3, 0.0);
	rotAxisX.Normalize();
	basis.Clear();
	basis[1] = 1.0;
	// Multiply model view matrix with y basis vector, and put result in rotAxisY.
	basis.Multiply(&mvMtx, &rotAxisY);
	rotAxisY.Set(3, 0.0);
	rotAxisY.Normalize();
	basis.Clear();
	basis[2] = 1.0;
	// Multiply model view matrix with z basis vector, and put result in rotAxisZ.
	basis.Multiply(&mvMtx, &rotAxisZ);
	rotAxisZ.Set(3, 0.0);
	rotAxisZ.Normalize();
}

void GlScene::SetOrigin(GLdouble dx, GLdouble dy, GLdouble dz)
{
	origin.x += -dx;
	origin.y += -dy;
	origin.z += -dz;
}

void GlScene::SetZScale(GLfloat zs)
{
	// Procedure:
	// 1. Back off scaling of the z axis.
	// 2. Move the local origin to the global origin.
	// 3. Apply the new scaling factor to the z component of the persisted origin.
	// 4. Move the local origin to the new persisted origin.
	// 5. Apply the new scaling factor to the z axis.

	glScaled(1.0, 1.0, 1/zScale);
	glTranslated(origin.x, origin.y, origin.z);
	origin.z /= zScale;
	zScale = zs;
	origin.z *= zScale;
	glTranslated(-origin.x, -origin.y, -origin.z);
	glScaled(1.0, 1.0, zScale);
	
	Render();
}

bool GlScene::AddObject(GelCore::Drawable* sceneObj)
{
	// Try to add a new Drawable object to the list of objects in the scene.
	try {
		sceneObjects.push_back(sceneObj);
	}
	catch(std::exception e) {
		return false;
	}

	// Transalate the scene to the geometrical center of the new object(s)
	Vertex3 midPt = (sceneObj->bbox.VtxMin + sceneObj->bbox.VtxMax)*0.5;
	//Vertex3 midPtX = (sceneObj->bbox.VtxMax.x - sceneObj->bbox.VtxMin.x) * 0.5;
	//Vertex3 midPtY = (sceneObj->bbox.VtxMax.y - sceneObj->bbox.VtxMin.y) * 0.5;
	//Vertex3 midPtZ = (sceneObj->bbox.VtxMax.z - sceneObj->bbox.VtxMin.z) * 0.5;
	//Vertex3 midPt = sceneObj->bbox.VtxMin + midPtX + midPtY + midPtZ;

	glMatrixMode(GL_MODELVIEW);
	glTranslated(-midPt.x, -midPt.y, -midPt.z);
	
	// Set a suitable camera distance
	camDist = -midPt.z * 50.0;
	glTranslated(0.0, 0.0, -camDist*rotAxisZ[2]);
	
	SetOrigin(-midPt.x, -midPt.y, -midPt.z);
	Render();

	return true;
}

bool GlScene::RemoveObject(GelCore::Drawable* sceneObj)
{
	// Try to find the given Drawable object and remove it from the list of objects in the scene.
	for (vector<Drawable*>::iterator iter = sceneObjects.begin(); iter != sceneObjects.end(); ++iter) {
		if (*iter == sceneObj) {
			sceneObjects.erase(iter);
			return true;
		}
	}
	
	// TODO: Set a suitable view for the remaining objects in the scene.

	Render();

	return false;
}

#include <windows.h>
#include <GL/gl.h>
#include <GL/glu.h>
#include <vector>

#include "Vector4.hh"
#include "Drawable.hh"

namespace GelCore
{
	// Umanaged handler for GL scene operations
	public class GlScene
	{
	public:
		GlScene(GLsizei iWidth, GLsizei iHeight);

		void Init();
		void Render();
		void Resize(int width, int height);
		void Rotate(int xPos, int yPos, int dx, int dy);
		void Pan(int dx, int dy);
		void Zoom(int increment);
		void SetRotAxes();
		void SetOrigin(GLdouble dx, GLdouble dy, GLdouble dz);
		void SetZScale(GLfloat zs);

		bool AddObject(GelCore::Drawable* sceneObj);
		bool RemoveObject(GelCore::Drawable* sceneObj);
	private:
		int width;
		int height;
		GLfloat zScale;
		GLdouble camDist;
		Vector4 rotAxisX;
		Vector4 rotAxisY;
		Vector4 rotAxisZ;
		Vertex3 origin;

		std::vector<GelCore::Drawable*> sceneObjects;
	};
}

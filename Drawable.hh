#ifndef DRAWABLE_HH
#define DRAWABLE_HH

#include <string>
#include <windows.h>
#include <GL/gl.h>
#include "Vector4.hh"
#include "Utilities.hh"

namespace GelCore
{	
	// Span3D is a box defined by a corner point (origin) and three vectors.
	// For bounding boxes, the three vectors should be orthogonal and spanning the 
	// local coordinate space for an object.
	// TODO: Define this struct according to text definition above.
	struct Span3D
	{
		Vertex3 VtxMin;
		Vertex3 VtxMax;
		//Vertex3 origin;
		//std::vector<Vertex3*> spanVectors; 
	};

	public class Drawable
	{	
	public:
		Drawable(void);

		virtual bool Load() { return false; };
		virtual void DrawPoints() {};
		virtual void DrawLines() {};
		virtual void DrawFilled() {};
		
		Span3D bbox;
		std::string name;
	protected:
		std::string filename;
		
		virtual void CalcBoundingBox() = 0;
		void InterpolateColor(GLdouble *startColor, GLdouble *endColor, GLdouble* intpColor, double relPos);
	};
}

#endif /* DRAWABLE_HH */
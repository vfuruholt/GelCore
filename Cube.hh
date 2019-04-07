#include "Drawable.hh"

namespace GelCore
{
	public class Cube : public Drawable
	{
	public:
		// Constructor taking non-GL input parameters.
		Cube(int nx, int ny, int nz, double csx, double csy, double csz, double sx, double sy, double sz);

		void DrawLines();

	private:
		Vertex3 numCells;
		Vertex3 cellSize;
		Vertex3 startPos;

		void CalcBoundingBox();
	};
}
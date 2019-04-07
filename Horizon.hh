#include <vector>
#include "Drawable.hh"

namespace GelCore
{
	public class Horizon : public Drawable
	{
	public:
		Horizon(void);
		Horizon(std::string infilename);

		virtual bool Load() override;
		virtual void DrawPoints() override;
	protected:
		virtual void CalcBoundingBox() override;
	private:
		std::vector<Vertex3*> vertices;
		int LoadXYZ();
	};
}

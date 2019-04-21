#include <vector>
#include "Drawable.hh"

namespace GelCore
{
	public class Molecule : public Drawable
	{
	public:
		Molecule(void);
		Molecule(std::string infilename);

		virtual bool Load() override;
		virtual void DrawPoints() override;
	protected:
		virtual void CalcBoundingBox() override;
	private:
		std::vector<Vertex3*> vertices;
		std::vector<char> atomTypes;
		int LoadXYZ();
	};
}

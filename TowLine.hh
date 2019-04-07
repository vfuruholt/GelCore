#pragma once
#include "drawable.hh"

namespace GelCore
{
	public class TowLine : public Drawable
	{
	public:
		TowLine(void);
		TowLine(std::string nameStr);
		~TowLine(void);

		virtual void DrawPoints() override;
		virtual void DrawLines() override;
		
		inline void addSourceLocation(Vertex3& loc) { vertices.push_back(&loc); }

		std::string name;
		
	protected:
		virtual void CalcBoundingBox() override;

	private:
		std::vector<Vertex3*> vertices;
	};
}
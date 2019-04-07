#pragma once
#include "Drawable.hh"
#include "Utilities.hh"

namespace GelCore
{
	class Receiver
	{
	public:
		Receiver(void);
		Receiver(std::string id, const Vertex3& loc);
		~Receiver(void);
		
		std::string name;
		GelCore::Vertex3 location;
	};
}
#pragma once

#include "Utilities.hh"

namespace GelCore
{
	class Measurement
	{
	public:
		Measurement(void);
		Measurement(Vertex3& loc);
		~Measurement(void);

		Vertex3 location;
		double offset;
		double frequency;
		std::string channel;
		std::string tLineId;
		std::string recId;
		double mvo;
		double pvo;
		double nmvo;
		double pdvo;
	};
}
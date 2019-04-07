#pragma once

#include <vector>
#include "towline.hh"
#include "receiver.hh"
#include "Measurement.hh"

namespace GelCore
{
	class EmDataSet
	{
	public:
		EmDataSet(void);
		~EmDataSet(void);

		int LoadPetrelEmData(const char* filename);

		void addTowLine(GelCore::TowLine* tline) { towLines.push_back(tline); }
		void addReceiver(GelCore::Receiver* rec) { receivers.push_back(rec); }
		void addMeasurement(GelCore::Measurement* mmnt) { measurements.push_back(mmnt); }
	
	private:
		std::vector<GelCore::TowLine*> towLines;
		std::vector<GelCore::Receiver*> receivers;
		std::vector<GelCore::Measurement*> measurements;
	};
}

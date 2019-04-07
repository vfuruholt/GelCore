#include "StdAfx.h"
#include <sstream>
#include <fstream>
#include <map>

#include "EmDataSet.hh"
#include "Utilities.hh"
#include "TowLine.hh"
#include "Receiver.hh"
#include "Measurement.hh"

using namespace std;
using namespace GelCore;

EmDataSet::EmDataSet(void)
{
}

EmDataSet::~EmDataSet(void)
{
}

int EmDataSet::LoadPetrelEmData(const char* filename)
{
	enum LineType {RECPOSITION, ATTRIBUTE, UNDEFINED};

	int lineCounter = 0;
	LineType lineType = UNDEFINED;
	bool readingHeader = false;
	string tlineId = "";
	
	// Define a map to hold the column position of each variable in the file.
	map<const char*, int> columns;
	columns["X"] = -1;
	columns["Y"] = -1;
	columns["Z"] = -1;
	columns["OFFSET"] = -1;
	columns["FREQUENCY"] = -1;
	columns["CHANNEL"] = -1;
	columns["DATATYPE"] = -1;
	columns["LINEID"] = -1;
	columns["RECID"] = -1;
	columns["MVO"] = -1;
	columns["PVO"] = -1;

	ifstream infile(filename);
	string str;
	while (getline(infile, str)) {
		if (str.find("#", 0, 1) != string::npos) {
			if (str.find("receiver positions", 1) != string::npos) {
				lineType = RECPOSITION;
			}
			else if (str.find("attributes", 1) != string::npos) {
				lineType = ATTRIBUTE;
			}
		}

		// Begin reading header information?
		if (str == "BEGIN HEADER") {
			readingHeader = true;
			lineCounter = 0;
			continue;
		}
		if (readingHeader) {
			// Simply throw away any data type information for now.
			string::size_type loc = str.find(",", 0);
			if (loc != string::npos) {
				str = str.substr(loc+1);
			}
			// Set the position of the appropriate map element.
			columns[str.c_str()] = lineCounter;
			++lineCounter;
			continue;
		}
		// End reading header information?
		if (str == "END HEADER") {
			// Check that all the map elements have been assigned a number.
			for (map<const char*, int>::iterator iter = columns.begin(); iter != columns.end(); ++iter) {
				if (iter->second == -1) {
					// Return -1 to indicate unsuccessful file read.
					return -1;
				}
			}
			readingHeader = false;
			lineCounter = 0;
			continue;
		}

		// Split the line into strings
		char inString[50];
		vector<char*> inStrings;
		istringstream iss(str);
		iss >> inString;
		while (inString != "") {
			inStrings.push_back(inString);
			iss >> inString;
		}

		if (lineType == RECPOSITION) {
			// Get the tow line id, and create a new TowLine object if necessary
			if (tlineId != inStrings[columns["LINEID"]]) {
				tlineId = inStrings[columns["LINEID"]];
				addTowLine(new TowLine(tlineId));
			}

			// Create a new Receiver object
			string recId("");
			Vertex3 loc;
			recId = inStrings[columns["RECID"]];
			loc.x = atof(inStrings[columns["X"]]);
			loc.y = atof(inStrings[columns["Y"]]);
			loc.z = atof(inStrings[columns["Z"]]);
			
			addReceiver(new Receiver(recId, loc));

			continue;
		}
		if (lineType == ATTRIBUTE) {
			// Create, populate and add a new Measurement object.
			Vertex3 loc;
			loc.x = atof(inStrings[columns["X"]]);
			loc.y = atof(inStrings[columns["Y"]]);
			loc.z = atof(inStrings[columns["Z"]]);
			GelCore::Measurement mmnt(loc);

			mmnt.offset = atof(inStrings[columns["OFFSET"]]);
			mmnt.frequency = atof(inStrings[columns["FREQUENCY"]]);
			mmnt.channel = inStrings[columns["CHANNEL"]];
			mmnt.tLineId = inStrings[columns["LINEID"]];
			mmnt.recId = inStrings[columns["RECID"]];
			mmnt.mvo = atof(inStrings[columns["MVO"]]);
			mmnt.pvo = atof(inStrings[columns["PVO"]]);

			addMeasurement(&mmnt);

			if (inStrings[columns["DATATYPE"]] == "inline") {
				// Add the source point to the appropriate tow line
				for (vector<TowLine*>::iterator iter = towLines.begin(); iter != towLines.end(); ++iter) {
					if ((*iter)->name == inStrings[columns["LINEID"]]) {
						(*iter)->addSourceLocation(loc);
					}
				}
			}

			++lineCounter;

			continue;
		}
	}

	return lineCounter;
}
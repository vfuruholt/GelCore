#pragma once
#include "drawable.hh"
#include "utilities.hh"
#include "emdataset.hh"

namespace GelCore
{
	struct Attribute
	{
		Vertex3 location;
		double value;
	};

	public class AttributeFilter
	{
	public:
		AttributeFilter(void) {}
		~AttributeFilter(void) {}

		inline void setOffsetRange(double offMin, double offMax);
		inline std::pair<double, double>* getOffsetRange() { return new std::pair<double, double>(offsetMin, offsetMax); }
		inline void setFreqRange(double fMin, double fMax);
		inline void addTowLine(std::string& tLineId) { tLineIds.push_back(tLineId); }
		inline void addRecId(std::string& recId) { recIds.push_back(recId); }
		inline void addChannel(std::string& channel) { channels.push_back(channel); }
		inline void addAttributeType(GelCore::AttributeType attrType) {attrTypes.push_back(attrType); }

	private:
		double offsetMin;
		double offsetMax;
		double freqMin;
		double freqMax;
		std::vector<std::string> tLineIds;
		std::vector<std::string> recIds;
		std::vector<std::string> channels;
		std::vector<GelCore::AttributeType> attrTypes;
	};
	
	class AttributeSet : public GelCore::Drawable
	{		
	public:
		AttributeSet(void);
		AttributeSet(GelCore::EmDataSet& dataSet);
		~AttributeSet(void);

	protected:
		virtual void CalcBoundingBox() override;

	private:
		GelCore::EmDataSet emDataSet;
		GelCore::AttributeFilter filter;
		std::vector<GelCore::Attribute> attributes;
	};	
}

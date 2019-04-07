#include "StdAfx.h"
#include "AttributeSet.hh"

using namespace GelCore;

AttributeSet::AttributeSet(void)
{
}

AttributeSet::AttributeSet(GelCore::EmDataSet& dataSet)
{
	emDataSet = dataSet;
}

AttributeSet::~AttributeSet(void)
{
}

void AttributeSet::CalcBoundingBox()
{
}

void AttributeFilter::setOffsetRange(double offMin, double offMax)
{
	offsetMin = offMin;
	offsetMax = offMax;
}

void AttributeFilter::setFreqRange(double fMin, double fMax)
{
	freqMin = fMin;
	freqMax = fMax;
}
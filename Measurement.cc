#include "StdAfx.h"
#include "Measurement.hh"

using namespace GelCore;

Measurement::Measurement(void)
{
}

Measurement::Measurement(Vertex3& loc)
{
	location = loc;
}

Measurement::~Measurement(void)
{
}

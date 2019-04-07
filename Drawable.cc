#include "StdAfx.h"
#include "Drawable.hh"

using namespace GelCore;

Drawable::Drawable(void)
{
}

void Drawable::InterpolateColor(GLdouble *startColor, GLdouble *endColor, GLdouble* intpColor, double relPos)
{
	for (int i=0; i<3; ++i) {
		intpColor[i] = startColor[i]*(1-relPos)+endColor[i]*relPos;
	}
}
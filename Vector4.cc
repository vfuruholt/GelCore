#include "stdafx.h"
#include <Math.h>
#include "Vector4.hh"

using namespace GelCore;

Vector4::Vector4(void)
{
	// Default to null Vector4.
	for (int i=0; i<4; ++i) {
		entries[i] = 0.0;
	}
}

Vector4::Vector4(const GelCore::Vector4* v)
{
	for (int i=0; i<4; ++i) {
		entries[i] = v->Get(i);
	}
}

Vector4::Vector4(double* inputArray)
{
	for (int i=0; i<4; ++i) {
		entries[i] = inputArray[i];
	}
}

void Vector4::Clear()
{
	for (int i=0; i<4; ++i) {
		entries[i] = 0.0;
	}
}

void Vector4::Normalize()
{
	double norm = sqrt(this->DotProduct(this));

	for (int i=0; i<4; ++i) {
		entries[i] /= norm;
	}
}

double Vector4::DotProduct(GelCore::Vector4* v)
{
	double val = 0.0;
	for (int i=0; i<4; ++i) {
		val += entries[i] * v->Get(i);
	}

	return val;
}

void Vector4::Multiply(GelCore::Matrix4* m, GelCore::Vector4* result)
{
	result->Clear();

	for (int i=0; i<4; ++i) {
		for (int j=0; j<4; ++j) {
			result->Set(i, result->Get(i)+m->Get(i,j) * entries[j]);
		}
	}
}

void Vector4::ToArray(double* ary)
{
	for (int i=0; i<4; ++i)
		ary[i] = entries[i];
}
#include "stdafx.h"
#include "Matrix4.hh"

using namespace GelCore;

Matrix4::Matrix4(void)
{
	this->Identity();
}

Matrix4::Matrix4(double *values)
{
	for (int i=0; i<4; ++i) {
		for (int j=0; j<4; ++j) {
			entries[i][j] = values[i*4+j];
		}
	}
}

void Matrix4::Identity()
{
	for (int i=0; i<4; ++i) {
		for (int j=0; j<4; ++j) {
			entries[i][j] = i==j ? 1.0 : 0.0;
		}
	}
}

void Matrix4::Multiply(Matrix4* m)
{
	double val;
	for (int i=0; i<4; ++i) {
		for (int j=0; j<4; ++j) {
			val = 0.0;
			for (int k=0; k<4; ++k) {
				val += entries[i][k] * m->Get(k,i);
			}
			entries[i][j] = val;
		}
	}
}

void Matrix4::Multiply(const double d)
{
	for (int i=0; i<4; ++i) {
		for (int j=0; j<4; ++j) {
			entries[i][j] *= d;
		}
	}
}

//static Matrix4* Matrix4::Multiply(Matrix4* m1, Matrix4* m2)
//{
//	Matrix4
//}

void Matrix4::ToArray(double* ary)
{
	for (int i=0; i<4; ++i) {
		for (int j=0; j<4; ++j) {
			ary[i*4+j] = entries[i][j];
		}
	}
}
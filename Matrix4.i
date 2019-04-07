#line 1 ".\\Matrix4.cc"
#using <c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\System.dll>
#line 1 ".\\Matrix4.cc"
#using <c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\System.Data.dll>
#line 1 ".\\Matrix4.cc"
#using <c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\System.XML.dll>
#line 1 ".\\Matrix4.cc"
#line 1 "c:\\documents and settings\\vfuruholt\\my documents\\visual studio 2008\\projects\\gel\\gelcore\\stdafx.h"




#pragma once


#line 2 ".\\Matrix4.cc"
#line 1 "c:\\documents and settings\\vfuruholt\\my documents\\visual studio 2008\\projects\\gel\\gelcore\\Matrix4.hh"



namespace GelCore
{
	
	public class Matrix4
	{
	public:
		Matrix4(void);
		Matrix4(double* values);

		void Identity();
		
		inline double Get(unsigned i, unsigned j) { return entries[i][j]; }
		
		inline void Set(unsigned i, unsigned j, double d) { entries[i][j] = d; }
		inline void Set(Matrix4* m) {
			for (int i=0; i<4; ++i) {
				for (int j=0; j<4; ++j) {
					entries[i][j] = m->Get(i,j);
				}
			}
		}
		inline void Set(double* vals) { 
			for (int i=0; i<4; ++i) {
				for (int j=0; j<4; ++j) {
					entries[i][j] = vals[i*4+j];
				}
			}
		}
		void Multiply(Matrix4* m);
		void Multiply(const double d);
		

		void ToArray(double* ary);
		
		inline int NumRows() { return 4; }
		inline int NumCols() { return 4; }
	private:
		double entries[4][4];
	};
}

#line 46 "c:\\documents and settings\\vfuruholt\\my documents\\visual studio 2008\\projects\\gel\\gelcore\\Matrix4.hh"
#line 3 ".\\Matrix4.cc"

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






void Matrix4::ToArray(double* ary)
{
	for (int i=0; i<4; ++i) {
		for (int j=0; j<4; ++j) {
			ary[i*4+j] = entries[i][j];
		}
	}
}

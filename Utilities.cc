#include "StdAfx.h"
#include "Utilities.hh"

using namespace GelCore;

double GelCore::VtxToLineDist(const Vertex3& vtx, const Vertex3& lineStart, const Vertex3& lineEnd)
{
	/*Vertex3 nominator;
	double denominator;

	nominator = (lineEnd-lineStart).dotProduct(lineStart-vtx);
	denominator = (lineEnd - lineStart).innerProduct();

	return sqrt(nominator.innerProduct() / denominator);*/

	return 0.0;
}

double GelCore::VtxToLineDist2D(const Vertex3& vtx, const Vertex3& lineStart, const Vertex3& lineEnd)
{
	/*Vertex3 newVtx = vtx;
	Vertex3 newLineStart = lineStart;
	Vertex3 newLineEnd = lineEnd;
	newVtx.z = 0.0;
	newLineStart.z = 0.0;
	newLineEnd.z = 0.0;

	return VtxToLineDist(newVtx, newLineStart, newLineEnd);*/

	return 0.0;
}
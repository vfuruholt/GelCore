#include "StdAfx.h"
#include "Receiver.hh"

using namespace std;
using namespace GelCore;

Receiver::Receiver(void)
{
	// Initiate an empty receiver id.
	name = "";
	// Place the receiver at the origin.
	location.x = 0.0;
	location.y = 0.0;
	location.z = 0.0;
}

Receiver::Receiver(string id, const GelCore::Vertex3& loc)
{
	name = id;
	location = loc;
}

Receiver::~Receiver(void)
{
}
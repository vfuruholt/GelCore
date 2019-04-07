#line 1 ".\\Vector4.cc"
#using <c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\System.dll>
#line 1 ".\\Vector4.cc"
#using <c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\System.Data.dll>
#line 1 ".\\Vector4.cc"
#using <c:\WINDOWS\Microsoft.NET\Framework\v2.0.50727\System.XML.dll>
#line 1 ".\\Vector4.cc"
#line 1 "c:\\documents and settings\\vfuruholt\\my documents\\visual studio 2008\\projects\\gel\\gelcore\\stdafx.h"




#pragma once


#line 2 ".\\Vector4.cc"
#line 1 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"

















#line 1 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"














 





#line 22 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 23 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"














#line 38 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"



#line 42 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




















    

#line 65 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 67 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"














#pragma once































































































#line 112 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"




#line 117 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"




#line 122 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"
#line 123 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"





















#line 145 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"



#line 149 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"



































































































































































































































































































































































































































































































































































































































































                                                




                                                






































































































































#line 1 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"


#pragma once








#line 13 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"
#line 14 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"





typedef __w64 unsigned int   size_t;
#line 21 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

#line 23 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"
















#line 40 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"


namespace vc_attributes
{
#line 45 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

enum YesNoMaybe
{
	
	No = 0x0fff0001,
	Maybe = 0x0fff0010,
	Yes = 0x0fff0100
};

typedef enum YesNoMaybe YesNoMaybe;

enum AccessType
{
	NoAccess = 0,
	Read = 1,
	Write = 2,
	ReadWrite = 3
};

typedef enum AccessType AccessType;



[repeatable]
[source_annotation_attribute( Parameter )]
struct PreAttribute
{

	PreAttribute();
#line 75 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

	unsigned int Deref;
	YesNoMaybe Valid;
	YesNoMaybe Null;
	YesNoMaybe Tainted;
	AccessType Access;
	size_t ValidElementsConst;
	size_t ValidBytesConst;
	const wchar_t* ValidElements;
	const wchar_t* ValidBytes;
	const wchar_t* ValidElementsLength;
	const wchar_t* ValidBytesLength;
	size_t WritableElementsConst;
	size_t WritableBytesConst;
	const wchar_t* WritableElements;
	const wchar_t* WritableBytes;
	const wchar_t* WritableElementsLength;
	const wchar_t* WritableBytesLength;
	size_t ElementSizeConst;
	const wchar_t* ElementSize;
	YesNoMaybe NullTerminated;
	const wchar_t* Condition;
};

[repeatable]
[source_annotation_attribute( Parameter|ReturnValue )]
struct PostAttribute
{

	PostAttribute();
#line 106 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

	unsigned int Deref;
	YesNoMaybe Valid;
	YesNoMaybe Null;
	YesNoMaybe Tainted;
	AccessType Access;
	size_t ValidElementsConst;
	size_t ValidBytesConst;
	const wchar_t* ValidElements;
	const wchar_t* ValidBytes;
	const wchar_t* ValidElementsLength;
	const wchar_t* ValidBytesLength;
	size_t WritableElementsConst;
	size_t WritableBytesConst;
	const wchar_t* WritableElements;
	const wchar_t* WritableBytes;
	const wchar_t* WritableElementsLength;
	const wchar_t* WritableBytesLength;
	size_t ElementSizeConst;
	const wchar_t* ElementSize;
	YesNoMaybe NullTerminated;
	YesNoMaybe MustCheck;
	const wchar_t* Condition;
};

[source_annotation_attribute( Parameter )]
struct FormatStringAttribute
{

	FormatStringAttribute();
#line 137 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

	const wchar_t* Style;
	const wchar_t* UnformattedAlternative;
};

[repeatable]
[source_annotation_attribute( ReturnValue )]
struct InvalidCheckAttribute
{

	InvalidCheckAttribute();
#line 149 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

	long Value;
};

[source_annotation_attribute( Method )]
struct SuccessAttribute
{

	SuccessAttribute();
#line 159 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

	const wchar_t* Condition;
};

[repeatable]
[source_annotation_attribute( Parameter )]
struct PreBoundAttribute
{

	PreBoundAttribute();
#line 170 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"
	unsigned int Deref;
};

[repeatable]
[source_annotation_attribute( Parameter|ReturnValue )]
struct PostBoundAttribute
{

	PostBoundAttribute();
#line 180 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"
	unsigned int Deref;
};

[repeatable]
[source_annotation_attribute( Parameter )]
struct PreRangeAttribute
{

	PreRangeAttribute();
#line 190 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"
	unsigned int Deref;
	const char* MinVal;
	const char* MaxVal;
};

[repeatable]
[source_annotation_attribute( Parameter|ReturnValue )]
struct PostRangeAttribute
{

	PostRangeAttribute();
#line 202 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"
	unsigned int Deref;
	const char* MinVal;
	const char* MaxVal;
};

#line 208 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"


};  
#line 212 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"






















typedef ::vc_attributes::YesNoMaybe SA_YesNoMaybe;
const ::vc_attributes::YesNoMaybe SA_Yes = ::vc_attributes::Yes;
const ::vc_attributes::YesNoMaybe SA_No = ::vc_attributes::No;
const ::vc_attributes::YesNoMaybe SA_Maybe = ::vc_attributes::Maybe;

typedef ::vc_attributes::AccessType SA_AccessType;
const ::vc_attributes::AccessType SA_NoAccess = ::vc_attributes::NoAccess;
const ::vc_attributes::AccessType SA_Read = ::vc_attributes::Read;
const ::vc_attributes::AccessType SA_Write = ::vc_attributes::Write;
const ::vc_attributes::AccessType SA_ReadWrite = ::vc_attributes::ReadWrite;


typedef ::vc_attributes::PreAttribute          SA_Pre;
typedef ::vc_attributes::PostAttribute         SA_Post;
typedef ::vc_attributes::FormatStringAttribute SA_FormatString;
typedef ::vc_attributes::InvalidCheckAttribute SA_InvalidCheck; 
typedef ::vc_attributes::SuccessAttribute      SA_Success;
typedef ::vc_attributes::PreBoundAttribute     SA_PreBound;
typedef ::vc_attributes::PostBoundAttribute    SA_PostBound;
typedef ::vc_attributes::PreRangeAttribute     SA_PreRange;
typedef ::vc_attributes::PostRangeAttribute    SA_PostRange;
#line 256 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"















#line 272 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

#line 274 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"











#line 286 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

#line 288 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"






#line 295 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"


#line 298 "c:\\program files\\microsoft visual studio 9.0\\vc\\include\\codeanalysis\\sourceannotations.h"

#line 933 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"













































































































































































































































































































































#line 1267 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"



















































































































































































































#line 1479 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"
extern "C" {




#line 1485 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"




























































































































































































































#line 1706 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
#line 1740 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"



































































































































































































































    
    
#line 1970 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"






#line 1977 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"
#line 1978 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"


}
#line 1982 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\sal.h"



#line 69 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"










#line 80 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"






#line 87 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





#line 1 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtassem.h"












#pragma once



#line 18 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtassem.h"



#line 22 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtassem.h"



#line 26 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtassem.h"
#line 93 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#pragma comment(linker,"/manifestdependency:\"type='win32' "            \
        "name='" "Microsoft.VC90" ".DebugCRT' "         \
        "version='" "9.0.21022.8" "' "                          \
        "processorArchitecture='x86' "                                  \
        "publicKeyToken='" "1fc8b3b9a1e18e3b" "'\"")






#line 109 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 111 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





































#line 149 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 151 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





#pragma pack(push,8)
#line 158 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 1 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"













#pragma once
#line 16 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"






#line 23 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"









#pragma pack(push,8)
#line 34 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"


extern "C" {
#line 38 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"








#line 47 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"





typedef __w64 unsigned int   uintptr_t;
#line 54 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"

#line 56 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"





typedef char *  va_list;
#line 63 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"

#line 65 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"





#line 71 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"











#line 83 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"


#line 86 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"



extern void __cdecl __va_start(va_list*, ...);
extern void * __cdecl __va_arg(va_list*, ...);
extern void __cdecl __va_end(va_list*);




















































#line 145 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"


}
#line 149 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"


#pragma pack(pop)
#line 153 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"

#line 155 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\vadefs.h"
#line 160 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


extern "C" {
#line 164 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





#line 170 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#line 175 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#line 180 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"







#line 188 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"






#line 195 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 197 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 198 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"








#line 207 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 208 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"










#line 219 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


#line 222 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 223 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





#line 229 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"









#line 239 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 241 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"







#line 249 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 250 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#line 255 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 257 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 258 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#line 263 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 265 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 266 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


 

#line 271 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
  
 #line 273 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 274 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"



  
    
  

#line 282 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


#line 285 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 286 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"






#line 293 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 294 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





#line 300 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 301 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"










#line 312 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#line 317 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"






#line 324 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





#line 330 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"






#line 337 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 338 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





#line 344 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"






#line 351 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 352 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"






#line 359 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 360 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#line 365 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


#line 368 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 370 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 371 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 372 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





#line 378 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"












#line 391 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 392 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 393 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"










#line 404 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"






#line 411 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 412 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"







#line 420 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 422 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 423 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"



 
  
 



#line 433 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 434 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


 
  
  
 



#line 444 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 445 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


 
  
   
  

#line 453 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
 



#line 458 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 459 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





#line 465 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#line 470 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 472 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 473 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"












typedef size_t rsize_t;

#line 488 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 489 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





typedef __w64 int            intptr_t;
#line 496 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 498 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"














typedef __w64 int            ptrdiff_t;
#line 514 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 516 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"







typedef unsigned short wint_t;
typedef unsigned short wctype_t;

#line 527 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





















__declspec(deprecated("This name was supported during some Whidbey pre-releases. Instead, use the standard name errno_t.")) typedef int errcode;


#line 552 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

typedef int errno_t;
#line 555 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


typedef __w64 long __time32_t;   

#line 560 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


typedef __int64 __time64_t;     

#line 565 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"





typedef __time64_t time_t;      
#line 572 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 574 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"







#line 582 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 583 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#line 588 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 590 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 591 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#line 596 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 598 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 599 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"






#line 606 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 607 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#line 612 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"



#line 616 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"











#line 628 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#line 633 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"




#line 638 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 640 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 641 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"







#line 649 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


































































































































































#line 812 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 813 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"









































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































#line 1879 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"















































































































































#line 2023 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"
#line 2024 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct * pthreadlocinfo;
typedef struct threadmbcinfostruct * pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct
{
    pthreadlocinfo locinfo;
    pthreadmbcinfo mbcinfo;
} _locale_tstruct, *_locale_t;


typedef struct tagLC_ID {
        unsigned short wLanguage;
        unsigned short wCountry;
        unsigned short wCodePage;
} LC_ID, *LPLC_ID;

#line 2045 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


typedef struct threadlocaleinfostruct {
        int refcount;
        unsigned int lc_codepage;
        unsigned int lc_collate_cp;
        unsigned long lc_handle[6]; 
        LC_ID lc_id[6];
        struct {
            char *locale;
            wchar_t *wlocale;
            int *refcount;
            int *wrefcount;
        } lc_category[6];
        int lc_clike;
        int mb_cur_max;
        int * lconv_intl_refcount;
        int * lconv_num_refcount;
        int * lconv_mon_refcount;
        struct lconv * lconv;
        int * ctype1_refcount;
        unsigned short * ctype1;
        const unsigned short * pctype;
        const unsigned char * pclmap;
        const unsigned char * pcumap;
        struct __lc_time_data * lc_time_curr;
} threadlocinfo;

#line 2074 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


}
#line 2078 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"



#line 2082 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 2084 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"



#line 2088 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 2090 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"



#line 2094 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 2096 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"






#line 2103 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"



#line 2107 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"


#pragma pack(pop)
#line 2111 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 2113 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\crtdefs.h"

#line 19 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"






#pragma pack(push,8)
#line 27 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"


extern "C" {
#line 31 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"








struct _exception {
        int type;       
        char *name;     
        double arg1;    
        double arg2;    
        double retval;  
        } ;


#line 49 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"







struct _complex {
        double x,y; 
        } ;




#line 64 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"


#line 67 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"
#line 68 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"






















__declspec(dllimport) extern double _HUGE;


#line 94 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"
#line 95 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"








        int     __cdecl abs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _X);
        long    __cdecl labs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _X);
#line 106 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"

        double  __cdecl acos([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
        double  __cdecl asin([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
        double  __cdecl atan([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
        double  __cdecl atan2([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Y, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);

[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) double __cdecl _copysign ([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Number, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Sign);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) double __cdecl _chgsign ([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);

#line 116 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"
        double  __cdecl cos([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
        double  __cdecl cosh([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
        double  __cdecl exp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
 double  __cdecl fabs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
        double  __cdecl fmod([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Y);
        double  __cdecl log([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
        double  __cdecl log10([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
        double  __cdecl pow([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Y);
        double  __cdecl sin([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
        double  __cdecl sinh([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
        double  __cdecl tan([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
        double  __cdecl tanh([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
        double  __cdecl sqrt([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);


[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) double  __cdecl atof([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_String);
[returnvalue:SA_Post(MustCheck=SA_Yes)] __declspec(dllimport) double  __cdecl _atof_l([SA_Pre(Null=SA_No,NullTerminated=SA_Yes)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] const char *_String, [SA_Pre(Null=SA_Maybe)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Pre(Deref=1,Access=SA_Read)] _locale_t _Locale);
#line 134 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"

__declspec(dllimport) double  __cdecl _cabs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] struct _complex _Complex_value);
__declspec(dllimport) double  __cdecl ceil([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
__declspec(dllimport) double  __cdecl floor([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
__declspec(dllimport) double  __cdecl frexp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _Y);
__declspec(dllimport) double  __cdecl _hypot([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Y);
__declspec(dllimport) double  __cdecl _j0([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X );
__declspec(dllimport) double  __cdecl _j1([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X );
__declspec(dllimport) double  __cdecl _jn(int _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Y);
__declspec(dllimport) double  __cdecl ldexp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Y);




#line 149 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"
        int     __cdecl _matherr([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes)] [SA_Post(Deref=1,Valid=SA_Yes)] struct _exception * _Except);
#line 151 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"
#line 152 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"
__declspec(dllimport) double  __cdecl modf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] double * _Y);

__declspec(dllimport) double  __cdecl _y0([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
__declspec(dllimport) double  __cdecl _y1([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
__declspec(dllimport) double  __cdecl _yn([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Y);




__declspec(dllimport) int     __cdecl _set_SSE2_enable([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Flag);
__declspec(dllimport) float  __cdecl _hypotf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _Y);

#line 165 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"







































#line 205 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"













































#line 251 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"


































































inline long double acosl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (acos((double)_X)); }
inline long double asinl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (asin((double)_X)); }
inline long double atanl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (atan((double)_X)); }
inline long double atan2l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _Y, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (atan2((double)_Y, (double)_X)); }
inline long double ceill([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (ceil((double)_X)); }
inline long double cosl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (cos((double)_X)); }
inline long double coshl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (cosh((double)_X)); }
inline long double expl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (exp((double)_X)); }
inline long double fabsl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (fabs((double)_X)); }
inline long double floorl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (floor((double)_X)); }
inline long double fmodl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _Y)
        {return (fmod((double)_X, (double)_Y)); }
inline long double frexpl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int *_Y)
        {return (frexp((double)_X, _Y)); }
inline long double ldexpl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Y)
        {return (ldexp((double)_X, _Y)); }
inline long double logl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (log((double)_X)); }
inline long double log10l([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (log10((double)_X)); }
inline long double modfl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] long double *_Y)
        {double _Di, _Df = modf((double)_X, &_Di);
        *_Y = (long double)_Di;
        return (_Df); }
inline long double powl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _Y)
        {return (pow((double)_X, (double)_Y)); }
inline long double sinl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (sin((double)_X)); }
inline long double sinhl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (sinh((double)_X)); }
inline long double sqrtl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (sqrt((double)_X)); }

inline long double tanl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (tan((double)_X)); }


#line 365 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"

inline long double tanhl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (tanh((double)_X)); }

inline long double _chgsignl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _Number)
{
    return _chgsign(static_cast<double>(_Number)); 
}

inline long double _copysignl([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _Number, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _Sign)
{
    return _copysign(static_cast<double>(_Number), static_cast<double>(_Sign)); 
}

inline float frexpf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int *_Y)
        {return ((float)frexp((double)_X, _Y)); }


inline float fabsf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)fabs((double)_X)); }
inline float ldexpf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Y)
        {return ((float)ldexp((double)_X, _Y)); }

inline float acosf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)acos((double)_X)); }
inline float asinf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)asin((double)_X)); }
inline float atanf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)atan((double)_X)); }
inline float atan2f([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _Y, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)atan2((double)_Y, (double)_X)); }
inline float ceilf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)ceil((double)_X)); }
inline float cosf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)cos((double)_X)); }
inline float coshf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)cosh((double)_X)); }
inline float expf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)exp((double)_X)); }
inline float floorf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)floor((double)_X)); }
inline float fmodf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _Y)
        {return ((float)fmod((double)_X, (double)_Y)); }
inline float logf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)log((double)_X)); }
inline float log10f([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)log10((double)_X)); }
inline float modff([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] float *_Y)
        { double _Di, _Df = modf((double)_X, &_Di);
        *_Y = (float)_Di;
        return ((float)_Df); }
inline float powf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _Y)
        {return ((float)pow((double)_X, (double)_Y)); }
inline float sinf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)sin((double)_X)); }
inline float sinhf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)sinh((double)_X)); }
inline float sqrtf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)sqrt((double)_X)); }
inline float tanf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)tan((double)_X)); }
inline float tanhf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return ((float)tanh((double)_X)); }
#line 429 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"
#line 430 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"
#line 431 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"
#line 432 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"

















__declspec(dllimport) extern double HUGE;


#line 453 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"

__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_cabs" ". See online help for details.")) __declspec(dllimport) double  __cdecl cabs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] struct _complex _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_hypot" ". See online help for details.")) __declspec(dllimport) double  __cdecl hypot([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Y);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_j0" ". See online help for details.")) __declspec(dllimport) double  __cdecl j0([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_j1" ". See online help for details.")) __declspec(dllimport) double  __cdecl j1([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_jn" ". See online help for details.")) __declspec(dllimport) double  __cdecl jn([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Y);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_y0" ". See online help for details.")) __declspec(dllimport) double  __cdecl y0([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_y1" ". See online help for details.")) __declspec(dllimport) double  __cdecl y1([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X);
__declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C++ conformant name: " "_yn" ". See online help for details.")) __declspec(dllimport) double  __cdecl yn([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _Y);

#line 464 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"

#line 466 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"


}

extern "C++" {

template<class _Ty> inline
        _Ty _Pow_int(_Ty _X, int _Y)
        {unsigned int _N;
        if (_Y >= 0)
                _N = (unsigned int)_Y;
        else
                _N = (unsigned int)(-_Y);
        for (_Ty _Z = _Ty(1); ; _X *= _X)
                {if ((_N & 1) != 0)
                        _Z *= _X;
                if ((_N >>= 1) == 0)
                        return (_Y < 0 ? _Ty(1) / _Z : _Z); }}

inline long __cdecl abs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long _X)
        {return (labs(_X)); }
inline double __cdecl abs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X)
        {return (fabs(_X)); }
inline double __cdecl pow([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Y)
        {return (_Pow_int(_X, _Y)); }
inline float __cdecl abs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (fabsf(_X)); }
inline float __cdecl acos([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (acosf(_X)); }
inline float __cdecl asin([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (asinf(_X)); }
inline float __cdecl atan([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (atanf(_X)); }
inline float __cdecl atan2([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _Y, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (atan2f(_Y, _X)); }
inline float __cdecl ceil([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (ceilf(_X)); }
inline float __cdecl cos([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (cosf(_X)); }
inline float __cdecl cosh([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (coshf(_X)); }
inline float __cdecl exp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (expf(_X)); }
inline float __cdecl fabs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (fabsf(_X)); }
inline float __cdecl floor([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (floorf(_X)); }
inline float __cdecl fmod([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _Y)
        {return (fmodf(_X, _Y)); }
inline float __cdecl frexp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _Y)
        {return (frexpf(_X, _Y)); }
inline float __cdecl ldexp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Y)
        {return (ldexpf(_X, _Y)); }
inline float __cdecl log([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (logf(_X)); }
inline float __cdecl log10([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (log10f(_X)); }
inline float __cdecl modf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] float * _Y)
        {return (modff(_X, _Y)); }
inline float __cdecl pow([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _Y)
        {return (powf(_X, _Y)); }
inline float __cdecl pow([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Y)
        {return (_Pow_int(_X, _Y)); }
inline float __cdecl sin([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (sinf(_X)); }
inline float __cdecl sinh([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (sinhf(_X)); }
inline float __cdecl sqrt([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (sqrtf(_X)); }
inline float __cdecl tan([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (tanf(_X)); }
inline float __cdecl tanh([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] float _X)
        {return (tanhf(_X)); }
inline long double __cdecl abs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (fabsl(_X)); }
inline long double __cdecl acos([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (acosl(_X)); }
inline long double __cdecl asin([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (asinl(_X)); }
inline long double __cdecl atan([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (atanl(_X)); }
inline long double __cdecl atan2([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _Y, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (atan2l(_Y, _X)); }
inline long double __cdecl ceil([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (ceill(_X)); }
inline long double __cdecl cos([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (cosl(_X)); }
inline long double __cdecl cosh([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (coshl(_X)); }
inline long double __cdecl exp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (expl(_X)); }
inline long double __cdecl fabs([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (fabsl(_X)); }
inline long double __cdecl floor([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (floorl(_X)); }
inline long double __cdecl fmod([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _Y)
        {return (fmodl(_X, _Y)); }
inline long double __cdecl frexp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] int * _Y)
        {return (frexpl(_X, _Y)); }
inline long double __cdecl ldexp([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Y)
        {return (ldexpl(_X, _Y)); }
inline long double __cdecl log([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (logl(_X)); }
inline long double __cdecl log10([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (log10l(_X)); }
inline long double __cdecl modf([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X, [SA_Pre(Null=SA_No,WritableElementsConst=1)] [SA_Pre(Deref=1,Valid=SA_No)] long double * _Y)
        {return (modfl(_X, _Y)); }
inline long double __cdecl pow([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _Y)
        {return (powl(_X, _Y)); }
inline long double __cdecl pow([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X, [SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] int _Y)
        {return (_Pow_int(_X, _Y)); }
inline long double __cdecl sin([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (sinl(_X)); }
inline long double __cdecl sinh([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (sinhl(_X)); }
inline long double __cdecl sqrt([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (sqrtl(_X)); }
inline long double __cdecl tan([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (tanl(_X)); }
inline long double __cdecl tanh([SA_Pre(Null=SA_No)] [SA_Pre(Deref=1,Valid=SA_Yes,Access=SA_Read)] long double _X)
        {return (tanhl(_X)); }

}
#line 590 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"


#pragma pack(pop)
#line 594 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"

#line 596 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"







































#line 636 "C:\\Program Files\\Microsoft Visual Studio 9.0\\VC\\include\\Math.h"

#line 3 ".\\Vector4.cc"
#line 1 "c:\\documents and settings\\vfuruholt\\my documents\\visual studio 2008\\projects\\gel\\gelcore\\Vector4.hh"



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
#line 5 "c:\\documents and settings\\vfuruholt\\my documents\\visual studio 2008\\projects\\gel\\gelcore\\Vector4.hh"

namespace GelCore
{
	public class Vector4
	{	
	public:
		Vector4(void);
		Vector4(const Vector4* v);
		Vector4(double* inputArray);
		
		
		inline double& operator[] (int i) {	return entries[i]; }
		Vector4& operator+=(const Vector4& v) {
			for (int i=0; i<4; ++i) {
				entries[i] += v.Get(i);
			}
			return *this;
		}
		Vector4& operator*=(const Vector4& v) {
			for (int i=0; i<4; ++i) {
				entries[i] *= v.Get(i);
			}
			return *this;
		}
		const Vector4 operator+(const Vector4& v) const {
			Vector4 result(*this);
			result += v;
			return result;
		}
		const Vector4 operator*(const Vector4& v) const {
			Vector4 result(*this);
			result *= v;
			return result;
		}
		inline double Get(unsigned i) const { return entries[i]; }
		inline void Set(unsigned i, double d) { entries[i] = d; }
		void Clear();
		void Normalize();
		double DotProduct(Vector4* v);
		void Multiply(GelCore::Matrix4* m, Vector4* result);
		void ToArray(double* ary);
	private:
		double entries[4];
	};
}

#line 52 "c:\\documents and settings\\vfuruholt\\my documents\\visual studio 2008\\projects\\gel\\gelcore\\Vector4.hh"
#line 4 ".\\Vector4.cc"

using namespace GelCore;

Vector4::Vector4(void)
{
	
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

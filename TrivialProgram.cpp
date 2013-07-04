/**
 * This is a minimal program ...
 * It contains an entry point with a return, and no dependent DLLs
 */

#ifdef _MSC_VER
#pragma comment(linker, "/nodefaultlib")
#endif

int main() {return 0;}

int mainCRTStartup() {return 0;}

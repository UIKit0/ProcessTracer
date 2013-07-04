/**
 * This is a minimal program ...
 * It contains an entry point with a return, and no dependent DLLs
 */

#pragma comment(linker, "/nodefaultlib")

int main() {return 0;}

int mainCRTStartup() {return 0;}

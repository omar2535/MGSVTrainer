#include <iostream>
#include <Windows.h>
#include <vector>
#include <string>
#include "proc.h"
#include "Data.cpp"

/*
	COMMENTS:
	Remember to set character encoding to unicode.
	Remember to compile as 64 bit if you are not getting the handle for module.
	It may also be wise to set administrator privelages for this program.
*/
using namespace std;
int main() {
	// initialize basic data (not included in git)
	Data myData;
	const wchar_t* gameName = myData.gameName;
	vector<unsigned int> healthOffsets = myData.healthOffsets;
	DWORD gameInitialOffset = myData.gameInitialOffset;

	DWORD procID = GetProcId(gameName);
	HANDLE hProcess = 0;
	// gets game base address
	uintptr_t gameBaseAddress = GetModuleBaseAddress(procID, gameName);

	hProcess = OpenProcess(PROCESS_ALL_ACCESS, NULL, procID);
	uintptr_t dynamicPointerBaseAddress = gameBaseAddress + gameInitialOffset;
	cout << "Base address of game: 0x" << hex << gameBaseAddress << endl;
	cout << "Dynamically Generated Base Address for offsets: 0x" << hex << dynamicPointerBaseAddress << endl;
	uintptr_t healthAddress = FindDMAAddy(hProcess, dynamicPointerBaseAddress, healthOffsets);
	
	float desiredHealthValue = 5400.00f;
	while (true) {
		WriteProcessMemory(hProcess, (BYTE*)healthAddress, &desiredHealthValue, sizeof(desiredHealthValue), nullptr);
		Sleep(100);
	}

	return 0;
}
#include "FrameChecker.h"
#include "Dma.h"

DMA _dmaCurrent;
DMA _dmaLast;
PDWORD _adder = 0;

#define DMA_CURRENT 0x40420000
#define DMA_LAST 0x40430000
#define ADDER 0x43CA0000

void initFrameChecker()
{
	_dmaCurrent = DmaInit(DMA_CURRENT);
	_dmaLast = DmaInit(DMA_LAST);
	_adder = MapPhysicalMemory(ADDER,65555);
}

DWORD GetPixelsDelta(DWORD CurrentFrame,
	DWORD LastFrame,
	DWORD FrameSize)
{
	if (0 == _adder)
	{
		initFrameChecker();
	}
	DmaReset(&_dmaCurrent);
	DmaReset(&_dmaLast);

	//adder[8] = 18;
	*(PDWORD)((DWORD)_adder + 0x40)=0x2;
	*(PDWORD)((DWORD)_adder + 0x48)=0x20;
	Dump(_adder);

	_adder[0] = 0x1;


	DmaTransfer(&_dmaCurrent,
		CurrentFrame);

	DmaReceive(&_dmaLast,
		LastFrame);

	DmaStartReceive(&_dmaLast,
		FrameSize);
	DmaStart(&_dmaCurrent,
		FrameSize);
	//Dump(_dmaCurrent);

	Dump(_adder);
	return _adder[0xC];
}

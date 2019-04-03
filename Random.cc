#include "Random.h"
#include "Dma.h"

DMA _dmaRandom;
PDWORD _random = 0;

#define DMA_RANDOM 0x40410000
#define RANDOM_IP 0x43C90000

void initRandom()
{
	_dmaRandom = DmaInit(DMA_RANDOM);
	_random = MapPhysicalMemory(RANDOM_IP,65555);
}

DWORD GetRandomNumer()
{
	if (0 == _random)
	{
		initRandom();
	}
	DmaReset(&_dmaRandom);

	//adder[8] = 18;
	//power
	//*(PDWORD)((DWORD)_adder + 0x40)=e;
	//modulo
	//*(PDWORD)((DWORD)_adder + 0x48)=n;
	//Dump(_adder);

	_random[0] = 0x1;


	DmaTransfer(&_dmaRandom,
		0x2dc00000);

	DmaStart(&_dmaRandom,
		5);
	//Dump(_dmaCurrent);

	Dump(_random);
	return _random[0xC];
}

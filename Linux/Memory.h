#include <stdio.h>
#include <stdlib.h>
#include<string.h>
#include <unistd.h>
#include <sys/mman.h>
#include <fcntl.h>
#include "DataTypes.h"

PDWORD MapPhysicalMemory(DWORD PhysAddress, DWORD Size);

void Dump(PDWORD Address);

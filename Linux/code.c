#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <termios.h>
#include <sys/mman.h>

#define MM2S_CONTROL_REGISTER 0x00
#define MM2S_STATUS_REGISTER 0x04
#define MM2S_START_ADDRESS 0x18
#define MM2S_LENGTH 0x28

#define S2MM_CONTROL_REGISTER 0x30
#define S2MM_STATUS_REGISTER 0x34
#define S2MM_DESTINATION_ADDRESS 0x48
#define S2MM_LENGTH 0x58

#define DEST_ADDRESS  0x0e000000
#define SOURCE_ADDRESS  0x0f000000
#define BEGINNING 0xa000

unsigned int dma_set(unsigned int* dma_virtual_address, int offset, unsigned int value) {
    dma_virtual_address[offset>>2] = value;
}

unsigned int dma_get(unsigned int* dma_virtual_address, int offset) {
    return dma_virtual_address[offset>>2];
}

int dma_mm2s_sync(unsigned int* dma_virtual_address) {
    unsigned int mm2s_status =  dma_get(dma_virtual_address, MM2S_STATUS_REGISTER);
    while(!(mm2s_status & 1<<12) || !(mm2s_status & 1<<1) ){
        dma_s2mm_status(dma_virtual_address);
        dma_mm2s_status(dma_virtual_address);

        mm2s_status =  dma_get(dma_virtual_address, MM2S_STATUS_REGISTER);
    }
}

int dma_s2mm_sync(unsigned int* dma_virtual_address) {
    unsigned int s2mm_status = dma_get(dma_virtual_address, S2MM_STATUS_REGISTER);
    while(!(s2mm_status & 1<<12) || !(s2mm_status & 1<<1)){
        dma_s2mm_status(dma_virtual_address);
        dma_mm2s_status(dma_virtual_address);

        s2mm_status = dma_get(dma_virtual_address, S2MM_STATUS_REGISTER);
    }
}

void dma_s2mm_status(unsigned int* dma_virtual_address) {
    unsigned int status = dma_get(dma_virtual_address, S2MM_STATUS_REGISTER);
    printf("Stream to memory-mapped status (0x%08x@0x%02x):", status, S2MM_STATUS_REGISTER);
    if (status & 0x00000001) printf(" halted"); else printf(" running");
    if (status & 0x00000002) printf(" idle");
    if (status & 0x00000008) printf(" SGIncld");
    if (status & 0x00000010) printf(" DMAIntErr");
    if (status & 0x00000020) printf(" DMASlvErr");
    if (status & 0x00000040) printf(" DMADecErr");
    if (status & 0x00000100) printf(" SGIntErr");
    if (status & 0x00000200) printf(" SGSlvErr");
    if (status & 0x00000400) printf(" SGDecErr");
    if (status & 0x00001000) printf(" IOC_Irq");
    if (status & 0x00002000) printf(" Dly_Irq");
    if (status & 0x00004000) printf(" Err_Irq");
    printf("\n");
}

void dma_mm2s_status(unsigned int* dma_virtual_address) {
    unsigned int status = dma_get(dma_virtual_address, MM2S_STATUS_REGISTER);
    printf("Memory-mapped to stream status (0x%08x@0x%02x):", status, MM2S_STATUS_REGISTER);
    if (status & 0x00000001) printf(" halted"); else printf(" running");
    if (status & 0x00000002) printf(" idle");
    if (status & 0x00000008) printf(" SGIncld");
    if (status & 0x00000010) printf(" DMAIntErr");
    if (status & 0x00000020) printf(" DMASlvErr");
    if (status & 0x00000040) printf(" DMADecErr");
    if (status & 0x00000100) printf(" SGIntErr");
    if (status & 0x00000200) printf(" SGSlvErr");
    if (status & 0x00000400) printf(" SGDecErr");
    if (status & 0x00001000) printf(" IOC_Irq");
    if (status & 0x00002000) printf(" Dly_Irq");
    if (status & 0x00004000) printf(" Err_Irq");
    printf("\n");
}

void memdump(void* virtual_address, int byte_count) {
    char *p = virtual_address;
    int offset;
    for (offset = 0; offset < byte_count; offset++) {
        printf("%02x", p[offset]);
        if (offset % 4 == 3) { printf(" "); }
    }
    printf("\n");
}
void Dump(int *addr)
{
	for(int i=0;i<6;i++)
	{
		printf("%x: %x %x %x %x\n", (addr + i * 16), *(int*)((int)addr + i*16), *(int*)((int)addr + i*16 + 4), *(int*)((int)addr + i*16 + 8), *(int*)((int)addr + i*16 + 12));
	}
    printf("\n");
}
int main() {
    int dh = open("/dev/mem", O_RDWR | O_SYNC); // Open /dev/mem which represents the whole physical memory
    unsigned int* virtual_address = mmap(NULL, 65535, PROT_READ | PROT_WRITE, MAP_SHARED, dh, 0x40400000); // Memory map AXI Lite register block
    unsigned int* virtual_source_address  = mmap(NULL, 65535, PROT_READ | PROT_WRITE, MAP_SHARED, dh, SOURCE_ADDRESS); // Memory map source address
    unsigned int* virtual_destination_address = mmap(NULL, 65535, PROT_READ | PROT_WRITE, MAP_SHARED, dh, DEST_ADDRESS); // Memory map destination address
    unsigned int* adder_address = mmap(NULL, 65535, PROT_READ | PROT_WRITE, MAP_SHARED, dh,0x43C60000); // Memory map destination address




    virtual_source_address[0]= 0x11223344; // Write random stuff to source block
    //memset(virtual_destination_address, 0, 32); // Clear destination block
   for(int i=0;i<1024*768;i++)
   {
	virtual_source_address[i] = BEGINNING | i;

	virtual_destination_address[i] = i;
	virtual_source_address[i] = i;
	if(0x30 == i)
	{
		virtual_source_address[i]++;
	}
	//virtual_destination_address[i]=0;
   }

	return 0;

    printf("Source memory block:      "); memdump(virtual_source_address, 32);
    printf("Destination memory block: "); memdump(virtual_destination_address, 32);

    printf("adder dump\n");
    Dump(adder_address);

    *adder_address = 1;

    printf("adder dump after start\n");
    Dump(adder_address);

    Dump(virtual_address);
    printf("Resetting DMA\n");
    dma_set(virtual_address, S2MM_CONTROL_REGISTER, 4);
    dma_set(virtual_address, MM2S_CONTROL_REGISTER, 4);
    dma_s2mm_status(virtual_address);
    dma_mm2s_status(virtual_address);

    Dump(virtual_address);
    printf("Halting DMA\n");
    dma_set(virtual_address, S2MM_CONTROL_REGISTER, 0);
    dma_set(virtual_address, MM2S_CONTROL_REGISTER, 0);
    dma_s2mm_status(virtual_address);
    dma_mm2s_status(virtual_address);

    Dump(virtual_address);

    printf("Writing destination address\n");
    dma_set(virtual_address, S2MM_DESTINATION_ADDRESS, DEST_ADDRESS); // Write destination address
    dma_s2mm_status(virtual_address);

    Dump(virtual_address);

    printf("Writing source address...\n");
    dma_set(virtual_address, MM2S_START_ADDRESS, SOURCE_ADDRESS); // Write source address
    dma_mm2s_status(virtual_address);

    Dump(virtual_address);

printf("start\n");
    dma_set(virtual_address, S2MM_CONTROL_REGISTER, 0x10003);
    dma_set(virtual_address, MM2S_CONTROL_REGISTER, 0x10003);
    Dump(virtual_address);

    printf("adder dump\n");
    Dump(adder_address);


    printf("Writing MM2S transfer length...\n");
    dma_set(virtual_address, MM2S_LENGTH, 32);
    dma_mm2s_status(virtual_address);


    printf("Writing S2MM transfer length...\n");
    dma_set(virtual_address, S2MM_LENGTH, 32);
    dma_s2mm_status(virtual_address);

    Dump(virtual_address);

    
    for(int i=0;i<100;i++)
	{
	printf("w");
}
	printf("\n");

    Dump(virtual_address);
dma_s2mm_status(virtual_address);
    dma_mm2s_status(virtual_address);

    printf("adder dump\n");
    Dump(adder_address);

	Dump(virtual_source_address);
	Dump(virtual_destination_address);

	sleep(2);

    Dump(virtual_address);
    return 0;










    printf("Waiting for MM2S synchronization...\n");
    dma_mm2s_sync(virtual_address);

    printf("Waiting for S2MM sychronization...\n");
    dma_s2mm_sync(virtual_address); // If this locks up make sure all memory ranges are assigned under Address Editor!

    dma_s2mm_status(virtual_address);
    dma_mm2s_status(virtual_address);

    printf("Destination memory block: "); memdump(virtual_destination_address, 32);
}
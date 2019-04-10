#include "Certificate.h"

Certificate::Certificate(int e, int n)
{
	printf("New certificate with %d %d \n", e, n);
}

Certificate* Certificate::FromFile(char *path)
{
	int e, n;

	Certificate::ReadFile(path, &e, &n);
	return new Certificate(e, n);
}

void Certificate::GenerateRandomCertificate(char *path)
{
	WriteFile(path, 2753, 3233);
	//WriteFile("public.rsa", 17, 3233);
}

void Certificate::WriteFile(char *path, int e, int n)
{
	FILE *f = fopen(path, "w");

	fwrite((void*)&e, 4, 1, f);
	fwrite((void*)&n, 4, 1, f);

	fclose(f);
}

void Certificate::ReadFile(char *path, int *e, int *n)
{
	FILE *f = fopen(path, "r");

	fread((void*)e, 4, 1, f);
	fread((void*)n, 4, 1, f);

	fclose(f);
}

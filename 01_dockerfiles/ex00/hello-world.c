#include <unistd.h>

int main(void)
{
	if (write(STDOUT_FILENO, "Hello World !\n", 14) == -1) return 1;
	else return 0;
}

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

using namespace std;

int main(int argc, char**argv) {
	// funkcje w linuxie zwracaja int
	int pid = getpid(); // zwraca -1 gdy blad lub wartosc pid gdy sukces
	int ppid = getppid();
	cout << "Hello world" << endl;
	cout << "pid "<<  pid << endl;
	cout << "ppid " << ppid << endl;	
	//pause();
	return 0;
}


// ./pid & uruchamianie w tle procesu








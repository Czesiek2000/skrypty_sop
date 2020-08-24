#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

using namespace std;

int main(int argc, char**argv) {
	int f = fork();
	if ( f == -1) {
		perror("fork problem");
		exit(1);
	}

	int pid = getpid(); // zwraca -1 gdy blad lub wartosc pid gdy sukces
        int ppid = getppid();
	if (f > 0 ) {
		cout << "Macierzysty pid: " << pid << " ppid: " << ppid << " fork " << f << endl;
		wait(0); // zainteresowanie procesu potomnego przez macierzysty
		pause();
	}else {
		cout << "Potomny pid : " << pid << " ppid " << ppid << " fork " << f << endl;
	}
	// funkcje w linuxie zwracaja int
//	cout << "Hello world" << endl;
//	cout << "pid "<<  pid << endl;

	//cout << "pid " << pid << " ppid " << ppid << " fork " << f << endl;	
	//pause();
	return 0;
}


// ./pid & uruchamianie w tle procesu








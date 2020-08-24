#include <iostream>
#include <stdlib.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

using namespace std;

int main(int argc, char** argv) {

	// cout << "Hello world" << endl;
	for ( int i = 0; i < argc; i++ ) {
		int f = fork();
		//cout << "pid " << getpid() << " ppid " << getppid() << " fork " << f <<  endl;
		if ( f > 0) {
			cout << "Macierzysty pid " << getpid() << " ppid " << getppid() << " fork " << f <<  endl;	
		}else {
			cout << "Potomny pid " << getpid() << " ppid " << getppid() << " fork " << f <<  endl;
		}

	}
//	cout << "argc " << argc << endl; 
	return 0;

}











#include <stdio.h> //  io
#include <stdlib.h> // standardowa biblioteka
#include <unistd.h> // macos pid
int main (int argc, char** argv) {
	printf("Hello World \n");
	int pid = getpid();
	int ppid = getppid();
	int f = fork();
//fork(); // wywolanie fork tutaj powoduje wypisanie dwukrotne lini nizej
	// fork rozmnaza zdefiniowane procesy
printf("My pid = %d 	My parent pid %d   fork return value %d \n", pid, ppid, f); 
	//printf("My pid = %d \n ", pid);
	//printf("My parent pid %d \n ", ppid);
//	printf("Fork return value %d \n ", f);

	if ( f == -1 ) {
		perror("Fork problem");	
	}

	if ( f == 0 ) {
		printf("wywolane dziecko if0 %d z pid %d\n", getpid(), getppid());
		// wywolanie basha w c
		execl("/bin/ls", "/bin/ls", "-l", NULL); // $0 nazwa polecenia uruchamianego, 0 konczenie argumentu
		printf("koniec skryptu");
		/*
		f = fork();
		if (f == 0) {
			printf("dziecko dziecka %d z pid %d\n", getpid(), getppid());
		}
		*/
	}else {
		printf("wywolany ojciec %d z ppid %d \n", getppid(), getppid());
	}
	// fork();
	//pause();
	exit(0);
}

// komendy:
// * ps,
// * pstree -acp, 
// * kill -2 (ctrl+c) [numer procesu] - wstrzymanie procesu
// * kill -9 [numer procesu] - zabicie procesu
// * killall -9 [nazwa procesu] - zabija wszystkie procesy o danej nazwie
//  fg 1 
// jobs
// fork wywolany zaraz po main() powstaja procesy wywolane wykladniczo
// najpierw wyoluje sie main potem pierwszy fork tworzy drugi proces
// trzeci fork tworzy 4, / 1 2 4 8 16
// fork zwraca -1 blad 

#include <stdio.h>
#define TIMES 1000000

int fib_rec(int x) {
        if (x <= 0) { return 0; }
        else if (x == 1) { return 1; }
        else { return fib_rec(x - 1) + fib_rec(x - 2); }
}

int fib_tail(int n, int seq2, int seq1) {
        if (n == 0) return seq1;
        return fib_tail(n - 1, seq1 + seq2, seq2);
}

int fib_tail_v2(int n, int seq2, int seq1) {
        return n==0 ? seq1 : fib_tail_v2(n-1,seq2+seq1,seq2); 
}

int iterative(int n){
        int i,result = 0, seq1 = 0, seq2 = 1;
        for(i=n;i>0;--i){
                result = seq2;
                seq2 += seq1;
                seq1 = result;
        }
}
int main(int argc, char* argv[]){
        int n=atoi(argv[1]),i;
        for(i=0;i<TIMES;++i){
                fib_rec(n);
                fib_tail(n,1,0);
		fib_tail_v2(n,1,0);
                iterative(n);
        }
}

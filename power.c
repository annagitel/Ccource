#include <stdio.h>
#include "myMath.h"
double Exp(int x){
	return exp(x)
}

double Pow(double x, int y){
	double ans = x	
	for (i = 1; i < y; ++i){
		ans = ans*x;
	}
	
	return ans;	
}

#include "myMath.h"
double Exp(int x){
	double ans = 2.718;	
	for (int i = 1; i < x; ++i){
		ans = ans*2.718;
	}
	return ans;
}

double Pow(double x, int y){
	double ans = x;	
	for (int i = 1; i < y; ++i){
		ans = ans*x;
	}
	
	return ans;	
}

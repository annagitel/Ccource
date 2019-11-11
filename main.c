#include <stdio.h>
#include "myMath.h"

main(){
	double num;	
	printf("Please insert a real number: ");
	scanf("%lf",&num);	

	double a = sub(add(Exp(num),Pow(num,3)),2);
	double b = add(mul(num,3),mul(2,Pow(num,2)));
	double c = div((mul(4,Pow(num,3))),sub(5,mul(2,num)));

	printf("the value of f(x)=e^x+x^3-2 at the point %a is %b" ,&num,&a);
	printf("the value of f(x)=3x+2x^2 at the point %a is %b" ,&num,&b);
	printf("the value of f(x)=(4x^3)/5-2x at the point %a is %b" ,&num,&c);
}

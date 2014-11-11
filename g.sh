Solve a “quadratic” equation of the form Ax^2+Bx +C=0. Have a script take as arguments the coefficients A, B and C and returns the solutions to four decimal places.
[HINT: pipe the coefficients to bc, using the well known formula, x= (-B + /- sqrt (B^2 – 4AC))/2A].
#include<stdio.h>
#include<conio.h>
#include<math.h>
void main
{
int a, b, c, deter;
float r1,r2;
clrscr();
printf(“Enter coefficients A,B and C (Integers)”);
scanf(“%d%d%d”, &a,&b,&c);
deter=(b*b)-(4*a*c);
if(deter<0)
{
printf(“Roots are imaginary”);
}
if(deter>0)
{
printf(“Roots are real as follows”);
r1=(-b+sqrt(deter))/2*a;
r2=(-b-sqrt(deter))/2*a;
printf(“% .4f \n % .4f”, r1,r2);
}
if(deter=0)
{
printf(“Roots are equal”);
r2=-b/2*a;
printf(“% .4f\n% .4f”,r1,r2);
}
getch();

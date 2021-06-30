#include <stdio.h>
#include <string.h>
void main()
{

 FILE *f;
 int n = 10;
 f=fopen("./test1/in1.txt","w+t");

 char *line="-----";
 while(n>1) {
   fprintf(f,"%d\n",n);
   fwrite( line, 1, strlen(line), f);
   if( (n%2)==0 ) n/=2;
   else n=n*3+1;
 }
 fprintf(f,"%d\n",n);

 fclose(f);

}

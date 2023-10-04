void main()
{
   float a;
   float b;
   float c;
   
   a = 2.5;
   b = 0.5;
   c = 1.5 / (b + 0.5);
   if(a != 0.5){
       printf("%f\n",a);
       printf("%f\n",b);
       printf("%f\n",c); 
   }
   else {
       printf("%f\n",c);
       printf("%f\n",b);
       printf("%f\n",a);
   }
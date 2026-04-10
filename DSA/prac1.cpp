// 1 A]    W. A. P to create a 3 x 3 array from user input. Display the array in matrix format also display values using subscript. 
#include<iostream.h> 
#include<conio.h> 
void main() 
{ 
clrscr(); 
int i,j,a[3][3]; 
cout<<"Enter value for 3*3 array:"; 
for(i=0;i<3;i++) 
{ 
for(j=0;j<3;j++) 
{ 
cin>>a[i][j]; 
} 
} 
cout<<"Displaying array in matrix Format\n"; 
for(i=0;i<3;i++) 
{ 
for(j=0;j<3;j++) 
{ 
cout<<a[i][j]; 
} 
cout<<endl; 
} 
cout<<"Array elements using Subscript\n"; 
for(i=0;i<3;i++) 
{ 
for(j=0;j<3;j++) 
{ 
cout<<"a["<<i<<"]["<<j<<"]"<<endl; 
} 
getch(); 
} 
}
//----------------------------------------------------------------
//Q2 W.A.P to perform addition of two 3 x 3 matrix. 
#include<iostream.h> 
#include<conio.h> 
void main() 
{ 
clrscr(); 
int i,j,a[3][3],b[3][3],c[3][3]; 
cout<<"Enter elements of first martrix:"; 
for(i=0;i<2;i++) 
{  
for(j=0;j<2;j++) 
{ 
cin>>a[i][j]; 
} 
} 
cout<<"Enter elements of 2nd matrix:"; 
for(i=0;i<2;i++) 
{ 
for(j=0;j<2;j++) 
{ 
cin>>b[i][j]; 
} 
cout<<endl; 
} 
} 
for(i=0;i<=2;i++) 
{ 
for(j=0;j<=2;j++) 
{ 
c[i][j]=a[i][j]+b[i][j]; 
cout<<c[i][j]<" "; 
} 
cout<<endl; 
} 
getch(); 
}
//-------------------------------------------------------
//Q3 W.A.P to display transposed of 4 x 4 matrix. 
#include<iostream.h> 
#include<conio.h> 
void main() 
{ 
clrscr(); 
int i,j,a[4][4]; 
cout<<"Enter Elements of the Matrix:"; 
for(i=0;i<=3;i++) 
{ 
for(j=0;j<=3;j++) 
{ 
cin>>a[i][j]; 
} 
} 
for(i=0;i<=3;i++) 
{ 
for(j=0;j<=3;j++) 
{ 
cout<<a[j][i]; 
} 
cout<<endl; 
} 
getch(); 
}

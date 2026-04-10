//  A. Write a Program to Perform Insertion in a 1D Array. 
CODE: 
#include<iostream.h> 
#include<conio.h> 
void main() 
{ 
clrscr(); 
int number; 
cout<<"Enter Total Number of Elements : "; 
cin>>number; 
cout<<endl; 
int a[50]; 
int count=number; 
cout<<"Enter Elements : "; 
for(int i=0;i<number;i++) 
{ 
cin>>a[i]; 
} 
cout<<endl; 
int k; 
cout<<"Enter the Position where you want the Element to be Inserted : "; 
cin>>k; 
cout<<endl; 
int b; 
cout<<"Enter the Element to be Inserted : "; 
cin>>b; 
cout<<endl; 
while(count>=k) 
{ 
a[count+1]=a[count]; 
count--; 
} 
a[k]=b; 
for(int j=0;j<=number;j++) 
{ 
cout<<"After Insertion : "<<a[j]<<endl; 
} 
getch(); 
}
//------------------------------------------------------
//B. Write a Program to Perform Deletion in a 1D Array. 
CODE: 
#include<iostream.h> 
#include<conio.h> 
void main() 
{ 
clrscr(); 
int a[20], n, i, del, count=0; 
cout<<"Enter Total Number of Elements : "; 
cin>>n; 
cout<<endl; 
cout<<"Enter Elements : "; 
for(i=0;i<n;i++) 
{ 
cin>>a[i]; 
} 
cout<<endl; 
cout<<"Enter the Value to be Deleted : "; 
cin>>del; 
cout<<endl; 
for(i=0;i<n;i++) 
{ 
if(a[i]==del) 
{ 
for(int j=i;j<(n-1);j++) 
{ 
a[j]=a[j+1]; 
} 
count++; 
n=n-1; 
break; 
} 
} 
if(count==0) 
{ 
cout<<"Element Not Found!"; 
} 
else 
{ 
cout<<"Element Deleted Successfully!"<<endl<<endl; 
cout<<"New Array : "<<endl; 
for(i=0;i<n;i++) 
{ 
cout<<a[i]<<endl; 
} 
} 
getch(); 
}

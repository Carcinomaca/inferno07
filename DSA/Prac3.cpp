//A. Write a Program to Perform Linear Search. 
//CODE: 
#include<iostream.h> 
#include<conio.h> 
void main() 
{ 
clrscr(); 
int a[20], n, item, i, flag=0; 
cout<<"Enter Total Number of Elements : "; 
cin>>n; 
cout<<endl; 
cout<<"Enter the Elements : "; 
for(i=0;i<n;i++) 
{ 
cin>>a[i]; 
} 
cout<<endl; 
cout<<"Enter the Element to be Searched : "; 
cin>>item; 
cout<<endl; 
for(i=0;i<n;i++) 
{ 
if(a[i]==item) 
{ 
cout<<"Element is Found at Position "<<i+1; 
flag=1; 
break; 
} 
} 
if(flag==0) 
{ 
cout<<"Desired Element is not Found in the Array!"; 
} 
getch(); 
}
//---------------------------------------------------------
//B. Write a Program to Perform Binary Search. 
//CODE: 
#include<iostream.h> 
#include<conio.h> 
void main() 
{ 
clrscr(); 
int a[20], i, num, n, count=0, position; 
cout<<"Enter Total Number of Elements : "; 
cin>>n; 
cout<<endl; 
cout<<"Enter Elements : "; 
for(i=0;i<n;i++) 
{ 
cin>>a[i]; 
} 
cout<<endl; 
cout<<"Enter Elements to be Searched : "; 
int s, first, last, mid; 
cin>>s; 
cout<<endl; 
first=0; 
last=n-1; 
mid=(first+last)/2; 
while(first<=last) 
{ 
if(a[mid]<s) 
{ 
first=mid+1; 
} 
else if(a[mid]==s) 
{ 
cout<<s<<" Found at "<<mid+1<<endl; 
count=1; 
break; 
} 
else 
{ 
last=mid-1; 
} 
mid=(first+last)/2; 
} 
if(count==0) 
{ 
cout<<"Desired Element is not Found in the Array!"; 
} 
getch(); 
}

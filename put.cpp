#include <iostream>
//#include<conio.h>
#include <fstream.h>
int main()
{
	char ch;
   	fstream file;
   	file.open("myfile.txt",ios::out); // write only
   	//cin.get(ch);
   	while(ch != '\n')
   	{
   		cin.get(ch);
		file.put(ch);
      		
   	}
   	file.close();
   	file.open("myfile.txt",ios::in);  // read only
   	while(file)
   	{
   		file.get(ch);
      		cout<<ch;
   	}
   	file.close();
   	cin.get();
      return 0;
}
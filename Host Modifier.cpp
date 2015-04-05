
#include "iostream"
#include "fstream"
#include <stdlib.h>
using namespace std;

int main()
{
	char ch;
	ofstream host;
	host.open("host.txt",ios_base::app);
	host<<"\n127.0.0.1 ";//www.fb.com";
	while(ch != '\n')
	{
		cin.get(ch);
		//cout<<ch;
		host.put(ch);
	}
	host.close();
}
////////////COPIES HOST FILE to Its drive

#include "iostream"
#include "fstream"
#include <stdlib.h>
using namespace std;

int main()
{
	char ch;
	ifstream host("c:\\windows\\system32\\drivers\\etc\\hosts"); // i read mode
	ofstream bhako_host("host"); // o write mode
	while(host)
	{
		host.get(ch);
		bhako_host.put(ch);
		cout<<ch;
	}
	
	host.close();
	bhako_host.close();
	cin.get();
}

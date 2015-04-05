/* Program For the Girl on the Department Store
   Date: 21 May 2013
  */
#include<iostream.h>
#include<stdlib.h>
#include<conio.h>

void GrT(float); //Calculate Grand Total with -discount +VAT
class stock{
	private:
	   char	stock_name[50];//stock items name
	   int price, quant;//cost and quantitiy

	public:
		void getStock()//input stock price quant
		{
			cout<<"\nEnter Name of Stock"<<endl;
			cin>>stock_name;
			cout<<"Enter price and quantitiy"<<endl;
			cin>>price>>quant;

		}
		void display()//displays item record available
		{
			cout<<stock_name;
			cout<<" \t \t "<<price<<" \t "<<quant;
	 cout<<"\n-----------------------------------\n";
		}
      void operator++();//add quantity
      void operator--();//remove quantity
      int total(int,int);//Calculate cost before grand total (quntity q, total_price n)
      void sellDisplay();//displays sold item price
      int getQty()//read quantity
      {
      		return quant;
      }
};
ofstream logg;/*Declaration of Logging*/
logg.open("log_file.txt",ios::app);/*Declaration of Logging*/

int main()
{
   int i,j,c,q;//loop invariant i,j //c choice from menu //q quntity from user
   float n=0;//total_price recent
   int tempS[50],tempQ[50],t=0;//temp stock array item, quntity, counter  
   static int count=0;//item store counter

	stock stf[50];//50 items max.

	cout<<"Enter all avilable stocks"<<endl;
	for(i=1;i<50;i++)//initially adding item to stock
	{
		stf[i].getStock();
      count++;
		cout<<"add another?(y/n)"<<endl;
		if(getche()=='n')
			break;
	}



	do{

   clrscr();
   		//displays menu
		cout<<"S.N \t STOCK NAME \t PRICE \t QTY \n";
	    cout<<"-------------------------------------- \n";
		for(i=1;i<=count;i++)
			{
					cout<<i<<" \t ";
	      			stf[i].display();
			}
   cout<<"\n ENTER YOUR CHOICE "<<endl<<" 1> Add an old item \n 2> Add a new item \n 3> Sell an item \n 4> Quit \n -->>";
   cin>>c;

   switch(c)
   {
      case 1://add item existing item to stock
      {
		do{
			cout<<"\n Enter the stock S.N: "; cin>>i;
			stf[i].display();
			cout<<"Enter the quantity:"; cin>>q;
			for(j=0;j<q;j++)
				++stf[i];
		    cout<<"\nThe stock has been Added sucessfully:\n";
		    stf[i].display();
		    cout<<"add another(y/n)";
		    if(getche()== 'n')
			break;
		    }while(1);
		    break;
      }

      case 2://add new item to stock
      {
			stf[++count].getStock();
			 cout<<" \nThe new Item is added press enter to continue:";
			 getch();
			 break;
	  }

      case 3://calculates sells and displays bill
      {
		do{

			cout<<"\n Enter the item S.N and quantity: ";
	 		cin>>i>>q;
			if(stf[i].getQty() < q )//check stock available?
	 		{
	 			cout<<"Error! Insufficient Item"<<endl;
	 			getch();
	 			break;
	 		}
			n = stf[i].total(q,n);
			for(j=1;j<=q;j++)//quantity remove 1 by 1
				--stf[i];
	 		tempS[t]=i;
	 		tempQ[t]=q;
	 		t++;
	 		
	 		

	 		cout<< "IS there more item:(y/n)";
 			if( getche() == 'n')
	 		{
				cout<<"\nSTOCK NAME \t PRICE \t QTY \n";
				logg<<"\nSTOCK Name \t PRICE \t QTY \n --------------------------------------"<<endl;
			    cout<<"-------------------------------------- \n";
				for(j=0;j<t;j++)
	    	{
				stf[tempS[j]].sellDisplay();
		       cout<<" \t "<<tempQ[j]<<"\n";
	    	}
				GrT(n);
			t=0;
			break;
	 }
	 }while(1);
	 n=0;
	 logg.close();
	 break;

      }

      case 4:
      { exit(1);
			break;
      }


      default:
      {
			cout<<"Invalid Choice";
         break;
      }
   }
   }while(1);
   return 0;
}
////////////////////////// Add and remove item ////////////////////////////////////////////////////////////////////////////////////

void stock::operator++() { quant++; }
void stock::operator--() { quant--; }

////////////////////////Total Calcuation/////////////////////////////////////////
int stock::total(int q,int n)
{
   n += q*price;
   return n;
}

void GrT(float n)/////////////////////////////////GRAND TOTAL///////////////////
{
	cout<<"\n Total= "<<n;
	cout<<"vat=13%";
	n +=  0.13 * n;
	if(n >=500)	//Discount Condition
	{
	   	cout<<"\n Discount= 10% ";
	   	logg<<"\n Discount = 10%";//LOGGING
	   	n -= 0.1 * n;
	}
   else
	   	cout<<"\n Discount = 0%";   //Discount Displyed in Else Case Only
   cout<<"\n GRAND TOTAL = "<<n;
   cout<<"\n Press ENTER to continue:";
   logg<<"\n Total = "<<n;//LOGGING
   logg<<"\n VAT 13% ";//LOGGING
   logg<<"\n Discount = 0%";//LOGGING
   logg<<"\n GRAND TOTAL = "<<n<<endl;//LOGGING
	   getch();
}


void stock::sellDisplay() //////////What Sold Is Displayed///////////////////////////
{	  
   cout<<stock_name<<" \t \t "<<price;
   logg<<stock_name<<" \t \t "<<price<<endl;//LOGGING
}

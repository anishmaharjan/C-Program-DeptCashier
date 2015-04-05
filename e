[33mcommit 2f1d13f2135f5b79be6d0ef9ff780cd6367879a2[m
Author: Maharjan Anish <dangol10@hotmail.com>
Date:   Sun Apr 5 21:21:29 2015 +0545

    some files lost. :/

[1mdiff --git a/DEPTSTOR2.cpp b/DEPTSTOR2.cpp[m
[1mnew file mode 100644[m
[1mindex 0000000..3bc6a52[m
[1m--- /dev/null[m
[1m+++ b/DEPTSTOR2.cpp[m
[36m@@ -0,0 +1,200 @@[m
[32m+[m[32m/* Program For the Girl on the Department Store[m
[32m+[m[32m   Date: 21 May 2013[m
[32m+[m[32m  */[m
[32m+[m[32m#include<iostream.h>[m
[32m+[m[32m#include<stdlib.h>[m
[32m+[m[32m#include<conio.h>[m
[32m+[m
[32m+[m[32mvoid GrT(float); //Calculate Grand Total with -discount +VAT[m
[32m+[m[32mclass stock{[m
[32m+[m	[32mprivate:[m
[32m+[m	[32m   char	stock_name[50];//stock items name[m
[32m+[m	[32m   int price, quant;//cost and quantitiy[m
[32m+[m
[32m+[m	[32mpublic:[m
[32m+[m		[32mvoid getStock()//input stock price quant[m
[32m+[m		[32m{[m
[32m+[m			[32mcout<<"\nEnter Name of Stock"<<endl;[m
[32m+[m			[32mcin>>stock_name;[m
[32m+[m			[32mcout<<"Enter price and quantitiy"<<endl;[m
[32m+[m			[32mcin>>price>>quant;[m
[32m+[m
[32m+[m		[32m}[m
[32m+[m		[32mvoid display()//displays item record available[m
[32m+[m		[32m{[m
[32m+[m			[32mcout<<stock_name;[m
[32m+[m			[32mcout<<" \t \t "<<price<<" \t "<<quant;[m
[32m+[m	[32m cout<<"\n-----------------------------------\n";[m
[32m+[m		[32m}[m
[32m+[m[32m      void operator++();//add quantity[m
[32m+[m[32m      void operator--();//remove quantity[m
[32m+[m[32m      int total(int,int);//Calculate cost before grand total (quntity q, total_price n)[m
[32m+[m[32m      void sellDisplay();//displays sold item price[m
[32m+[m[32m      int getQty()//read quantity[m
[32m+[m[32m      {[m
[32m+[m[41m      [m		[32mreturn quant;[m
[32m+[m[32m      }[m
[32m+[m[32m};[m
[32m+[m[32mofstream logg;/*Declaration of Logging*/[m
[32m+[m[32mlogg.open("log_file.txt",ios::app);/*Declaration of Logging*/[m
[32m+[m
[32m+[m[32mint main()[m
[32m+[m[32m{[m
[32m+[m[32m   int i,j,c,q;//loop invariant i,j //c choice from menu //q quntity from user[m
[32m+[m[32m   float n=0;//total_price recent[m
[32m+[m[32m   int tempS[50],tempQ[50],t=0;//temp stock array item, quntity, counter[m[41m  [m
[32m+[m[32m   static int count=0;//item store counter[m
[32m+[m
[32m+[m	[32mstock stf[50];//50 items max.[m
[32m+[m
[32m+[m	[32mcout<<"Enter all avilable stocks"<<endl;[m
[32m+[m	[32mfor(i=1;i<50;i++)//initially adding item to stock[m
[32m+[m	[32m{[m
[32m+[m		[32mstf[i].getStock();[m
[32m+[m[32m      count++;[m
[32m+[m		[32mcout<<"add another?(y/n)"<<endl;[m
[32m+[m		[32mif(getche()=='n')[m
[32m+[m			[32mbreak;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m	[32mdo{[m
[32m+[m
[32m+[m[32m   clrscr();[m
[32m+[m[41m   [m		[32m//displays menu[m
[32m+[m		[32mcout<<"S.N \t STOCK NAME \t PRICE \t QTY \n";[m
[32m+[m	[32m    cout<<"-------------------------------------- \n";[m
[32m+[m		[32mfor(i=1;i<=count;i++)[m
[32m+[m			[32m{[m
[32m+[m					[32mcout<<i<<" \t ";[m
[32m+[m	[41m      [m			[32mstf[i].display();[m
[32m+[m			[32m}[m
[32m+[m[32m   cout<<"\n ENTER YOUR CHOICE "<<endl<<" 1> Add an old item \n 2> Add a new item \n 3> Sell an item \n 4> Quit \n -->>";[m
[32m+[m[32m   cin>>c;[m
[32m+[m
[32m+[m[32m   switch(c)[m
[32m+[m[32m   {[m
[32m+[m[32m      case 1://add item existing item to stock[m
[32m+[m[32m      {[m
[32m+[m		[32mdo{[m
[32m+[m			[32mcout<<"\n Enter the stock S.N: "; cin>>i;[m
[32m+[m			[32mstf[i].display();[m
[32m+[m			[32mcout<<"Enter the quantity:"; cin>>q;[m
[32m+[m			[32mfor(j=0;j<q;j++)[m
[32m+[m				[32m++stf[i];[m
[32m+[m		[32m    cout<<"\nThe stock has been Added sucessfully:\n";[m
[32m+[m		[32m    stf[i].display();[m
[32m+[m		[32m    cout<<"add another(y/n)";[m
[32m+[m		[32m    if(getche()== 'n')[m
[32m+[m			[32mbreak;[m
[32m+[m		[32m    }while(1);[m
[32m+[m		[32m    break;[m
[32m+[m[32m      }[m
[32m+[m
[32m+[m[32m      case 2://add new item to stock[m
[32m+[m[32m      {[m
[32m+[m			[32mstf[++count].getStock();[m
[32m+[m			[32m cout<<" \nThe new Item is added press enter to continue:";[m
[32m+[m			[32m getch();[m
[32m+[m			[32m break;[m
[32m+[m	[32m  }[m
[32m+[m
[32m+[m[32m      case 3://calculates sells and displays bill[m
[32m+[m[32m      {[m
[32m+[m		[32mdo{[m
[32m+[m
[32m+[m			[32mcout<<"\n Enter the item S.N and quantity: ";[m
[32m+[m	[41m [m		[32mcin>>i>>q;[m
[32m+[m			[32mif(stf[i].getQty() < q )//check stock available?[m
[32m+[m	[41m [m		[32m{[m
[32m+[m	[41m [m			[32mcout<<"Error! Insufficient Item"<<endl;[m
[32m+[m	[41m [m			[32mgetch();[m
[32m+[m	[41m [m			[32mbreak;[m
[32m+[m	[41m [m		[32m}[m
[32m+[m			[32mn = stf[i].total(q,n);[m
[32m+[m			[32mfor(j=1;j<=q;j++)//quantity remove 1 by 1[m
[32m+[m				[32m--stf[i];[m
[32m+[m	[41m [m		[32mtempS[t]=i;[m
[32m+[m	[41m [m		[32mtempQ[t]=q;[m
[32m+[m	[41m [m		[32mt++;[m
[32m+[m[41m	 		[m
[32m+[m[41m	 		[m
[32m+[m
[32m+[m	[41m [m		[32mcout<< "IS there more item:(y/n)";[m
[32m+[m[41m [m			[32mif( getche() == 'n')[m
[32m+[m	[41m [m		[32m{[m
[32m+[m				[32mcout<<"\nSTOCK NAME \t PRICE \t QTY \n";[m
[32m+[m				[32mlogg<<"\nSTOCK Name \t PRICE \t QTY \n --------------------------------------"<<endl;[m
[32m+[m			[32m    cout<<"-------------------------------------- \n";[m
[32m+[m				[32mfor(j=0;j<t;j++)[m
[32m+[m	[41m    [m	[32m{[m
[32m+[m				[32mstf[tempS[j]].sellDisplay();[m
[32m+[m		[32m       cout<<" \t "<<tempQ[j]<<"\n";[m
[32m+[m	[41m    [m	[32m}[m
[32m+[m				[32mGrT(n);[m
[32m+[m			[32mt=0;[m
[32m+[m			[32mbreak;[m
[32m+[m	[32m }[m
[32m+[m	[32m }while(1);[m
[32m+[m	[32m n=0;[m
[32m+[m	[32m logg.close();[m
[32m+[m	[32m break;[m
[32m+[m
[32m+[m[32m      }[m
[32m+[m
[32m+[m[32m      case 4:[m
[32m+[m[32m      { exit(1);[m
[32m+[m			[32mbreak;[m
[32m+[m[32m      }[m
[32m+[m
[32m+[m
[32m+[m[32m      default:[m
[32m+[m[32m      {[m
[32m+[m			[32mcout<<"Invalid Choice";[m
[32m+[m[32m         break;[m
[32m+[m[32m      }[m
[32m+[m[32m   }[m
[32m+[m[32m   }while(1);[m
[32m+[m[32m   return 0;[m
[32m+[m[32m}[m
[32m+[m[32m////////////////////////// Add and remove item ////////////////////////////////////////////////////////////////////////////////////[m
[32m+[m
[32m+[m[32mvoid stock::operator++() { quant++; }[m
[32m+[m[32mvoid stock::operator--() { quant--; }[m
[32m+[m
[32m+[m[32m////////////////////////Total Calcuation/////////////////////////////////////////[m
[32m+[m[32mint stock::total(int q,int n)[m
[32m+[m[32m{[m
[32m+[m[32m   n += q*price;[m
[32m+[m[32m   return n;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mvoid GrT(float n)/////////////////////////////////GRAND TOTAL///////////////////[m
[32m+[m[32m{[m
[32m+[m	[32mcout<<"\n Total= "<<n;[m
[32m+[m	[32mcout<<"vat=13%";[m
[32m+[m	[32mn +=  0.13 * n;[m
[32m+[m	[32mif(n >=500)	//Discount Condition[m
[32m+[m	[32m{[m
[32m+[m	[41m   [m	[32mcout<<"\n Discount= 10% ";[m
[32m+[m	[41m   [m	[32mlogg<<"\n Discount = 10%";//LOGGING[m
[32m+[m	[41m   [m	[32mn -= 0.1 * n;[m
[32m+[m	[32m}[m
[32m+[m[32m   else[m
[32m+[m	[41m   [m	[32mcout<<"\n Discount = 0%";   //Discount Displyed in Else Case Only[m
[32m+[m[32m   cout<<"\n GRAND TOTAL = "<<n;[m
[32m+[m[32m   cout<<"\n Press ENTER to continue:";[m
[32m+[m[32m   logg<<"\n Total = "<<n;//LOGGING[m
[32m+[m[32m   logg<<"\n VAT 13% ";//LOGGING[m
[32m+[m[32m   logg<<"\n Discount = 0%";//LOGGING[m
[32m+[m[32m   logg<<"\n GRAND TOTAL = "<<n<<endl;//LOGGING[m
[32m+[m	[32m   getch();[m
[32m+[m[32m}[m
[32m+[m
[32m+[m
[32m+[m[32mvoid stock::sellDisplay() //////////What Sold Is Displayed///////////////////////////[m
[32m+[m[32m{[m[41m	  [m
[32m+[m[32m   cout<<stock_name<<" \t \t "<<price;[m
[32m+[m[32m   logg<<stock_name<<" \t \t "<<price<<endl;//LOGGING[m
[32m+[m[32m}[m
[1mdiff --git a/DEPTSTOR2.exe b/DEPTSTOR2.exe[m
[1mnew file mode 100644[m
[1mindex 0000000..c280562[m
Binary files /dev/null and b/DEPTSTOR2.exe differ
[1mdiff --git a/DEPTST~1.BAK b/DEPTST~1.BAK[m
[1mnew file mode 100644[m
[1mindex 0000000..3bc6a52[m
[1m--- /dev/null[m
[1m+++ b/DEPTST~1.BAK[m
[36m@@ -0,0 +1,200 @@[m
[32m+[m[32m/* Program For the Girl on the Department Store[m
[32m+[m[32m   Date: 21 May 2013[m
[32m+[m[32m  */[m
[32m+[m[32m#include<iostream.h>[m
[32m+[m[32m#include<stdlib.h>[m
[32m+[m[32m#include<conio.h>[m
[32m+[m
[32m+[m[32mvoid GrT(float); //Calculate Grand Total with -discount +VAT[m
[32m+[m[32mclass stock{[m
[32m+[m	[32mprivate:[m
[32m+[m	[32m   char	stock_name[50];//stock items name[m
[32m+[m	[32m   int price, quant;//cost and quantitiy[m
[32m+[m
[32m+[m	[32mpublic:[m
[32m+[m		[32mvoid getStock()//input stock price quant[m
[32m+[m		[32m{[m
[32m+[m			[32mcout<<"\nEnter Name of Stock"<<endl;[m
[32m+[m			[32mcin>>stock_name;[m
[32m+[m			[32mcout<<"Enter price and quantitiy"<<endl;[m
[32m+[m			[32mcin>>price>>quant;[m
[32m+[m
[32m+[m		[32m}[m
[32m+[m		[32mvoid display()//displays item record available[m
[32m+[m		[32m{[m
[32m+[m			[32mcout<<stock_name;[m
[32m+[m			[32mcout<<" \t \t "<<price<<" \t "<<quant;[m
[32m+[m	[32m cout<<"\n-----------------------------------\n";[m
[32m+[m		[32m}[m
[32m+[m[32m      void operator++();//add quantity[m
[32m+[m[32m      void operator--();//remove quantity[m
[32m+[m[32m      int total(int,int);//Calculate cost before grand total (quntity q, total_price n)[m
[32m+[m[32m      void sellDisplay();//displays sold item price[m
[32m+[m[32m      int getQty()//read quantity[m
[32m+[m[32m      {[m
[32m+[m[41m      [m		[32mreturn quant;[m
[32m+[m[32m      }[m
[32m+[m[32m};[m
[32m+[m[32mofstream logg;/*Declaration of Logging*/[m
[32m+[m[32mlogg.open("log_file.txt",ios::app);/*Declaration of Logging*/[m
[32m+[m
[32m+[m[32mint main()[m
[32m+[m[32m{[m
[32m+[m[32m   int i,j,c,q;//loop invariant i,j //c choice from menu //q quntity from user[m
[32m+[m[32m   float n=0;//total_price recent[m
[32m+[m[32m   int tempS[50],tempQ[50],t=0;//temp stock array item, quntity, counter[m[41m  [m
[32m+[m[32m   static int count=0;//item store counter[m
[32m+[m
[32m+[m	[32mstock stf[50];//50 items max.[m
[32m+[m
[32m+[m	[32mcout<<"Enter all avilable stocks"<<endl;[m
[32m+[m	[32mfor(i=1;i<50;i++)//initially adding item to stock[m
[32m+[m	[32m{[m
[32m+[m		[32mstf[i].getStock();[m
[32m+[m[32m      count++;[m
[32m+[m		[32mcout<<"add another?(y/n)"<<endl;[m
[32m+[m		[32mif(getche()=='n')[m
[32m+[m			[32mbreak;[m
[32m+[m	[32m}[m
[32m+[m
[32m+[m
[32m+[m
[32m+[m	[32mdo{[m
[32m+[m
[32m+[m[32m   clrscr();[m
[32m+[m[41m   [m		[32m//displays menu[m
[32m+[m		[32mcout<<"S.N \t STOCK NAME \t PRICE \t QTY \n";[m
[32m+[m	[32m    cout<<"-------------------------------------- \n";[m
[32m+[m		[32mfor(i=1;i<=count;i++)[m
[32m+[m			[32m{[m
[32m+[m					[32mcout<<i<<" \t ";[m
[32m+[m	[41m      [m			[32mstf[i].display();[m
[32m+[m			[32m}[m
[32m+[m[32m   cout<<"\n ENTER YOUR CHOICE "<<endl<<" 1> Add an old item \n 2> Add a new item \n 3> Sell an item \n 4> Quit \n -->>";[m
[32m+[m[32m   cin>>c;[m
[32m+[m
[32m+[m[32m   switch(c)[m
[32m+[m[32m   {[m
[32m+[m[32m      case 1://add item existing item to stock[m
[32m+[m[32m      {[m
[32m+[m		[32mdo{[m
[32m+[m			[32mcout<<"\n Enter the stock S.N: "; cin>>i;[m
[32m+[m			[32mstf[i].display();[m
[32m+[m			[32mcout<<"Enter the quantity:"; cin>>q;[m
[32m+[m			[32mfor(j=0;j<q;j++)[m
[32m+[m				[32m++stf[i];[m
[32m+[m		[32m    cout<<"\nThe stock has been Added sucessfully:\n";[m
[32m+[m		[32m    stf[i].display();[m
[32m+[m		[32m    cout<<"add another(y/n)";[m
[32m+[m		[32m    if(getche()== 'n')[m
[32m+[m			[32mbreak;[m
[32m+[m		[32m    }while(1);[m
[32m+[m		[32m    break;[m
[32m+[m[32m      }[m
[32m+[m
[32m+[m[32m      case 2://add new item to stock[m
[32m+[m[32m      {[m
[32m+[m			[32mstf[++count].getStock();[m
[32m+[m			[32m cout<<" \nThe new Item is added press enter to continue:";[m
[32m+[m			[32m getch();[m
[32m+[m			[32m break;[m
[32m+[m	[32m  }[m
[32m+[m
[32m+[m[32m      case 3://calculates sells and displays bill[m
[32m+[m[32m      {[m
[32m+[m		[32mdo{[m
[32m+[m
[32m+[m			[32mcout<<"\n Enter the item S.N and quantity: ";[m
[32m+[m	[41m [m		[32mcin>>i>>q;[m
[32m+[m			[32mif(stf[i].getQty() < q )//check stock available?[m
[32m+[m	[41m [m		[32m{[m
[32m+[m	[41m [m			[32mcout<<"Error! Insufficient Item"<<endl;[m
[32m+[m	[41m [m			[32mgetch();[m
[32m+[m	[41m [m			[32mbreak;[m
[32m+[m	[41m [m		[32m}[m
[32m+[m			[32mn = stf[i].total(q,n);[m
[32m+[m			[32mfor(j=1;j<=q;j++)//quantity remove 1 by 1[m
[32m+[m				[32m--stf[i];[m
[32m+[m	[41m [m		[32mtempS[t]=i;[m
[32m+[m	[41m [m		[32mtempQ[t]=q;[m
[32m+[m	[41m [m		[32mt++;[m
[32m+[m[41m	 		[m
[32m+[m[41m	 		[m
[32m+[m
[32m+[m	[41m [m		[32mcout<< "IS there more item:(y/n)";[m
[32m+[m[41m [m			[32mif( getche() == 'n')[m
[32m+[m	[41m [m		[32m{[m
[32m+[m				[32mcout<<"\nSTOCK NAME \t PRICE \t QTY \n";[m
[32m+[m				[32mlogg<<"\nSTOCK Name \t PRICE \t QTY \n --------------------------------------"<<endl;[m
[32m+[m			[32m    cout<<"-------------------------------------- \n";[m
[32m+[m				[32mfor(j=0;j<t;j++)[m
[32m+[m	[41m    [m	[32m{[m
[32m+[m				[32mstf[tempS[j]].sellDisplay();[m
[32m+[m		[32m       cout<<" \t "<<tempQ[j]<<"\n";[m
[32m+[m	[41m    [m	[32m}[m
[32m+[m				[32mGrT(n);[m
[32m+[m			[32mt=0;[m
[32m+[m			[32mbreak;[m
[32m+[m	[32m }[m
[32m+[m	[32m }while(1);[m
[32m+[m	[32m n=0;[m
[32m+[m	[32m logg.close();[m
[32m+[m	[32m break;[m
[32m+[m
[32m+[m[32m      }[m
[32m+[m
[32m+[m[32m      case 4:[m
[32m+[m[32m      { exit(1);[m
[32m+[m			[32mbreak;[m
[32m+[m[32m      }[m
[32m+[m
[32m+[m
[32m+[m[32m      default:[m
[32m+[m[32m      {[m
[32m+[m			[32mcout<<"Invalid Choice";[m
[32m+[m[32m         break;[m
[32m+[m[32m      }[m
[32m+[m[32m   }[m
[32m+[m[32m   }while(1);[m
[32m+[m[32m   return 0;[m
[32m+[m[32m}[m
[32m+[m[32m////////////////////////// Add and remove item ////////////////////////////////////////////////////////////////////////////////////[m
[32m+[m
[32m+[m[32mvoid stock::operator++() { quant++; }[m
[32m+[m[32mvoid stock::operator--() { quant--; }[m
[32m+[m
[32m+[m[32m////////////////////////Total Calcuation/////////////////////////////////////////[m
[32m+[m[32mint stock::total(int q,int n)[m
[32m+[m[32m{[m
[32m+[m[32m   n += q*price;[m
[32m+[m[32m   return n;[m
[32m+[m[32m}[m
[32m+[m
[32m+[m[32mvoid GrT(float n)/////////////////////////////////GRAND TOTAL///////////////////[m
[32m+[m[32m{[m
[32m+[m	[32mcout<<"\n Total= "<<n;[m
[32m+[m	[32mcout<<"vat=13%";[m
[32m+[m	[32mn +=  0.13 * n;[m
[32m+[m	[32mif(n >=500)	//Discount Condition[m
[32m+[m	[32m{[m
[32m+[m	[41m   [m	[32mcout<<"\n Discount= 10% ";[m
[32m+[m	[41m   [m	[32mlogg<<"\n Discount = 10%";//LOGGING[m
[32m+[m	[41m   [m	[32mn -= 0.1 * n;[m
[32m+[m	[32m}[m
[32m+[m[32m   else[m
[32m+[m	[41m   [m	[32mcout<<"\n Discount = 0%";   //Discount Displyed in Else Case Only[m
[32m+[m[32m   cout<<"\n GRAND TOTAL = "<<n;[m
[32m+[m[32m   cout<<"\n Press ENTER to continue:";[m
[32m+[m[32m   logg<<"\n Total = "<<n;//LOGGING[m
[32m+[m[32m   logg<<"\n VAT 13% ";//LOGGING[m
[32m+[m[32m   logg<<"\n Discount = 0%";//LOGGING[m
[32m+[m[32m   logg<<"\n GRAND TOTAL = "<<n<<endl;//
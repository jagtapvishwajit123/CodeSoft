package ATM_Machine;

import java.util.Scanner;

class Atm
	{
		float Balance;
		int PIN=5099;
		
		public void checkpin()
		{
			System.out.println("Enter Your Pin :"); 
			Scanner sc= new Scanner(System.in);
			int enterpin = sc.nextInt();
			if(enterpin==PIN)
			{
				menu();
			}
			else
			{
				System.err.println("Enter valid Pin ");
			}
			menu();
		}
		
		public void menu()
		{
			System.out.println("Enter your Choice:");
			System.out.println("1. Check A/C Balnace ");
			System.out.println("2. Withdraw Money ");
			System.out.println("3. Deposite Money");
			System.out.println("4. Exit");
			
			Scanner sc = new Scanner(System.in);
			int option = sc.nextInt();
			
			if(option == 1)
			{
				checkBalnce();
			}
			else if(option == 2)
			{
				withdrawMoney();
			}
			else if(option == 3)
			{
				depositMoney();
			}
			else if(option == 4)
			{
				return;
			}
			else
			{
				System.out.println("Enter Valid choice :");
			}
		}
		
		public void checkBalnce()
		{
			System.out.println("Balance : " + Balance);
			menu();
			
		}
		
		public void withdrawMoney()
		{
			System.out.println("Enter Amount :");
			Scanner sc = new Scanner (System.in);
			float amount = sc.nextFloat();
			if(amount>Balance)
			{
				System.out.println("Insufficient Balance ");
			}
			else
			{
				Balance = Balance - amount ;
				System.out.println("Money Withdrawl Successful..!");
				
			}
			menu();
		}
		
		public void depositMoney()
		{
			System.out.println("Enter The Amount :");
			Scanner sc = new Scanner(System.in);
			float amount = sc.nextFloat();
			
			Balance = Balance + amount;
			System.out.println("Amount Deposited Succesful ..!");
			System.out.println("Your Balance is " + Balance);
			menu();
		}
		
	}

public class ATM_Machine_Project {

	public static void main(String[] args) {

		Atm obj = new Atm();
		obj.checkpin();
		
	}

}

void main() {
  BankAccount account1 = BankAccount("01", 500);
  BankAccount account2 = BankAccount.withoutBalance("02");

  //Display info of both accounts
  account1.displayAccountInfo();
  account2.displayAccountInfo();

  //Deposit into account2
  account2.depositCash(1000);

  //Withdraw from account1
  account1.withdrawCash(300);

  //Withdraw negative amount from account1
  account1.withdrawCash(-500);

  //Withdraw insufficient amount from account1
  account1.withdrawCash(600);
}

class BankAccount {
  String accountId;
  double balance;
  BankAccount(this.accountId, this.balance);
  BankAccount.withoutBalance(this.accountId) : balance = 0.0;

  void withdrawCash(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print("Succesful Withdrawl!.");
      print("Your new balance is $balance");
    } else if (amount > balance) {
      print("Insufficient Balance");
    } else {
      //in case user entered negative amount
      print("Please Enter a valid amount.");
    }
  }

  void depositCash(double amount) {
    balance += amount;
    print("Successful Deposit!.");
    print("Your new balance is $balance");
  }

  void displayAccountInfo() {
    print('Account ID: $accountId');
    print('Account Balance: $balance');
  }
}

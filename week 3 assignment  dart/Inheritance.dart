// Superclass
class BankAccount {
  String accountHolder;
  double _balance;

  BankAccount(this.accountHolder, [this._balance = 0.0]);

  // Getter for balance
  double get balance => _balance;

  // Method to deposit money
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print(
          'Deposited \$${amount.toStringAsFixed(2)}. New balance: \$${_balance.toStringAsFixed(2)}');
    } else {
      print('Deposit amount must be positive.');
    }
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount;
      print(
          'Withdrew \$${amount.toStringAsFixed(2)}. New balance: \$${_balance.toStringAsFixed(2)}');
    } else {
      print('Invalid withdrawal amount or insufficient balance.');
    }
  }
}

// Subclass
class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(String accountHolder, double balance, this.interestRate)
      : super(accountHolder, balance);

  // Method to calculate interest
  void addInterest() {
    double interest = _balance * (interestRate / 100);
    _balance += interest;
    print(
        'Interest of \$${interest.toStringAsFixed(2)} added. New balance: \$${_balance.toStringAsFixed(2)}');
  }
}

void main() {
  // Create an instance of SavingsAccount
  var savings = SavingsAccount('Williams', 1000.0, 5.0);

  // Display initial balance
  print('Account holder: ${savings.accountHolder}');
  print('Initial balance: \$${savings.balance.toStringAsFixed(2)}');

  // Deposit money
  savings.deposit(500.0);

  // Add interest
  savings.addInterest();

  // Withdraw money
  savings.withdraw(300.0);

  // Attempt an invalid withdrawal
  savings.withdraw(2000.0);
}

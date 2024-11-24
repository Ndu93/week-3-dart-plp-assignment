class BankAccount {
  // Public variable
  String accountHolder;

  // Private variable (starts with an underscore)
  double _balance;

  // Constructor
  BankAccount(this.accountHolder, [this._balance = 0.0]);

  // Getter method for _balance (read-only access)
  double get balance => _balance;

  // Method to deposit money (controlled access)
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print(
          'Deposited \$${amount.toStringAsFixed(2)}. New balance: \$${_balance.toStringAsFixed(2)}');
    } else {
      print('Deposit amount must be positive.');
    }
  }

  // Method to withdraw money (controlled access)
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

void main() {
  // Create a new BankAccount object
  var account = BankAccount('Daniel Ndubueze', 100.0);

  // Display initial balance
  print('Account holder: ${account.accountHolder}');
  print('Initial balance: \$${account.balance.toStringAsFixed(2)}');

  // Deposit money
  account.deposit(50.0);

  // Withdraw money
  account.withdraw(30.0);

  // Attempt an invalid withdrawal
  account.withdraw(200.0);

  // Accessing private variable _balance directly is not allowed
  // print(account._balance); // This will cause a compile-time error
}

abstract class PaymentMethod {
  void processPayment(double amount);
}

class CreditCard implements PaymentMethod {
  @override
  void processPayment(double amount) {
    print("Processing payment of \$${amount} via Credit Card.");
  }
}

class PayPal implements PaymentMethod {
  @override
  void processPayment(double amount) {
    print("Processing payment of \$${amount} via PayPal.");
  }
}

void main() {
  PaymentMethod payment1 = CreditCard();
  payment1.processPayment(100);  // Output: Processing payment of $100 via Credit Card.

  PaymentMethod payment2 = PayPal();
  payment2.processPayment(150);  // Output: Processing payment of $150 via PayPal.
}

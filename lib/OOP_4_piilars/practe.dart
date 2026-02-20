class PaymentMethod {
  void payment(double amount) {
    print('payment of $amount');
  }
}

class Easypaisa extends PaymentMethod {
  @override
  void payment(double amount) {
    print('easypaisa payment of $amount via easypaisa');
  }
}

class Jazzcash extends PaymentMethod {
  @override
  void payment(double amount) {
    print('jazzcash payment of $amount via jazzcash');
  }
}

void show(PaymentMethod paymentMethod) {
  paymentMethod.payment(1000);
}

void main() {
  PaymentMethod pay = Easypaisa();
  pay.payment(1000);

  PaymentMethod pay1 = Jazzcash();
  pay1.payment(1000);

  show(Easypaisa());
  show(Jazzcash());
}

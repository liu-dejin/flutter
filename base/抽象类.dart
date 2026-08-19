void main(List<String> args) {
  PayBase p = WxPay();
  PayBase p1 = AliPay();
  p.pay();
  p1.pay();
}

abstract class PayBase {
  void pay();
}

class WxPay implements PayBase {
  @override
  void pay() {
    print("微信支付");
  }
}

class AliPay implements PayBase {
  @override
  void pay() {
    print("支付宝支付");
  }
}

void main(List<String> args) {
  PayBase p = WeChatPay();
  p.pay();
}

class PayBase {
  void pay() {
    print("支付");
  }
}

class AliPay extends PayBase {
  @override
  void pay() {
    print("支付宝支付");
  }
}

class WeChatPay extends PayBase {
  @override
  void pay() {
    print("微信支付");
  }
}

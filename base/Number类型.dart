// int num double
void main(List<String> args) {
  int FriendCount = 3;
  print('朋友数量: $FriendCount');
  num rest = 1.5;
  print('剩余金额: $rest');
  double price = 1.5;
  print('价格: $price');

  FriendCount = price.toInt();

  price = rest.toDouble();

  rest = price;
}

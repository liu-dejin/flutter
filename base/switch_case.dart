void main(List<String> args) {
  int state = 1; // 1.待付款 2.待发货 3.待收货 4.待评价 5 未知
  switch (state) {
    case 1:
      print('待付款');
      break;
    case 2:
      print('待发货');
      break;
    case 3:
      print('待收货');
      break;
    case 4:
      print('待评价');
      break;
    default:
      print('未知');
  }
}

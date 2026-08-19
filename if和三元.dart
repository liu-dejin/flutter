void main(List<String> args) {
  int score = 61;
  if (score >= 60) {
    print('及格');
  }
  bool isMarry = true;
  if (isMarry) {
    print('已婚');
  } else {
    print('未婚');
  }

  if (score > 80) {
    print("优秀");
  } else if (score > 60) {
    print("及格");
  } else {
    print("不及格");
  }
  score > 80
      ? print("优秀")
      : score > 60
      ? print("及格")
      : print("不及格");
}

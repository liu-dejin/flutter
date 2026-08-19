void main(List<String> args) {
  String? name = null; // 可空类型
  // name?.startsWith("z"); // 客观判断
  // name!.startsWith("z"); // 主观判断

  // 兜底处理
  String displayName = name ?? '匿名';
  print(displayName);
}

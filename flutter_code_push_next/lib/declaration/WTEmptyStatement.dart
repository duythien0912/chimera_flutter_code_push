import 'package:flutter_code_push_next/index.dart';

/// 访问空声明
class WTEmptyStatement extends WTBaseDeclaration {
  @override
  dynamic execute(Environment env) {}

  @override
  void read(ByteArray byteArray) {
    super.read(byteArray);}
}

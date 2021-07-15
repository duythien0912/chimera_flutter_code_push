import 'package:flutter_code_push_next/index.dart';

/// 参观枚举宣言
class WTEnumDeclaration extends WTBaseDeclaration {
  late String enumName;
  late List<WTEnumConstantDeclaration> enumValueList;

  @override
  dynamic execute(Environment env) {}

  @override
  void read(ByteArray byteArray) {
    super.read(byteArray);
    enumName = byteArray.readString()!;
    enumValueList = readList(byteArray)!;
  }
}

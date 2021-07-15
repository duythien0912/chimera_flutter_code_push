import 'package:flutter_code_push_next/index.dart';

/// Extension Declaration
class WTExtensionDeclaration extends WTBaseDeclaration {
  late String? name;
  late WTTypeName? extendedType;

  // WTMethodDeclaration WTFieldDeclarationVM
  List<WTBaseDeclaration>? members;

  @override
  dynamic execute(Environment env) {}

  @override
  void read(ByteArray byteArray) {
    super.read(byteArray);
    name = byteArray.readString();
    extendedType = serializedInstance(byteArray);
    members = readList(byteArray);
  }
}

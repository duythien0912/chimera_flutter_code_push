import 'package:flutter_code_push/Environment.dart';
import 'package:flutter_code_push/declaration/WTBaseDeclaration.dart';
import 'package:flutter_code_push/declaration/WTMethodInvocation.dart';
import 'package:flutter_code_push/external/WTByteArray.dart';

/// 访问Cascade Expression 级联语法
class WTCascadeExpression extends WTBaseDeclaration {
  WTBaseDeclaration target;
  List<WTBaseDeclaration> cascadeSections;

  @override
  dynamic execute(Environment env) {
    var targetValue = target.execute(env);
    for (var cascade in cascadeSections) {
      if(cascade is WTMethodInvocation) {
        WTMethodInvocation m = cascade;
        m.executeWithTargetValue(targetValue, env);
      }
    }
    return targetValue;
  }

  @override
  void read(ByteArray byteArray) {
    target = serializedInstance(byteArray);
    cascadeSections = readList(byteArray);
  }
}

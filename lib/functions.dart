import 'package:meta/meta.dart';

int sum(List<int> list, [int initial = 0]) {
  var total = initial;
  list.forEach((v) => total += v);
  return total;
}

String joinToString(List<String> list, {
  @required String separator, String prefix = '',
String suffix = ''
}) => '$prefix${list.join(separator)}$suffix';


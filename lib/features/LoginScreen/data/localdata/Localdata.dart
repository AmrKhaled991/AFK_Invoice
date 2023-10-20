import 'package:hive/hive.dart';
part 'Localdata.g.dart';
@HiveType(typeId: 1)
class localtoken {
  @HiveField(0)
  String? token;
 localtoken(this.token);
}
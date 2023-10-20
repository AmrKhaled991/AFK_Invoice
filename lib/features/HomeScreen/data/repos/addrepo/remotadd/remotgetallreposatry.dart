

import 'package:afktask/core/utils/pureaddrequste_class.dart';
import 'package:afktask/features/HomeScreen/data/models/addmodel/Addrequst.dart';


abstract class remotAddreposatry{
  Future<Addresponse> add({required Addrequst infrormation});
}
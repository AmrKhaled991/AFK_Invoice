import 'package:afktask/core/utils/ApiManger.dart';
import 'package:afktask/features/HomeScreen/data/models/addmodel/Addrequst.dart';
import 'package:afktask/features/HomeScreen/data/repos/addrepo/remotadd/remotgetallreposatry.dart';

import '../../../../../../core/utils/pureaddrequste_class.dart';
import '../../../models/modelgetall/Data.dart';

class ImplremotAddreposatry extends remotAddreposatry {
  Apimnger apimnger;

  ImplremotAddreposatry(this.apimnger);

  Future<Addresponse> add({ required Addrequst infrormation}) async {
    var res = await apimnger.addrequst(information: infrormation);
    print('alalalao');
    return res;
  }
}

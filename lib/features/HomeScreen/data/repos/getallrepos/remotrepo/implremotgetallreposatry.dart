import 'package:afktask/core/utils/ApiManger.dart';
import 'package:afktask/features/HomeScreen/data/repos/getallrepos/remotrepo/remotgetallreposatry.dart';
import '../../../models/modelgetall/Data.dart';

class Implremotgetallreposatry extends remotgetallreposatry {
  Apimnger apimnger;

  Implremotgetallreposatry(this.apimnger);

  Future<Getalldataresponse> getall() async {
    var res = await apimnger.getall();
    print('sadfadsaf');
    return res;
  }
}

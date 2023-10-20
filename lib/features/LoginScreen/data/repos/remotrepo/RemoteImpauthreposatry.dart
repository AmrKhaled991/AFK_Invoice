import 'package:afktask/core/utils/ApiManger.dart';
import 'package:afktask/features/LoginScreen/data/localdata/Localdata.dart';
import 'package:afktask/features/LoginScreen/data/repos/remotrepo/autRemotehreposatry.dart';
import 'package:hive/hive.dart';

 class RemoteImpauthreposatry extends AuthRemotereposatry{
  Apimnger apimnger;
  RemoteImpauthreposatry(this.apimnger);
  @override
  Future<String?> login({required String usernamr, required String password}) async{
    var token=  await apimnger.login(usernamr, password);
       Hive.box<localtoken>('logintoken').put('token',localtoken(token));
       return token;
  }
}
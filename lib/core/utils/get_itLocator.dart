import 'package:afktask/core/utils/ApiManger.dart';
import 'package:afktask/features/HomeScreen/data/repos/addrepo/Addtrpostry/getallreposatry.dart';
import 'package:afktask/features/HomeScreen/data/repos/addrepo/Addtrpostry/impgetallreposatry.dart';
import 'package:afktask/features/LoginScreen/data/repos/authrepostry/ImpAutrepo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/HomeScreen/data/repos/addrepo/remotadd/implremotgetallreposatry.dart';
import '../../features/HomeScreen/data/repos/getallrepos/getallreposatry/getallreposatry.dart';
import '../../features/HomeScreen/data/repos/getallrepos/getallreposatry/impgetallreposatry.dart';
import '../../features/HomeScreen/data/repos/getallrepos/remotrepo/implremotgetallreposatry.dart';
import '../../features/LoginScreen/data/repos/authrepostry/authreposatry.dart';
import '../../features/LoginScreen/data/repos/remotrepo/RemoteImpauthreposatry.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<Apimnger>(Apimnger(Dio()));
  getIt.registerSingleton<authreposatry>(ImpAutrepo(
      remotehreposatry: RemoteImpauthreposatry(getIt.get<Apimnger>())));
  getIt.registerSingleton<getallreposatry>(Impgetallreposatry(Implremotgetallreposatry(getIt.get<Apimnger>())));
  getIt.registerSingleton<Addreposatry>(Impgaddreposatry(ImplremotAddreposatry(getIt.get<Apimnger>())));
}

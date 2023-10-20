import 'package:afktask/core/utils/pureaddrequste_class.dart';
import 'package:afktask/features/HomeScreen/data/models/addmodel/Addrequst.dart';
import 'package:afktask/features/LoginScreen/data/models/loginresoponse.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import '../../features/HomeScreen/data/models/modelgetall/Data.dart';
import '../../features/HomeScreen/data/models/modelgetall/Getallmodels.dart';
import '../../features/LoginScreen/data/localdata/Localdata.dart';
import 'addrequst_methods.dart';

class Apimnger{
  static const String baseurl='https://back.afakyerp.com/API/PosForm/Add';
  static const String klogiapi='https://back.afakyerp.com/API/User/Login';
  static const String kgetall='https://back.afakyerp.com/API/PosForm/GetAll';

  Apimnger(this.dio);
   Dio dio;
  Future<String?>   login(String username,String password) async {
    final response = await dio.post(klogiapi,data:{"userName": username,
      "password": password,
      "langId": 1,
      "computerName": ""}, );
     var res =Loginresoponse.fromJson(response.data);
     return res.token;
  }

  Future<Getalldataresponse> getall()async{
    final response= await dio.get(kgetall,options: Options(headers: {
      "accept": "*/*",
      "Authorization":'Bearer ${Hive.box<localtoken>('logintoken').get('token')?.token}'
    }));
    print(response.statusCode);
    var res= Getallmodels.fromJson(response.data);
    return res.data![0];
   }
   Future<Addresponse> addrequst({required Addrequst information})async{
    final response= await dio.post("https://back.afakyerp.com/API/PosForm/Add",data:addjeson(information)
    ,options: Options(headers: {
          "accept": "*/*",
          "Authorization": 'Bearer ${Hive.box<localtoken>('logintoken').get('token')?.token}',
          "Content-Type": "application/json",
        },
    ));
    print(response.statusCode);
    print('========================');
    var res= Addresponse.fromJson(response.data);
    return res;
   }


}



import 'package:afktask/features/HomeScreen/data/repos/addrepo/remotadd/remotgetallreposatry.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../../core/errors/custm_errors.dart';
import '../../../../../../core/utils/pureaddrequste_class.dart';
import '../../../models/addmodel/Addrequst.dart';
import 'getallreposatry.dart';

class Impgaddreposatry extends Addreposatry{
   remotAddreposatry remotdata;
   Impgaddreposatry(this.remotdata);
  Future<Either<Fallur, Addresponse>> add({ required Addrequst infrormation}) async{
    try {
      var res= await remotdata.add(infrormation:infrormation );
      return right(res);
    } on Exception catch (e) {
      if(e is DioException){
        return left(ServierError.fromDioError(e));
      }
      return left(ServierError(e.toString()));
    }
  }
  }

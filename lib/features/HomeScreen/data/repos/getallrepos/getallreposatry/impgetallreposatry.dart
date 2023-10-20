
import 'package:afktask/core/errors/custm_errors.dart';
import 'package:afktask/features/HomeScreen/data/repos/getallrepos/getallreposatry/getallreposatry.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../models/modelgetall/Data.dart';
import '../remotrepo/remotgetallreposatry.dart';

class Impgetallreposatry extends getallreposatry{
   remotgetallreposatry remotdata;
   Impgetallreposatry(this.remotdata);
  Future<Either<Fallur, Getalldataresponse>> getall() async{
    try {
      var res= await remotdata.getall();
      return right(res);
    } on Exception catch (e) {
      if(e is DioException){
        return left(ServierError.fromDioError(e));
      }
      return left(ServierError('errrror'));
    }
  }
  }

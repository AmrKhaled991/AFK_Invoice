
import 'package:afktask/core/errors/custm_errors.dart';
import 'package:dartz/dartz.dart';

abstract class authreposatry{
  Future<Either<Fallur,String?>>login({required String usernamr,required String password});
}








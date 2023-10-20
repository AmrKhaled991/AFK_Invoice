
import 'package:afktask/core/errors/custm_errors.dart';
import 'package:dartz/dartz.dart';

import '../../../models/modelgetall/Data.dart';

abstract class getallreposatry{
  Future<Either<Fallur,Getalldataresponse>>getall();
}
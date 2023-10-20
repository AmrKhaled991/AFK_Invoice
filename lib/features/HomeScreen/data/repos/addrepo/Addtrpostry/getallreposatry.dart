
import 'package:afktask/core/errors/custm_errors.dart';
import 'package:afktask/features/HomeScreen/data/models/addmodel/Addrequst.dart';
import 'package:dartz/dartz.dart';
import '../../../../../../core/utils/pureaddrequste_class.dart';

abstract class Addreposatry{
  Future<Either<Fallur,Addresponse>>add({ required Addrequst infrormation});
}
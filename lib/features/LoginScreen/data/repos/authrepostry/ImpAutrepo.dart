
import 'package:afktask/core/errors/custm_errors.dart';
import 'package:afktask/features/LoginScreen/data/repos/authrepostry/authreposatry.dart';
import 'package:afktask/features/LoginScreen/data/repos/remotrepo/autRemotehreposatry.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ImpAutrepo extends authreposatry{
  AuthRemotereposatry remotehreposatry;
  ImpAutrepo({required this.remotehreposatry});
  @override
  Future<Either<Fallur, String?>> login({required String usernamr, required String password})async {
  try{
    String? remottoken=await remotehreposatry.login(usernamr: usernamr, password: password);
    return right(remottoken);
  } catch (e) {
    if(e is DioException)return left(ServierError.fromDioError(e));
    else return left(ServierError('error'));
  }

  }

}

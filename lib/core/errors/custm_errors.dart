import 'package:dio/dio.dart';

abstract class Fallur{
   String message;
  Fallur(this.message);
}
class ServierError extends Fallur{
  ServierError(super.message);
  factory ServierError.fromDioError(DioException dioException){
    switch(dioException.type){
      case DioExceptionType.connectionTimeout:
      return ServierError( 'sorry connectionTimeout,try again later');
      case DioExceptionType.sendTimeout:
        return ServierError( 'sorry sendTimeout,try again later');
      case DioExceptionType.receiveTimeout:
        return ServierError( 'sorry receiveTimeout,try again later');
      case DioExceptionType.badCertificate:
        return ServierError( 'sorry badCertificate,try again later');
      case DioExceptionType.badResponse:
         return ServierError.BadResponse(dioException.response!.statusCode!, dioException.response,);
      case DioExceptionType.cancel:
      return ServierError( 'sorry cancel requste,try again later');
      case DioExceptionType.connectionError:
        return ServierError( 'sorry cancel connectionError,try again later');
      case DioExceptionType.unknown:
        if(dioException.message!.contains('SocketException')){
          return ServierError('no internet conection');
        }else return ServierError('unexpected error,plz try again later');
      default: return ServierError('Ops somthing went wronge ,plz try agein later');
    }
  }
  factory ServierError.BadResponse(int status, dynamic  response){
   if(status ==401 ||status ==403  ){
     return ServierError('error');
   }else if (status ==404){
     return ServierError('Ruqste not found');
   }else if(status ==400)return ServierError('"اسم المستخدم او كلمه السر غير صحيحة"');
   else return ServierError('Ops somthing went wronge ,plz try agein later')
   ;
  }
}
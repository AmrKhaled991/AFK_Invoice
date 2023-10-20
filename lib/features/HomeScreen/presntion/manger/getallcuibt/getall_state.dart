part of 'getall_cubit.dart';

abstract class GetallState {}

class GetallInitial extends GetallState {}
class Getallloading extends GetallState {}
class Getallerror extends GetallState {
  String error;
  Getallerror(this.error);
}
class Getallsucsses extends GetallState {
  String storenam;
  Getallsucsses(this.storenam);
}

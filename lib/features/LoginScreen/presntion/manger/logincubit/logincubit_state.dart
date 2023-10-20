part of 'logincubit_cubit.dart';

@immutable
abstract class LogincubitState {}

class LogincubitInitial extends LogincubitState {}
class LogincubitLoading extends LogincubitState {}
class LogincubitSucsses extends LogincubitState {
  String token;
  LogincubitSucsses(this.token);
}
class LogincubitIError extends LogincubitState {
  String error;
  LogincubitIError(this.error);
}

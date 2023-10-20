part of 'add_cubit.dart';

@immutable
abstract class AddState {}

class AddInitial extends AddState {}
class AddError extends AddState {
  String error;
  AddError(this.error);
}
class AddLoading extends AddState {}
class AddSucsses extends AddState {
  Addresponse requst;
  AddSucsses(this.requst);
}

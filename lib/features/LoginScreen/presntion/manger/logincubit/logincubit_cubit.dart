import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../../../data/repos/authrepostry/authreposatry.dart';
part 'logincubit_state.dart';
class LogincubitCubit extends Cubit<LogincubitState> {
  LogincubitCubit(this.repo) : super(LogincubitInitial());
   authreposatry repo;

   void login(String usernam,String password)async{
        emit(LogincubitLoading());
       var result=await repo.login(usernamr: usernam, password: password);
       result.fold((l){
         emit(LogincubitIError(l.message));
         print(l.message);
       }, (r) {
       emit(LogincubitSucsses(r!));
       });
   }
   @override
  void onChange(Change<LogincubitState> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }
}

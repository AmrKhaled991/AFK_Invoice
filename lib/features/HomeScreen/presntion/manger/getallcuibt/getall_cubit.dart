import 'package:afktask/features/HomeScreen/data/models/modelgetall/Data.dart';
import 'package:bloc/bloc.dart';

import '../../../data/repos/getallrepos/getallreposatry/getallreposatry.dart';
part 'getall_state.dart';

class GetallCubit extends Cubit<GetallState> {
  GetallCubit(this.getallerepo) : super(GetallInitial());
  getallreposatry getallerepo;
 late Getalldataresponse getalldata;
   getall()async{
    emit(Getallloading());
    var result=await getallerepo.getall();
    result.fold((l){
      emit(Getallerror(l.message));
      print(l.message);
    }, (r) {
      getalldata=r;
      emit(Getallsucsses(r.employeeName!));
    });
  }
  @override
  void onChange(Change<GetallState> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }
}

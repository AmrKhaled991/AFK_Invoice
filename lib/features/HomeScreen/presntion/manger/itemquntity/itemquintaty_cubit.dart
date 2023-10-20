import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'itemquintaty_state.dart';

class ItemquintatyCubit extends Cubit<ItemquintatyState> {
  ItemquintatyCubit() : super(ItemquintatyInitial());

  int quitaty=1;
   incress(){
     quitaty++;
     emit(ItemquintatyINcress());
   }
   remove(){
     if (quitaty>1) {
       quitaty--;
       emit(ItemquintatyRemove());
     }
   }
}

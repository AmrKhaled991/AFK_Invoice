import 'package:afktask/core/utils/pureaddrequste_class.dart';
import 'package:afktask/features/HomeScreen/data/models/addmodel/Addrequst.dart';
import 'package:afktask/features/HomeScreen/data/models/modelgetall/CustomerList.dart';
import 'package:afktask/features/HomeScreen/data/models/modelgetall/ItemsList.dart';
import 'package:afktask/features/HomeScreen/data/models/modelgetall/PaymentTypeList.dart';
import 'package:afktask/features/HomeScreen/data/models/modelgetall/Storelist.dart';
import 'package:afktask/features/HomeScreen/data/repos/addrepo/Addtrpostry/getallreposatry.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_state.dart';

class AddCubit extends Cubit<AddState> {
  AddCubit(this.repo) : super(AddInitial());
  Addreposatry repo;
  num cash = 0;
  num remannig = 0;
  num quintaty = 1;
  num total = 0;
  PaymentTypeList? paymentTypeitem;
  late CustomerList customeritem;
  late StoresList Storeitem;
  late ItemsList item;
  add() async {
    Addrequst addrequst=Addrequst(cash: cash,
        itemsList: item,
        customeritem: customeritem,
        paymentTypeitem: paymentTypeitem!,
        quintaty: quintaty,
        Storeitem: Storeitem,
        remannig: remannig,
        total: total
    );
    emit(AddLoading());
    var res = await repo.add(infrormation: addrequst);
    res.fold((faluer) => emit(AddError(faluer.message)), (sucsse) {
      emit(AddSucsses(sucsse));
    });
  }
  readd(){
    emit(AddInitial());
  }

  @override
  void onChange(Change<AddState> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }
}


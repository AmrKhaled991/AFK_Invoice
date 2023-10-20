import '../../features/HomeScreen/data/models/modelgetall/CustomerList.dart';
import '../../features/HomeScreen/data/models/modelgetall/ItemsList.dart';
import '../../features/HomeScreen/data/models/modelgetall/PaymentTypeList.dart';
import '../../features/HomeScreen/data/models/modelgetall/Storelist.dart';

class Addrequst {
  num cash;
  num remannig;
  num quintaty;
  num total;
  PaymentTypeList paymentTypeitem;
  CustomerList customeritem;
  StoresList Storeitem;
  ItemsList itemsList;

  Addrequst({
    required this.Storeitem,
    required this.itemsList,
    required this.customeritem,
    required this.paymentTypeitem,
    required this.total,
    required this.quintaty,
    required this.remannig,
    required this.cash,
  });
}

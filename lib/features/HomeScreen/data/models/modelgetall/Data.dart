
import 'package:afktask/features/HomeScreen/data/models/modelgetall/Storelist.dart';

import 'CustomerList.dart';
import 'ItemsList.dart';
import 'PaymentTypeList.dart';

class Getalldataresponse {
  Getalldataresponse({
    this.posInvoiceTypeId,
    this.posReportNo,
    this.employeeName,
    this.posName,
    this.storeId,
    this.storeName,
    this.paymentTypeList,
    this.itemsList,
    this.customerList,
    this.storesList,
  });

  Getalldataresponse.fromJson(dynamic json) {
    posInvoiceTypeId = json['posInvoiceTypeId'];
    posReportNo = json['posReportNo'];
    employeeName = json['employeeName'];
    posName = json['posName'];
    storeId = json['storeId'];
    storeName = json['storeName'];
    if (json['paymentTypeList'] != null) {
      paymentTypeList = [];
      json['paymentTypeList'].forEach((v) {
        paymentTypeList?.add(PaymentTypeList.fromJson(v));
      });
    }
    if (json['storesList'] != null) {
      storesList = [];
      json['storesList'].forEach((v) {
        storesList?.add(StoresList.fromJson(v));
      });
    }
    if (json['itemsList'] != null) {
      itemsList = [];
      json['itemsList'].forEach((v) {
        itemsList?.add(ItemsList.fromJson(v));
      });
    }
    if (json['customerList'] != null) {
      customerList = [];
      json['customerList'].forEach((v) {
        customerList?.add(CustomerList.fromJson(v));
      });
    }
  }

  num? posInvoiceTypeId;
  num? posReportNo;
  String? employeeName;
  String? posName;
  num? storeId;
  String? storeName;
  List<PaymentTypeList>? paymentTypeList;
  List<ItemsList>? itemsList;
  List<CustomerList>? customerList;
  List<StoresList>? storesList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['posInvoiceTypeId'] = posInvoiceTypeId;
    map['posReportNo'] = posReportNo;
    map['employeeName'] = employeeName;
    map['posName'] = posName;
    map['storeId'] = storeId;
    map['storeName'] = storeName;
    if (itemsList != null) {
      map['itemsList'] = itemsList?.map((v) => v.toJson()).toList();
    }
    if (customerList != null) {
      map['customerList'] = customerList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

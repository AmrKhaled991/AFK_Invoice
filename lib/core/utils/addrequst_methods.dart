
import 'package:afktask/core/utils/pureaddrequste_class.dart';

Map<String,dynamic> addjeson(Addrequst information){
  return {
    "sceId": information.customeritem.id,
    "invoiceType": 10,
    "description": "Test invoice",
    "currencyId": 1,
    "rate": 1,
    "total": information.total,
    "additionalDiscountPercent": 0,
    "totalDiscount": 0,
    "netTotal": information.total,
    "amountPaid": information.total,
    "remainingAmount": 0,
    "totalPayment": information.total,
    "invoiceDetails": [
      {
        "invoiceType": 10,
        "id": information.itemsList.groupId,
        "itemId": information.itemsList.itemId,
        "unitId": 1,
        "quantity": information.quintaty,
        "price": information.itemsList.salesValue,
        "total": information.total,
        "discount1": 0,
        "discountPercent1": 0,
        "totalAfterDiscount1": 0,
        "discount2": 0,
        "discountPercent2": 0,
        "totalAfterDiscount2": 0,
        "discount3": 0,
        "discountPercent3": 0,
        "totalAfterDiscount3": 0,
        "netPrice": information.total,
        "description": "Test invoice",
        "storeId": information.Storeitem.storeId,
        "productionDate": "2023-10-18T11:58:27.558Z",
        "expiryDate": "2023-10-18T11:58:27.558Z",
        "guaranteeDate": "2023-10-18T11:58:27.558Z",
        "idDTL": 0
      }
    ],
    "invoicePayment": [
      {
        "paymentId": information.paymentTypeitem.bptId,
        "paymentType": information.paymentTypeitem.bptId,
        "paymentValue": information.total,
        "accountId": "string"
      }
    ]
  };
}
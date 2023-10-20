
class PaymentTypeList {
  PaymentTypeList({
      this.bptId, 
      this.paymentTypeName,});

  PaymentTypeList.fromJson(dynamic json) {
    bptId = json['bptId'];
    paymentTypeName = json['paymentTypeName'];
  }
  num? bptId;
  String? paymentTypeName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['bptId'] = bptId;
    map['paymentTypeName'] = paymentTypeName;
    return map;
  }

}
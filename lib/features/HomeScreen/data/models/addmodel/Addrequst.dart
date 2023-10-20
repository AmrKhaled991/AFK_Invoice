import 'Data.dart';

/// data : {"companyId":1,"branchId":1,"invoiceType":10,"fyId":1,"invoiceId":303,"invoiceCode":"303","invoiceDate":"2023-10-18T05:12:09.4576107-07:00","jvId":343,"jvSerial":"347","tafkit":"فقط مائتان وخمسون جنيه مصرى لا غير","qrCode":"010b48797065722050686f6e6502000313323032332d31302d31385430353a31323a30390403323530050130"}
/// status : 200
/// message : "Done"
/// isSuccess : true
/// token : null

class Addresponse {
  Addresponse({
      this.data, 
      this.status, 
      this.message, 
      this.isSuccess, 
      this.token,});

  Addresponse.fromJson(dynamic json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    status = json['status'];
    message = json['message'];
    isSuccess = json['isSuccess'];
    token = json['token'];
  }
  Data? data;
  num? status;
  String? message;
  bool? isSuccess;
  dynamic token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['status'] = status;
    map['message'] = message;
    map['isSuccess'] = isSuccess;
    map['token'] = token;
    return map;
  }

}
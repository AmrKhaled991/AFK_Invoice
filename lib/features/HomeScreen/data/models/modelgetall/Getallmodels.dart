
import 'Data.dart';

class Getallmodels {
  Getallmodels({
    this.data,
    this.status,
    this.message,
    this.isSuccess,
    this.token,});

  Getallmodels.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Getalldataresponse.fromJson(v));
      });
    }
    status = json['status'];
    message = json['message'];
    isSuccess = json['isSuccess'];
    token = json['token'];
  }
  List<Getalldataresponse>? data;
  num? status;
  String? message;
  bool? isSuccess;
  dynamic token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    map['status'] = status;
    map['message'] = message;
    map['isSuccess'] = isSuccess;
    map['token'] = token;
    return map;
  }

}

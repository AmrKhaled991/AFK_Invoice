/// companyId : 1
/// branchId : 1
/// invoiceType : 10
/// fyId : 1
/// invoiceId : 303
/// invoiceCode : "303"
/// invoiceDate : "2023-10-18T05:12:09.4576107-07:00"
/// jvId : 343
/// jvSerial : "347"
/// tafkit : "فقط مائتان وخمسون جنيه مصرى لا غير"
/// qrCode : "010b48797065722050686f6e6502000313323032332d31302d31385430353a31323a30390403323530050130"

class Data {
  Data({
      this.companyId, 
      this.branchId, 
      this.invoiceType, 
      this.fyId, 
      this.invoiceId, 
      this.invoiceCode, 
      this.invoiceDate, 
      this.jvId, 
      this.jvSerial, 
      this.tafkit, 
      this.qrCode,});

  Data.fromJson(dynamic json) {
    companyId = json['companyId'];
    branchId = json['branchId'];
    invoiceType = json['invoiceType'];
    fyId = json['fyId'];
    invoiceId = json['invoiceId'];
    invoiceCode = json['invoiceCode'];
    invoiceDate = json['invoiceDate'];
    jvId = json['jvId'];
    jvSerial = json['jvSerial'];
    tafkit = json['tafkit'];
    qrCode = json['qrCode'];
  }
  num? companyId;
  num? branchId;
  num? invoiceType;
  num? fyId;
  num? invoiceId;
  String? invoiceCode;
  String? invoiceDate;
  num? jvId;
  String? jvSerial;
  String? tafkit;
  String? qrCode;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['companyId'] = companyId;
    map['branchId'] = branchId;
    map['invoiceType'] = invoiceType;
    map['fyId'] = fyId;
    map['invoiceId'] = invoiceId;
    map['invoiceCode'] = invoiceCode;
    map['invoiceDate'] = invoiceDate;
    map['jvId'] = jvId;
    map['jvSerial'] = jvSerial;
    map['tafkit'] = tafkit;
    map['qrCode'] = qrCode;
    return map;
  }

}
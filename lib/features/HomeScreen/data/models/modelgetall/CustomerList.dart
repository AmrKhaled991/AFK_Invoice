
class CustomerList {
  CustomerList({
      this.id, 
      this.sceType, 
      this.code, 
      this.customerName, 
      this.tel1, 
      this.tel2, 
      this.mobile, 
      this.fax, 
      this.eMail, 
      this.site, 
      this.address, 
      this.notes, 
      this.posDefaultCusCash, 
      this.taxRegistrationNo, 
      this.vatNo,});

  CustomerList.fromJson(dynamic json) {
    id = json['id'];
    sceType = json['sceType'];
    code = json['code'];
    customerName = json['customerName'];
    tel1 = json['tel1'];
    tel2 = json['tel2'];
    mobile = json['mobile'];
    fax = json['fax'];
    eMail = json['eMail'];
    site = json['site'];
    address = json['address'];
    notes = json['notes'];
    posDefaultCusCash = json['posDefaultCusCash'];
    taxRegistrationNo = json['taxRegistrationNo'];
    vatNo = json['vatNo'];
  }
  num? id;
  String? sceType;
  String? code;
  String? customerName;
  String? tel1;
  String? tel2;
  String? mobile;
  String? fax;
  String? eMail;
  String? site;
  String? address;
  String? notes;
  bool? posDefaultCusCash;
  String? taxRegistrationNo;
  String? vatNo;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['sceType'] = sceType;
    map['code'] = code;
    map['customerName'] = customerName;
    map['tel1'] = tel1;
    map['tel2'] = tel2;
    map['mobile'] = mobile;
    map['fax'] = fax;
    map['eMail'] = eMail;
    map['site'] = site;
    map['address'] = address;
    map['notes'] = notes;
    map['posDefaultCusCash'] = posDefaultCusCash;
    map['taxRegistrationNo'] = taxRegistrationNo;
    map['vatNo'] = vatNo;
    return map;
  }

}
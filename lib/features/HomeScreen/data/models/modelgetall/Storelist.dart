/// storesList : [{"defaultStore":true,"storeId":1,"storeCode":"1","storeName":"المخزن الرئيسى"},{"defaultStore":false,"storeId":2,"storeCode":"2","storeName":"مخزن فرع ماريوت الزمالك"},{"defaultStore":false,"storeId":3,"storeCode":"3","storeName":"مخزن فرع جراند نايل تاور"},{"defaultStore":false,"storeId":4,"storeCode":"4","storeName":"مخزن فرع شيراتون"}]


/// defaultStore : true
/// storeId : 1
/// storeCode : "1"
/// storeName : "المخزن الرئيسى"

class StoresList {
  StoresList({
      this.defaultStore, 
      this.storeId, 
      this.storeCode, 
      this.storeName,});

  StoresList.fromJson(dynamic json) {
    defaultStore = json['defaultStore'];
    storeId = json['storeId'];
    storeCode = json['storeCode'];
    storeName = json['storeName'];
  }
  bool? defaultStore;
  num? storeId;
  String? storeCode;
  String? storeName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['defaultStore'] = defaultStore;
    map['storeId'] = storeId;
    map['storeCode'] = storeCode;
    map['storeName'] = storeName;
    return map;
  }

}
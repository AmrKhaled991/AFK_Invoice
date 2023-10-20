
class ItemsList {
  ItemsList({
      this.groupId, 
      this.itemId, 
      this.itemCode, 
      this.itemName, 
      this.mainUnit, 
      this.defaultUnit, 
      this.defaultUnitSales, 
      this.unitId, 
      this.unitName, 
      this.barCode, 
      this.barcodeSeparator, 
      this.exempt, 
      this.hidePrice, 
      this.salesValue, 
      this.minimumSaleValue, 
      this.taxRate, 
      this.tableTaxRate, 
      this.salesDiscountType, 
      this.salesDiscountValue, 
      this.automaticDiscountS, 
      this.useTaxOnTableFees,});

  ItemsList.fromJson(dynamic json) {
    groupId = json['groupId'];
    itemId = json['itemId'];
    itemCode = json['itemCode'];
    itemName = json['itemName'];
    mainUnit = json['mainUnit'];
    defaultUnit = json['defaultUnit'];
    defaultUnitSales = json['defaultUnitSales'];
    unitId = json['unitId'];
    unitName = json['unitName'];
    barCode = json['barCode'];
    barcodeSeparator = json['barcodeSeparator'];
    exempt = json['exempt'];
    hidePrice = json['hidePrice'];
    salesValue = json['salesValue'];
    minimumSaleValue = json['minimumSaleValue'];
    taxRate = json['taxRate'];
    tableTaxRate = json['tableTaxRate'];
    salesDiscountType = json['salesDiscountType'];
    salesDiscountValue = json['salesDiscountValue'];
    automaticDiscountS = json['automaticDiscountS'];
    useTaxOnTableFees = json['useTaxOnTableFees'];
  }
  num? groupId;
  num? itemId;
  String? itemCode;
  String? itemName;
  bool? mainUnit;
  bool? defaultUnit;
  bool? defaultUnitSales;
  num? unitId;
  String? unitName;
  String? barCode;
  String? barcodeSeparator;
  bool? exempt;
  bool? hidePrice;
  num? salesValue;
  num? minimumSaleValue;
  num? taxRate;
  num? tableTaxRate;
  num? salesDiscountType;
  num? salesDiscountValue;
  bool? automaticDiscountS;
  bool? useTaxOnTableFees;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['groupId'] = groupId;
    map['itemId'] = itemId;
    map['itemCode'] = itemCode;
    map['itemName'] = itemName;
    map['mainUnit'] = mainUnit;
    map['defaultUnit'] = defaultUnit;
    map['defaultUnitSales'] = defaultUnitSales;
    map['unitId'] = unitId;
    map['unitName'] = unitName;
    map['barCode'] = barCode;
    map['barcodeSeparator'] = barcodeSeparator;
    map['exempt'] = exempt;
    map['hidePrice'] = hidePrice;
    map['salesValue'] = salesValue;
    map['minimumSaleValue'] = minimumSaleValue;
    map['taxRate'] = taxRate;
    map['tableTaxRate'] = tableTaxRate;
    map['salesDiscountType'] = salesDiscountType;
    map['salesDiscountValue'] = salesDiscountValue;
    map['automaticDiscountS'] = automaticDiscountS;
    map['useTaxOnTableFees'] = useTaxOnTableFees;
    return map;
  }

}
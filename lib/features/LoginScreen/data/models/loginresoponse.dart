/// data : {"userName":"master","loginDate":"0001-01-01T00:00:00","languages":0,"userId":1,"financialYear":1,"type":1,"companyId":1,"branchId":1,"companyBranchShowHide":false,"companyNameA":"Hyper  Demo","companyNameE":"Hyper Phone","financialCode":"2023","branchNameA":"الفرع الرئيسي للتجارة والتوزيع","branchNameE":"الفرع الرئيسي للتجارة والتوزيع","beginDate":"2022-01-01T00:00:00","endDate":"2023-12-31T23:59:59","beginDateHJ":"1443/05/28","endDateHJ":"1445/06/18","financialType":0,"financialStatus":0,"strServerName":null,"strDatabase":null,"intSQLAuthenticationType":0,"strSQLUserName":null,"strSQLPassword":null,"serverDateTime":"0001-01-01T00:00:00","sdpItems":0,"sdpaDiscount":0,"showSalesPolicy":false,"joinUserStore":false,"manualFollowCost":false,"strInitialCatalogOld":"Ps","strDataSourceOld":"SD\\SD","strUserIDOld":"sa","strPasswordOld":null,"authenticationTypeOld":0,"financialYearOld":0,"companyIdOld":0,"programVersion":0,"importFromExcel":false,"exportToExcel":false,"computerName":null}
/// status : 200
/// message : "تم"
/// isSuccess : true
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjoibWFzdGVyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZWlkZW50aWZpZXIiOiIxIiwiTGFuZ0lkIjoiMSIsIkNvbXB1dGVyTmFtZSI6IiIsImV4cCI6MTY5NzE3NzEwMywiaXNzIjoidGVzdCIsImF1ZCI6InRlc3QifQ.C1dnFZMC22DTPqcdcZR922ARCJYe3i1ye2tFYhHYyLA"

class Loginresoponse {
  Loginresoponse({
      this.data, 
      this.status, 
      this.message, 
      this.isSuccess, 
      this.token,});

  Loginresoponse.fromJson(dynamic json) {
    data = json['data'] != null ? LoginData.fromJson(json['data']) : null;
    status = json['status'];
    message = json['message'];
    isSuccess = json['isSuccess'];
    token = json['token'];
  }
  LoginData? data;
  num? status;
  String? message;
  bool? isSuccess;
  String? token;

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

class LoginData {
  LoginData({
      this.userName, 
      this.loginDate, 
      this.languages, 
      this.userId, 
      this.financialYear, 
      this.type, 
      this.companyId, 
      this.branchId, 
      this.companyBranchShowHide, 
      this.companyNameA, 
      this.companyNameE, 
      this.financialCode, 
      this.branchNameA, 
      this.branchNameE, 
      this.beginDate, 
      this.endDate, 
      this.beginDateHJ, 
      this.endDateHJ, 
      this.financialType, 
      this.financialStatus, 
      this.strServerName, 
      this.strDatabase, 
      this.intSQLAuthenticationType, 
      this.strSQLUserName, 
      this.strSQLPassword, 
      this.serverDateTime, 
      this.sdpItems, 
      this.sdpaDiscount, 
      this.showSalesPolicy, 
      this.joinUserStore, 
      this.manualFollowCost, 
      this.strInitialCatalogOld, 
      this.strDataSourceOld, 
      this.strUserIDOld, 
      this.strPasswordOld, 
      this.authenticationTypeOld, 
      this.financialYearOld, 
      this.companyIdOld, 
      this.programVersion, 
      this.importFromExcel, 
      this.exportToExcel, 
      this.computerName,});

  LoginData.fromJson(dynamic json) {
    userName = json['userName'];
    loginDate = json['loginDate'];
    languages = json['languages'];
    userId = json['userId'];
    financialYear = json['financialYear'];
    type = json['type'];
    companyId = json['companyId'];
    branchId = json['branchId'];
    companyBranchShowHide = json['companyBranchShowHide'];
    companyNameA = json['companyNameA'];
    companyNameE = json['companyNameE'];
    financialCode = json['financialCode'];
    branchNameA = json['branchNameA'];
    branchNameE = json['branchNameE'];
    beginDate = json['beginDate'];
    endDate = json['endDate'];
    beginDateHJ = json['beginDateHJ'];
    endDateHJ = json['endDateHJ'];
    financialType = json['financialType'];
    financialStatus = json['financialStatus'];
    strServerName = json['strServerName'];
    strDatabase = json['strDatabase'];
    intSQLAuthenticationType = json['intSQLAuthenticationType'];
    strSQLUserName = json['strSQLUserName'];
    strSQLPassword = json['strSQLPassword'];
    serverDateTime = json['serverDateTime'];
    sdpItems = json['sdpItems'];
    sdpaDiscount = json['sdpaDiscount'];
    showSalesPolicy = json['showSalesPolicy'];
    joinUserStore = json['joinUserStore'];
    manualFollowCost = json['manualFollowCost'];
    strInitialCatalogOld = json['strInitialCatalogOld'];
    strDataSourceOld = json['strDataSourceOld'];
    strUserIDOld = json['strUserIDOld'];
    strPasswordOld = json['strPasswordOld'];
    authenticationTypeOld = json['authenticationTypeOld'];
    financialYearOld = json['financialYearOld'];
    companyIdOld = json['companyIdOld'];
    programVersion = json['programVersion'];
    importFromExcel = json['importFromExcel'];
    exportToExcel = json['exportToExcel'];
    computerName = json['computerName'];
  }
  String? userName;
  String? loginDate;
  num? languages;
  num? userId;
  num? financialYear;
  num? type;
  num? companyId;
  num? branchId;
  bool? companyBranchShowHide;
  String? companyNameA;
  String? companyNameE;
  String? financialCode;
  String? branchNameA;
  String? branchNameE;
  String? beginDate;
  String? endDate;
  String? beginDateHJ;
  String? endDateHJ;
  num? financialType;
  num? financialStatus;
  dynamic strServerName;
  dynamic strDatabase;
  num? intSQLAuthenticationType;
  dynamic strSQLUserName;
  dynamic strSQLPassword;
  String? serverDateTime;
  num? sdpItems;
  num? sdpaDiscount;
  bool? showSalesPolicy;
  bool? joinUserStore;
  bool? manualFollowCost;
  String? strInitialCatalogOld;
  String? strDataSourceOld;
  String? strUserIDOld;
  dynamic strPasswordOld;
  num? authenticationTypeOld;
  num? financialYearOld;
  num? companyIdOld;
  num? programVersion;
  bool? importFromExcel;
  bool? exportToExcel;
  dynamic computerName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['userName'] = userName;
    map['loginDate'] = loginDate;
    map['languages'] = languages;
    map['userId'] = userId;
    map['financialYear'] = financialYear;
    map['type'] = type;
    map['companyId'] = companyId;
    map['branchId'] = branchId;
    map['companyBranchShowHide'] = companyBranchShowHide;
    map['companyNameA'] = companyNameA;
    map['companyNameE'] = companyNameE;
    map['financialCode'] = financialCode;
    map['branchNameA'] = branchNameA;
    map['branchNameE'] = branchNameE;
    map['beginDate'] = beginDate;
    map['endDate'] = endDate;
    map['beginDateHJ'] = beginDateHJ;
    map['endDateHJ'] = endDateHJ;
    map['financialType'] = financialType;
    map['financialStatus'] = financialStatus;
    map['strServerName'] = strServerName;
    map['strDatabase'] = strDatabase;
    map['intSQLAuthenticationType'] = intSQLAuthenticationType;
    map['strSQLUserName'] = strSQLUserName;
    map['strSQLPassword'] = strSQLPassword;
    map['serverDateTime'] = serverDateTime;
    map['sdpItems'] = sdpItems;
    map['sdpaDiscount'] = sdpaDiscount;
    map['showSalesPolicy'] = showSalesPolicy;
    map['joinUserStore'] = joinUserStore;
    map['manualFollowCost'] = manualFollowCost;
    map['strInitialCatalogOld'] = strInitialCatalogOld;
    map['strDataSourceOld'] = strDataSourceOld;
    map['strUserIDOld'] = strUserIDOld;
    map['strPasswordOld'] = strPasswordOld;
    map['authenticationTypeOld'] = authenticationTypeOld;
    map['financialYearOld'] = financialYearOld;
    map['companyIdOld'] = companyIdOld;
    map['programVersion'] = programVersion;
    map['importFromExcel'] = importFromExcel;
    map['exportToExcel'] = exportToExcel;
    map['computerName'] = computerName;
    return map;
  }

}
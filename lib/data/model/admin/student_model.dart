class StudentModel{
  String? firstName;
  String? secondName;
  String? thirdName;
  String? fourthName;
  String? address;
  String? phone;

  StudentModel({this.firstName,this.address,this.fourthName,this.phone,this.secondName,this.thirdName});
  Map<String, dynamic> toJson(){
    return {
      'firstName':firstName,
      'secondName':secondName,
      'thirdName':thirdName,
      'fourthName':fourthName,
      'address':address,
      'phone':phone
    };
  }
  StudentModel.fromJson(Map<String,dynamic> json):this(
      firstName:json["firstName"] as String,
      secondName: json['secondName'] as String,
      thirdName: json['thirdName'] as String,
      fourthName: json['fourthName'] as String,
      address: json['address'] as String,
      phone: json['phone'] as String
  );
}
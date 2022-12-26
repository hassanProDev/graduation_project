class DepartmentModel{

  String? departmentName;
  String? departmentCode;

  DepartmentModel({this.departmentName,this.departmentCode});

  Map<String,dynamic> toJson(){
    return{
      'departmentCode':departmentCode,
      'departmentName':departmentName
    };
  }

  DepartmentModel.fromJson(Map<String,dynamic> json):this(
    departmentCode:json['departmentCode'],
    departmentName:json['departmentName']
  );
}
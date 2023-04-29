class FacebookUserModel {
  late String name;
  late String email;
  late String phone;
  late String uId;

  FacebookUserModel({
    required this.name ,
    required this.email,
    required this.phone,
    required this.uId,

  });
  FacebookUserModel.fromjson(Map<String,dynamic>json){
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    uId = json['uId'];

  }
  Map<String,dynamic> tomap(){
    return {
      'name':name,
      'email':email,
      'phone':phone,
      'uId':uId,

    };
  }
}
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {

  UserModel({
    required this.email,
    required this.password,
  });

  String email;
  String password;

  static cleanUser() {
    return UserModel(email: "", password: "");
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      email: map['email'] as String,
      password: map['password'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

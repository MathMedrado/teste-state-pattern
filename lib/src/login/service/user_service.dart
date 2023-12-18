import 'package:dio/dio.dart';
import 'package:login_with_state/src/login/model/user_model.dart';

class UserService {

  Dio dio;

  UserService({required this.dio});

  Future<UserModel> verifyLogin(String email, String password) async {
    String url = "http://localhost:8080/user/login";
    Map<String, dynamic > body = {
      email : email,
      password : password
    };

    Response response = await dio.post(url, data: body);

    if(response.statusCode == 200){
      var data = response.data;
      print(data);
      UserModel user = UserModel(email: email, password: password);

      return user;
    } else {
      return UserModel.cleanUser();
    }
  }


  




}
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:login_with_state/src/login/model/user_model.dart';
import 'package:login_with_state/src/login/service/user_service.dart';
import 'package:login_with_state/src/login/state/user_state.dart';

class UserStore extends ValueNotifier<UserState>{

  final UserService userService;

  UserStore(this.userService) : super(InitialUserState());

  Future verifyLogin(String email, String password) async {
    value = LoadingUserState();
    UserModel user = await userService.verifyLogin(email, password);
    if(user.email != "" && user.password != ""){
      value = ValidUserState(user);
    } else {
      value = InvalidUserState(user);
    }
  }


}
import 'package:login_with_state/src/login/model/user_model.dart';

class UserState {
}

class InitialUserState extends UserState {
}

class LoadingUserState extends UserState {
}

class VerifyUserState extends UserState {
  final UserModel user;
  
  VerifyUserState(this.user);
}

class InvalidUserState extends UserState {
  final UserModel user;

  InvalidUserState(this.user);
}

class ValidUserState extends UserState {
  final UserModel user;

  ValidUserState(this.user);
}


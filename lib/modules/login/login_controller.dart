import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class LoginController{

  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;
  final LoginService service;
  Function(LoginState state)?onChange;

  LoginController({required this.onUpdate, required this.service});

  Future <void> googleSigIn()async{
    try{
      state = LoginStateLoading();
      update();
      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
      update();

    }catch(error){
      state = LoginStateFailure(message: error.toString());
      update();
    }
  }

  void update(){
    onUpdate();
    if(onChange!=null){
      onChange!(state);
    }
  }

  void listen(Function(LoginState state)onChange){
    this.onChange = onChange;
  }
}
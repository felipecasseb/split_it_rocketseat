import 'package:flutter/cupertino.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/models/user_model.dart';

class LoginController{

  UserModel? user;
  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;

  LoginController({required this.onUpdate});

  Future <void> googleSigIn()async{
    GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: [
          'email',
        ]
    );
    try{
      state = LoginStateLoading();
      onUpdate();
      final account = await _googleSignIn.signIn();
      user = UserModel.google(account!);
      state = LoginStateSuccess(user: user!);
      onUpdate();

    }catch(error){
      state = LoginStateFailure(message: error.toString());
      onUpdate();
    }
  }
}
import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login_service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(service: LoginServiceImpl(), onUpdate: () {
      if(controller.state is LoginStateSuccess){
        final user = (controller.state as LoginStateSuccess).user;
        Navigator.pushReplacementNamed(context, "/home", arguments: user);
      }else{
        setState(() {

        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Container(
                  width: 260,
                  child: Text("Divida suas contas com seus amigos",
                      style: AppTheme.textStyles.title),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: ListTile(
                  leading: Image.asset("image/emoji.png"),
                  title: Text("Faça seu login com uma das contas abaixo",
                      style: AppTheme.textStyles.button),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              if (controller.state is LoginStateLoading) ...[
                CircularProgressIndicator(),
              ] else if(controller.state is LoginStateFailure)...[
                Text((controller.state as LoginStateFailure).message)
              ] else
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SocialButtonWidget(
                    imagePath: "image/google.png",
                    label: "Entrar com Google",
                    onTap: () async {
                      controller.googleSigIn();
                    },
                  ),
                ),
              SizedBox(
                height: 12,
              ),
              //TODO: CONFIGURAR LOGIN APPLE
              /*Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SocialButtonWidget(
                    imagePath: "image/apple.png",
                    label: "Entrar com Apple",
                    onTap: (){},
                  )),*/
            ],
          ),
        ],
      ),
    );
  }
}

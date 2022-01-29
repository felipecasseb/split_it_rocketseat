import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  child: Text(
                      "Divida suas contas com seus amigos",
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      color: AppTheme.colors.title
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: ListTile(
                  leading: Image.asset("image/emoji.png"),
                  title: Text(
                      "Faça seu login com uma das contas abaixo",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppTheme.colors.button
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32,),
              ElevatedButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(AppTheme.colors.backgroundPrimary)
                ),
                onPressed: (){},
                icon: Image.asset("image/google.png"),
                label: Text(
                    "Entrar com Google",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppTheme.colors.button
                  ),
                ),
              ),
              SizedBox(height: 12,),
              ElevatedButton.icon(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(AppTheme.colors.backgroundPrimary)
                ),
                onPressed: (){},
                icon: Image.asset("image/apple.png"),
                label: Text(
                    "Entrar com Apple",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppTheme.colors.button
                  ),
                ),
              )
            ],
          ),

        ],
      ),
    );
  }
}

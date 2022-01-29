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
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.fromBorderSide(BorderSide(color: AppTheme.colors.border))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 57, width: 57,
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("image/google.png"),
                              SizedBox(width: 8,),
                              Container(width: 1, color: AppTheme.colors.border,)
                            ],
                          )
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Entrar com Google",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppTheme.colors.button
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 12,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.fromBorderSide(BorderSide(color: AppTheme.colors.border))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                          height: 57, width: 57,
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("image/apple.png"),
                              SizedBox(width: 8,),
                              Container(width: 1, color: AppTheme.colors.border,)
                            ],
                          )
                      ),
                      Expanded(child: Container()),
                      Text(
                        "Entrar com Apple",
                        style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: AppTheme.colors.button
                        ),
                      ),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

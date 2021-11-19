import 'package:auth_page_mobile/login_screen/components/email_text_field.dart';
import 'package:auth_page_mobile/login_screen/components/login_button.dart';
import 'package:auth_page_mobile/login_screen/components/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            EmailTextField(
              hintText: "Your Email",
              onChanged: (value) {}, icon: Icons.email,
            ),
            PasswordTextField(
              onChanged: (value) {},
            ),
            LoginButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}

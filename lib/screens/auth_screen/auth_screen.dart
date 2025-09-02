import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:soundtrip/screens/auth_screen/widgets/auth_screen_provider.dart';

import 'package:soundtrip/theme/app_decoration.dart';
import 'package:soundtrip/theme/app_text_style.dart';

class AuthScreenWidgetBody extends StatelessWidget {
  const AuthScreenWidgetBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(flex: 2),
          Text('HELLO', style: AppTextStyle.mainWhitecolorBold),
          Spacer(flex: 2),
          ChangeNotifierProvider(
            create: (context) => AuthScreenProvider(),
            child: LoginFormWidget(),
          ),
        ],
      ),
    );
  }
}

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.authScreenDecoration,
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.65,
      child: LoginFormBodyWIdget(),
    );
  }
}

class LoginFormBodyWIdget extends StatelessWidget {
  const LoginFormBodyWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = context
        .read<AuthScreenProvider>()
        .emailtextController;
    final passwordController = context
        .read<AuthScreenProvider>()
        .passwordtextController;
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.sizeOf(context).height * 0.1,
        horizontal: MediaQuery.sizeOf(context).height * 0.05,
      ),
      child: Column(
        children: [
          LoginFormBodyTextFieldWidget(
            text: "Email",
            controller: emailController,
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          LoginFormBodyTextFieldWidget(
            text: "Password",
            controller: passwordController,
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          LoginButtonWidget(),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          SignUpAndForgotButtonWidget(onPressed: () {}, text: "Sign Up"),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
          SignUpAndForgotButtonWidget(
            onPressed: () {},
            text: "Forgot Password",
          ),
        ],
      ),
    );
  }
}

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.indigo),
        minimumSize: WidgetStateProperty.all(Size(double.infinity, 50)),
      ),
      child: Text("Login", style: TextStyle(fontSize: 22, color: Colors.white)),
    );
  }
}

class SignUpAndForgotButtonWidget extends StatelessWidget {
  final void Function()? onPressed;
  final String text;
  const SignUpAndForgotButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class LoginFormBodyTextFieldWidget extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  const LoginFormBodyTextFieldWidget({
    super.key,
    required this.text,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: AppDecoration.authTextFieldDecoration(text),
      controller: controller,
    );
  }
}

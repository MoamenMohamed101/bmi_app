import 'package:bmi_app/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool? isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  defaultFormField(
                    controller: emailController,
                    keyboard: TextInputType.emailAddress,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'enter email';
                      }
                      return null;
                    },
                    text: 'Enter email address',
                    prefixIcon: Icons.email,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  defaultFormField(
                    controller: passwordController,
                    keyboard: TextInputType.visiblePassword,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'enter password';
                      }
                      return null;
                    },
                    text: 'Enter your password',
                    prefixIcon: Icons.lock,
                    suffixIcon: Icons.add,
                    isPassword: isPassword!,
                    iconSuffix: () {
                      setState(() {
                        isPassword = !isPassword!;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  defaultButton(
                    color: Colors.blue,
                    text: 'login',
                    voidCallback: () {
                      if (formKey.currentState!.validate())
                        print(emailController.text);
                      print(passwordController.text);
                    },
                    width: double.infinity,
                    isUpperCase: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

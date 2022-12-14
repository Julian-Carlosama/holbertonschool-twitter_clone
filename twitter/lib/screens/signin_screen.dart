import 'package:flutter/material.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  late TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    _emailController = _emailController;
    _passwordController = _passwordController;
    super.initState();
  }

  @override
  void dispose() {
    _emailController = _emailController;
    _passwordController = _passwordController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 246, 246),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Sing in',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 100,
            child: Image.asset('name'),
          ),
          CustomEntryField(
              hint: 'Enter email',
              controller: _emailController,
              isPassword: false),
          CustomEntryField(
              hint: 'Enter password',
              controller: _passwordController,
              isPassword: true),
          Center(
            child: CustomFlatButton(
                label: 'Submit',
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BottomAppBar()),
                    )),
          ),
          SizedBox(
            height: 50,
          ),
          GestureDetector(
            onTap: (() => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                )),
            child: Center(
              child: Text('Sign up'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: (() => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgetPassword()),
                )),
            child: Center(
              child: Text('Forget password'),
            ),
          )
        ],
      ),
    );
  }
}

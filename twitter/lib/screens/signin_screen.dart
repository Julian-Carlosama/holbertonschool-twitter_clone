import 'package:flutter/material.dart';
import 'package:twitter/screens/forgot_password_screen.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/signup_screen.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

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
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sing In',
            style: TextStyle(
                color: Colors.black, fontSize: 38, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network(
              'http://assets.stickpng.com/images/580b57fcd9996e24bc43c53e.png',
            ),
          ),
          SizedBox(
            height: 15,
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
                          builder: (context) => const HomeScreen()),
                    )),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: (() => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUp()),
                )),
            child: Center(
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
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
              child: Text(
                'Forget password?',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          /*GestureDetector(
            onTap: (() => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                )),
            child: Center(
              child: Text(
                'Ver Home',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}

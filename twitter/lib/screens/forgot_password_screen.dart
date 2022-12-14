import 'package:flutter/material.dart';
import 'package:twitter/widgets/entry_field.dart';
import 'package:twitter/widgets/flat_button.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  TextEditingController _emailController = TextEditingController();

  @override
  void initState() {
    _emailController = _emailController;
    super.initState();
  }

  @override
  void dispose() {
    _emailController = _emailController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: BackButton(
            color: Colors.blue,
            onPressed: (() => Navigator.of(context).pop()),
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Forget Password',
            style: TextStyle(color: Colors.black),
          )),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Center(
              child: Text(
                'Forget password',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Enter your email address below to',
              ),
            ),
            Center(
              child: Text(
                'recevie password reset instrection',
              ),
            ),
            Center(
              child: CustomEntryField(
                hint: 'Enter Email',
                controller: _emailController,
                isPassword: false,
              ),
            ),
            Center(
              child: CustomFlatButton(
                label: 'Submit',
                onPressed: () {},
              ),
            ),
          ],
        ),
      )),
    );
  }
}

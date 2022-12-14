import 'package:flutter/material.dart';
import 'package:twitter/screens/signin_screen.dart';
import 'package:twitter/widgets/entry_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignIn(),
      /*theme: ThemeData(
        primaryColor: Colors.white,
        
        iconTheme: IconThemeData(color: new Color.fromRGBO(56, 161, 243, 1)),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: new Color.fromRGBO(56, 161, 243, 1),
        )
      ),
      initialRoute: 'CustomEntryField',
      routes: {
        CustomEntryField.id:(context) => CustomEntryField(),
      },*/
    );
  }
}

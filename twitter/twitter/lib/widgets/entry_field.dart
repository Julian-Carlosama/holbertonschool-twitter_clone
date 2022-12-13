import 'package:flutter/material.dart';

class CustomEntryField extends StatelessWidget {
  //const CustomEntryField({super.key});
  final String hint = 'entry_field';
  final TextEditingController _controller = TextEditingController();
  late final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: TextField(
          controller: _controller,
          obscureText: isPassword,
          decoration: InputDecoration(
              hintText: hint,
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(width: 3, color: Colors.blue),
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
				toolbarHeight: 80,
				//flexibleSpace: Container(color: Colors.black),
				title: Text(
					'User Name',
					style: TextStyle(fontSize: 25, fontFamily: 'Lobster'),
				),
				automaticallyImplyLeading: false,
			),
    );
  }
}
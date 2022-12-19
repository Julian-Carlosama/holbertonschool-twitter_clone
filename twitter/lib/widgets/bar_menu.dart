import 'package:flutter/material.dart';
import 'package:twitter/screens/chats_screen.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/notifications_screen.dart';
import 'package:twitter/screens/search_screen.dart';


class BarMenu extends StatefulWidget {
  const BarMenu({super.key});

  @override
  State<BarMenu> createState() => _BarMenuState();
}

class _BarMenuState extends State<BarMenu> {
  List<Widget> ListsScreens = [
    HomeScreen(),
    SearchScreen(),
    NotificationsScreen(),
    ChatsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    //const provid = Provider.of<>(context, listen: false)

    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.home,
            size: 50,
            color: Colors.blue,
          ),
          label: ''
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.search,
            size: 50,
          ),
          label: ''
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.notifications,
            size: 50,
          ),
          label: ''
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.email,
            size: 50,
          ),
          label: ''
        )

      ]
    );
  }
}
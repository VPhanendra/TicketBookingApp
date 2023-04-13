import 'package:booktickets/Screens/home_screen.dart';
import 'package:booktickets/Screens/profile_screen.dart';
import 'package:booktickets/Screens/search_screen.dart';
import 'package:booktickets/Screens/ticket_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _selectedIndex=0;
  static  final List<Widget>_widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen()
  ];
  void _onIteamTap(int index){
    setState(() {
      _selectedIndex =index;
    });
    print("tap index" '${_selectedIndex}');
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // appBar: AppBar(
      //   title: Text("My tickets"),
      // ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onIteamTap,
        elevation: 10,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.black26,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),activeIcon : Icon(FluentSystemIcons.ic_fluent_home_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),activeIcon : Icon(FluentSystemIcons.ic_fluent_search_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),activeIcon : Icon(FluentSystemIcons.ic_fluent_ticket_filled),label: "Home"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),activeIcon : Icon(FluentSystemIcons.ic_fluent_person_filled),label: "Home"),
        ],

      ),
    );
  }
}

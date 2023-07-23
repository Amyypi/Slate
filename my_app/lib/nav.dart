import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
// list of icons: https://github.com/microsoft/fluentui-system-icons/blob/main/icons_regular.md
import 'package:my_app/screens/home_screen.dart';
import 'package:my_app/screens/calendar_screen.dart';
import 'package:my_app/screens/journal_screen.dart';
import 'package:my_app/screens/water_screen.dart';
import 'package:my_app/controller/controller_bindings.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(), // temporarily to-do entry list screen
    CalendarScreen(),
    JournalEntryList(),
    WaterRecord(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        selectedItemColor: Color.fromARGB(255, 101, 139, 101),
        unselectedItemColor: Color.fromARGB(255, 49, 58, 71),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_apps_list_regular),
            label: 'To-Do',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_calendar_regular),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_emoji_regular),
            label: 'Journal Entry',
          ),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_checkmark_circle_regular),
            label: 'Water Tracker',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

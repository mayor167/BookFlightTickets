import 'package:booktickets/screens/home_screen.dart';
import 'package:booktickets/screens/profile_screen.dart';
import 'package:booktickets/screens/search_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex =0;
  static final List<Widget>_widgetOptions = <Widget>[
          HomeScreen(),
          // const Text("Home"),
          // const Text("Search"),
          SearchScreen(),
          const Text("Tickets"),
           ProfileScreen(),
          // const Text("Profile"),
  ];
  void _onItemTapped(int index){
      setState(() {
        _selectedIndex = index;
      });
      // Text _iconTapped = _widgetOptions[index] as Text;
      // String tappedIcon = _iconTapped.data?? '';
      // print('Position of the ${tappedIcon} icon tapped: ${_selectedIndex}');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My tickets",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF27548A),
      ),
      body: Center(child: _widgetOptions[_selectedIndex],),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526488),
        type: BottomNavigationBarType.fixed,
        items: const [
                BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular),activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled), label: "Home"),
                BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_search_regular),activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled), label: "Search"),
                BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled), label: "Ticket"),
                BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular), activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled), label: "Profile"),
        ],
      ),
    );
  }
}


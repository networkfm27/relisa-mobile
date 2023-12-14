import 'package:flutter/material.dart';
import 'package:relisa/page/relawan/diskusi.dart';
import 'package:relisa/page/event_relawan/akun_event.dart';
import 'package:relisa/page/event_relawan/dashboard_event.dart';
import 'package:relisa/page/event_relawan/kegiatan_event.dart';
import 'package:relisa/page/event_relawan/komunitas_event.dart';

class EventLayout extends StatefulWidget {
  const EventLayout({Key? key}) : super(key: key);

  @override
  State<EventLayout> createState() => _EventLayoutState();
}

class _EventLayoutState extends State<EventLayout> {
  @override
  int currentPageIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
        DashboardEvent(),
        KegiatanEvent(),
        KomunitasEvent(),
        DiskusiScreen(),
        AkunEventRelawan()
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        elevation: 0.2,
        backgroundColor: Colors.white,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.blue[400],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.calendar_today_sharp),
            icon: Icon(Icons.calendar_today_sharp),
            label: 'Kegiatan',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.people),
            icon: Icon(Icons.people),
            label: 'Komunitas',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.chat_bubble),
            icon: Icon(Icons.chat_bubble),
            label: 'Diskusi',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person),
            label: 'Akun',
          ),
        ],
      ),
    );
  }
}

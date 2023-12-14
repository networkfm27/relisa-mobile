import 'package:flutter/material.dart';
import 'package:relisa/page/donasi/donasi.dart';
import 'package:relisa/page/event_relawan/app_bar.dart';

class DashboardEvent extends StatefulWidget {
  const DashboardEvent({Key? key}) : super(key: key);

  @override
  State<DashboardEvent> createState() => _DashboardEventState();
}

class _DashboardEventState extends State<DashboardEvent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        AppBarContainer(),
        Container(
          height: 0.0,
          decoration: BoxDecoration(
            color: Colors.white12,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 25, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selamat Datang, Nama!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DonasiScreen()),
            );
          },
          // Card dan isinya tetap berada di dalam body
          child: Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Berikan Donasi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          child: Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kegiatan',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),
        InkWell(
          child: Card(
            elevation: 5,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Kelola Komunitas Anda',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

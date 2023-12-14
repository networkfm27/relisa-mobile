import 'package:flutter/material.dart';
import 'package:relisa/page/event_relawan/event_layout.dart';
import 'package:relisa/page/event_relawan/edit_profile_event.dart';
import 'package:relisa/page/event_relawan/setting_akun_event.dart';
import 'package:relisa/page/tentang_relisa.dart';

class AkunEventRelawan extends StatefulWidget {
  const AkunEventRelawan({Key? key}) : super(key: key);

  @override
  State<AkunEventRelawan> createState() => _AkunEventRelawanState();
}

class _AkunEventRelawanState extends State<AkunEventRelawan> {
  String userName = 'Manager Relawan';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color:
                  Theme.of(context).primaryColor, // Ganti dengan warna AppBar
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => EventLayout(),
                      ),
                    );
                  },
                ),
                Text(
                  'Akun',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                    width: 48), // Atur lebar agar sesuai dengan ikon AppBar
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/relisa.png', height: 80),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Logika untuk pindah ke halaman Edit Profil
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EditProfile(),
                              ),
                            );
                          },
                          child: Text('Edit Profil'),
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black, // Warna garis
                  thickness: 0.2, // Ketebalan garis
                  height: 50, // Jarak antara garis dan elemen di atasnya
                ),
                GestureDetector(
                  onTap: () {
                    // Logika untuk menangani klik pada teks "Pengaturan"
                    // Misalnya, pindah ke halaman pengaturan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingPage(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(width: 10),
                      Text(
                        'Pengaturan',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black, // Warna garis
                  thickness: 0.2, // Ketebalan garis
                  height: 50, // Jarak antara garis dan elemen di atasnya
                ),
                GestureDetector(
                  onTap: () {
                    // Logika untuk menangani klik pada teks "Tentang RELISA"
                    // Misalnya, pindah ke halaman tentang RELISA
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TentangRelisa(),
                      ),
                    );
                  },
                  child: Row(
                    children: [
                      Icon(Icons.info),
                      SizedBox(width: 10),
                      Text(
                        'Tentang RELISA',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black, // Warna garis
                  thickness: 0.2, // Ketebalan garis
                  height: 50, // Jarak antara garis dan elemen di atasnya
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

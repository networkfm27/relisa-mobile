import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relisa/page/event_relawan/app_bar.dart';
import 'package:relisa/page/event_relawan/detail_komunitas_event.dart';

class KomunitasEvent extends StatefulWidget {
  const KomunitasEvent({Key? key}) : super(key: key);

  @override
  State<KomunitasEvent> createState() => _KomunitasEventState();
}

class _KomunitasEventState extends State<KomunitasEvent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBarContainer(),
          SizedBox(height: 25),
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Center(
                  child: Card(
                    elevation: 5,
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {},
                      child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nama Komunitas',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    'Status Komunitas',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              CupertinoButton(
                                onPressed: () {
                                  // Handle tapping the button, e.g., navigate to detail page
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailKomunitas(),
                                    ),
                                  );
                                },
                                child: Icon(
                                    size: 50,
                                    CupertinoIcons
                                        .arrowtriangle_right_circle_fill,
                                    color: Colors.lightBlue.shade600,
                                    semanticLabel: 'Detail'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

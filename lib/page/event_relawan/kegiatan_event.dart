import 'package:flutter/material.dart';
import 'package:relisa/page/event_relawan/app_bar.dart';

class KegiatanEvent extends StatefulWidget {
  @override
  _KegiatanEventState createState() => _KegiatanEventState();
}

class _KegiatanEventState extends State<KegiatanEvent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AppBarContainer(),
          SizedBox(height: 30),
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Center(
                  child: Card(
                    child: InkWell(
                      splashColor: Colors.blue.withAlpha(30),
                      onTap: () {
                        debugPrint('Card tapped.');
                      },
                      child: const SizedBox(
                        width: 300,
                        height: 100,
                        child: Text('A card that can be tapped'),
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

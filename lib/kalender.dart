import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import 'components/table_calender.dart';

class Kalender extends StatefulWidget {
  const Kalender({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _KalenderState createState() => _KalenderState();
}

class _KalenderState extends State<Kalender> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalender'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            BasicTable(),
          ],
        ),
      ),
    );
  }
}

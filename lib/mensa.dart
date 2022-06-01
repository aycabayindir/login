import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(const MaterialApp(home: Mensa()));

class Mensa extends StatefulWidget {
  const Mensa({Key? key}) : super(key: key);

  @override
  MensaState createState() => MensaState();
}

class MensaState extends State<Mensa> {
  get padding => null;

  @override
  Widget build(BuildContext context) {
    var textStyle = const TextStyle(
        fontSize: 20, fontWeight: FontWeight.w800, color: Colors.red);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mensa'),
          centerTitle: true,
        ),
        body: Center(
            child: ListView(
          children: [
            DataTable(dataRowHeight: 75, columns: [
              DataColumn(
                  label: Text(
                'Datum',
                style: textStyle,
              )),
              const DataColumn(
                  label: Text(
                'Menü',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.red),
              )),
              const DataColumn(
                  label: Text(
                'Tag',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.red),
              )),
            ], rows: [
              DataRow(cells: [
                const DataCell(Text('16-05-2022')),
                DataCell(Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text('Alaca Çorba'),
                    Text('Alaca Çorba'),
                    Text('Alaca Çorba'),
                    Text('Alaca Çorba')
                  ],
                )),
                const DataCell(Text('Montag')),
              ]),
              DataRow(cells: [
                DataCell(Text('17-05-2022')),
                DataCell(Text('MERCİMEK ÇORBA')),
                DataCell(Text('Dienstag')),
              ]),
              DataRow(cells: [
                DataCell(Text('18-05-2022')),
                DataCell(Text('TARHANA ÇORBA')),
                DataCell(Text('Mittwoch')),
              ]),
              DataRow(cells: [
                DataCell(Text('19-05-2022')),
                DataCell(Text('Feiertag')),
                DataCell(Text('Donnerstag')),
              ]),
              DataRow(cells: [
                DataCell(Text('20-05-2022')),
                DataCell(Text('SALÇALI ŞEHRİYE ÇORBASI')),
                DataCell(Text('Freitag')),
              ]),
            ])
          ],
        )));
  }
}

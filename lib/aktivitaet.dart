import 'package:flutter/material.dart';

class Aktivitaet extends StatefulWidget {
  const Aktivitaet({Key? key}) : super(key: key);

  @override
  State<Aktivitaet> createState() => _AktivitaetState();
}

class _AktivitaetState extends State<Aktivitaet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aktivitaet'),
        centerTitle: true,
      ),
      body: Container(
          padding: const EdgeInsets.all(18),
          child: ListView(
            children: [eventCard(context), eventCard(context)],
          )),
    );
  }

  showImageDialog() {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Image.asset('assets/todo.png'),
            ),
          );
        });
  }

  Widget eventCard(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: ListTile(
          title: Column(
            children: const [
              Text(
                'Etkinlik',
                textAlign: TextAlign.left,
              ),
            ],
          ),
          leading: const Text(
            '2022/06/21',
            textAlign: TextAlign.center,
          ),
          trailing: GestureDetector(
            onTap: () => showImageDialog(),
            child: SizedBox(
                height: 30, width: 30, child: Image.asset('assets/todo.png')),
          ),
        ),
      ),
    );
  }
}

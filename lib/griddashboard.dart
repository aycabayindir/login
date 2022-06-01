// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_fb/main.dart';

import 'aktivitaet.dart';
import 'kalender.dart';
import 'mensa.dart';

class GridDashboard extends StatelessWidget {
  Items item1 = Items(
      title: "Kalender",
      subtitle: "Mai, Donnerstag",
      event: "3 Veranstaltungen",
      img: "assets/calendar.png");

  Items item2 = Items(
    title: "Mensa",
    subtitle: "Monatliche Mensa-Menü",
    event: "Wöchentliche Menü",
    img: "assets/food.png",
  );
  Items item3 = Items(
    title: "Standorte",
    subtitle: "Gebäude auf dem Campus",
    event: "7 Gebäude",
    img: "assets/map.png",
  );
  Items item4 = Items(
    title: "Aktivität",
    subtitle: "Frühlingsfest",
    event: "",
    img: "assets/festival.png",
  );
  Items item5 = Items(
    title: "Lektionen",
    subtitle: "Vorlesung,Übung,Labor,Projekt",
    event: "4 Items",
    img: "assets/todo.png",
  );
  Items item6 = Items(
    title: "Einstellungen",
    subtitle: "Konto ",
    event: "",
    img: "assets/setting.png",
  );

  GridDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Scaffold(
      backgroundColor: const Color(0xff392850),
      /* appBar: AppBar(
        backgroundColor: Color(color),
        title: const Text('Campus App'),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            child: const Text('Ausloggen'),
          )
        ],
      ),*/
      body: Column(
        children: [
          const SizedBox(
            height: 110,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Türkisch-Deutsche Universität ",
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      "CampusApp",
                      style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                              color: Color(0xffa29aac),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      child: const Icon(
                        Icons.logout,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    IconButton(
                      alignment: Alignment.topCenter,
                      icon: Image.asset(
                        "assets/notification.png",
                        width: 24,
                      ),
                      onPressed: () {},
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Flexible(
            child: GridView.count(
                childAspectRatio: 1.0,
                padding: const EdgeInsets.only(left: 16, right: 16),
                crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18,
                children: myList.map((data) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Color(color),
                        borderRadius: BorderRadius.circular(10)),
                    child: GestureDetector(
                      onTap: () {
                        if (data == item1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Kalender())));
                        }
                        if (data == item2) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Mensa())));
                        }
                        if (data == item4) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const Aktivitaet())));
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            data.img,
                            width: 42,
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Text(
                            data.title,
                            style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            data.subtitle,
                            style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    color: Colors.white38,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600)),
                          ),
                          const SizedBox(
                            height: 14,
                          ),
                          Text(
                            data.event,
                            style: GoogleFonts.openSans(
                                textStyle: const TextStyle(
                                    color: Colors.white70,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList()),
          ),
        ],
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items(
      {required this.title,
      required this.subtitle,
      required this.event,
      required this.img});
}

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App Learning',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/1.jpg",
    "assets/images/2.jpg",
    "assets/images/3.jpg",
    "assets/images/4.jpg",
    "assets/images/5.png",
    "assets/images/6.jpg",
    "assets/images/7.png",
    "assets/images/8.jpg",
    "assets/images/9.jpg",
    "assets/images/0.jpg",
  ];

  List<String> hostels = [
    "Gye Nyame Hostel",
    "Sovereign Hostel",
    "Hidden leaf Homestel",
    "Soul society Hostel",
    "New Orleans Hostel",
    "Mystic Falls Hostel",
    "Beverly Hills Hostel",
    "Eredivse Hostel",
    "Santa maria Hostel",
    "Vegas Hostel",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reserve D'Aubre"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext, index) {
          return ListTile(
            leading: Image.asset(
              images[index],
            ),
            title: Text(hostels[index], style: const TextStyle(fontSize: 23)),
            subtitle: const Text("3 in 1,2 in 1 and 1 in 1 rooms are available",
                style: const TextStyle(fontSize: 18)),
          );
        },
        separatorBuilder: (BuildContext, index) {
          return const Divider(height: 1);
        },
        itemCount: images.length,
        shrinkWrap: true,
        padding: const EdgeInsets.all(5),
        scrollDirection: Axis.vertical,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rowad_first_flutter_project/layouts/Counter/active_screen.dart';
import 'package:rowad_first_flutter_project/layouts/assignment3/creative_app.dart';
import 'layouts/Drawer&Navigation/home_page.dart';
import 'layouts/Drawer&Navigation/profile.dart';
import 'layouts/Drawer&Navigation/second_page.dart';
import 'layouts/Drawer&Navigation/settings_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home:  const CreativeApp(),
      routes: {
        '/SecondPage' : (context) => SecondPage(),
        '/SettingsPage' : (context) => const SettingsPage(),
        '/ProfilePage' : (context) => ProfilePage(),
      },
    );
  }
}


class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
          color: Colors.white,
        ),
        title: const Text(
          "First Flutter App",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            color: Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward_ios_rounded),
            color: Colors.white,
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.amber[200],
                  borderRadius: BorderRadius.circular(50)),
              child: Center(
                child: Text(
                  "$index",
                  style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w900,
                      color: Colors.blue),
                ),
              ),
            ),
          );
        },
        itemCount: 10,
      ),
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 50,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 6),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: (){
            print("Tapped ${index}");
          },
          child: Container(
            margin: const EdgeInsets.all(8),
            color: Colors.brown,
          ),
        );
      },);
  }
}


import 'package:flutter/material.dart';
import 'package:rowad_first_flutter_project/layouts/assignment3/home_creative_app.dart';
import 'package:rowad_first_flutter_project/layouts/assignment3/profile_creative_app.dart';
import 'package:rowad_first_flutter_project/layouts/assignment3/search_creative_app.dart';

class CreativeApp extends StatefulWidget {
  const CreativeApp({super.key});

  @override
  State<CreativeApp> createState() => _CreativeAppState();
}

class _CreativeAppState extends State<CreativeApp> {

  int selectionIndex=0;

  List pages = [
     const HomeCreativeApp(),
    const SearchCreativeApp(),
     const ProfileCreativeApp(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Row(
          mainAxisAlignment:MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Icon((Icons.star),color: Colors.white,),
            SizedBox(width: 5,),
            Text(
              "CreativeApp",
              style:TextStyle(
                color: Colors.white
              ) ,
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: pages[selectionIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor:  Colors.purple,
        onTap: (index){
          setState(() {
            selectionIndex=index;
          });
        },
        currentIndex: selectionIndex,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search"),

          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile"),
        ],
      ),
    );
  }
}

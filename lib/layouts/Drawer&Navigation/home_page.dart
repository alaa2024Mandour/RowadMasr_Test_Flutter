import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rowad_first_flutter_project/layouts/Drawer&Navigation/profile.dart';
import 'package:rowad_first_flutter_project/layouts/Drawer&Navigation/settings_page.dart';
import 'package:rowad_first_flutter_project/layouts/ProfileDesign/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;

  List<Widget> pages = [SettingsPage(),ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Home Page",
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),
      body:  pages[selectedIndex],
      drawer:Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(Icons.favorite,size: 42,),),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                    '/ProfilePage'
                );
              },
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: (){
                Navigator.pop(context);
                Navigator.pushNamed(
                  context,
                    '/SettingsPage'
                );
              },
            ),
          ],
        ),
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
                selectedIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],

      ),
    );
  }
}

Widget navigation(context)=> Center(
  child: ElevatedButton(
    onPressed: () {
      Navigator.pushNamed(context,  '/SecondPage');
    },
    child:  Text(
      "Navigate To Second Screen",
    ),
  ),
);
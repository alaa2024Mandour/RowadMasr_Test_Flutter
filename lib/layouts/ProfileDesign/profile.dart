import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rowad_first_flutter_project/layouts/ProfileDesign/profile_items.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/pexels-moh-adbelghaffar-771742.jpg"),
                  radius: 50,
                ),
                const SizedBox(height: 10,),
                const Text(
                  "Nicolas Adams",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
                const SizedBox(height: 5,),
                const Text(
                  "nicolasAdams@gmail.com",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                  ),
                ),
                const SizedBox(height: 10,),
                ElevatedButton(
                    onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber[600]
                  ),
                    child: const Text(
                      "Upgrade 10 PRO",
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                ),
                listTileCard(title: 'Privacy', icon: Icons.privacy_tip),
                listTileCard(title: 'Purchase History', icon: Icons.history),
                listTileCard(title: 'Help&Support', icon: Icons.help),
                listTileCard(title: 'Setting', icon: Icons.settings),
                listTileCard(title: 'Invite a friend', icon: Icons.insert_invitation),
                listTileCard(title: 'LogOut', icon: Icons.logout),
              ],
            ),
          ),
        ));
  }
}

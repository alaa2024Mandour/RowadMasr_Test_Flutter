import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileCreativeApp extends StatelessWidget {
  const ProfileCreativeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/user (1).png",width: 150,height: 150,),
           const Text(
            "Profile",
            style: TextStyle(
              fontSize: 20,
              color: Colors.purple
            ),
            ),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              onPressed: () {  },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.edit,color: Colors.white,),
                  SizedBox(width: 5,),
                  Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';

class HomeCreativeApp extends StatefulWidget {
  const HomeCreativeApp({super.key});

  @override
  State<HomeCreativeApp> createState() => _HomeCreativeAppState();
}

class _HomeCreativeAppState extends State<HomeCreativeApp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/home (1).png",width: 150,height: 150,),
          const Text(
            "Welcome Home!",
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
                  Icon(Icons.explore,color: Colors.white,),
                  SizedBox(width: 5,),
                  Text(
                    "Explore",
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

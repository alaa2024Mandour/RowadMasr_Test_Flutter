
import 'package:flutter/material.dart';

class SearchCreativeApp extends StatefulWidget {
  const SearchCreativeApp({super.key});

  @override
  State<SearchCreativeApp> createState() => _SearchCreativeAppState();
}

class _SearchCreativeAppState extends State<SearchCreativeApp> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/magnifying-glass.png",width: 150,height: 150,),
          const Text(
            "What Find You Need!",
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
                  Icon(Icons.search,color: Colors.white,),
                  SizedBox(width: 5,),
                  Text(
                    "Start Search",
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

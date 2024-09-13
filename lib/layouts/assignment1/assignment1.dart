import 'package:flutter/material.dart';

class FirstAssignment extends StatelessWidget {
  const FirstAssignment({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {  },
          icon: const Icon(Icons.menu_rounded , size: 20,),),
        title: const Text(
          "Assignment1",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {  },
            icon:const Icon(Icons.search , size: 20,),),
        ],
      ),
      body: Container(
        padding:const EdgeInsets.only(top: 20),
        width: double.infinity,
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color:containersColor[index]
                  ),
                ),
                const Text(
                    "Center",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
                const Positioned(
                  top: 30,
                  left: 30,
                  child: Text(
                    "Top Left",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 30,
                  right: 30,
                  child: Text(
                    "Bottom Right",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) => const SizedBox(height: 15,),
          itemCount: containersColor.length,),

      ),
    );
  }
}

List<Color> containersColor = [
  Colors.deepPurpleAccent,
  Colors.blue,
  Colors.amber,
  Colors.deepOrange,
  Colors.amberAccent,
  Colors.brown,
  Colors.deepPurpleAccent,
  Colors.blue,
  Colors.amber,
  Colors.deepOrange,
  Colors.amberAccent,
  Colors.brown,
];

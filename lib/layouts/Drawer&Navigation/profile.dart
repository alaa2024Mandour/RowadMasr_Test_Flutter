import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
   var nameController = TextEditingController() ;
   String input = "";

  setName (){
    setState(() {
      input = nameController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "Name",
              labelText: "Enter Your Name",
              prefix: Icon(Icons.person),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(width: 1,color: Colors.grey)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 1,color: Colors.purple)
              ),
            ),
          ),
          SizedBox(height: 50,),
          Text(input),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){
                setName();
              },
              child: Text("Taped"))
        ],
      ),
    );
  }
}

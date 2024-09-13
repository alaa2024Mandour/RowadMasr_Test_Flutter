import  'dart:core' ;
import 'package:flutter/material.dart';


Widget imageDescription({
  required  String image,
  required  String title ,
  required  String description,
  required bool isVisible,
}) => Column(
    children: [
      Image.asset(
        image,
        width: double.infinity,
        height: 150,
        fit: BoxFit.fill,),
      const SizedBox(height: 10,),
       Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      const SizedBox(height: 5,),
       Text(
        description,
        style: const TextStyle(
          fontSize: 15,
        ),
      ),
      const SizedBox(height: 10,),
      Visibility(
        visible: isVisible,
        child: ElevatedButton(
            onPressed: (){},
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                side: const BorderSide(
                    color: Colors.black,
                    width: 2),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
            ),
            child: const Text(
              "Try It Now",
              style: TextStyle(
                  color: Colors.black
              ),
            )),
      )
    ]
);
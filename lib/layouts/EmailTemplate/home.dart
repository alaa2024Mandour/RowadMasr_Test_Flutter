import 'package:flutter/material.dart';
import 'package:rowad_first_flutter_project/components/template_items.dart';

class EmailHome extends StatelessWidget {
  const EmailHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        leading: IconButton(
          onPressed: () {  },
          icon: const Icon(
              Icons.menu_rounded,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: const Text(
          "Email Template",
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {  },
            icon: const Icon(
              Icons.favorite,
              color: Colors.white,
              size: 20,
            ),
          ),
          IconButton(
            onPressed: () {  },
            icon: const Text(
              "LogOut",
              style : TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            )
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: imageDescription(
                    image: "assets/images/email.jpg",
                    title: "Customize This Email Template ..!",
                    description:  "Boost Your Email with blush . Boost Your Email with blush . ",
                    isVisible: false)
              ),
              const SizedBox(height: 30,),
              SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      child: imageDescription(
                          image: "assets/images/illustration-social-media-concept.png",
                          title: "Customize This Email Template ..!",
                          description:  "Boost Your Email with blush . Boost Your Email with blush . ",
                          isVisible: true)
                    ),
                    const SizedBox(width: 15,),
                    Expanded(
                      child: imageDescription(
                          image: "assets/images/send-email-concept.png",
                          title: "Customize This Email Template ..!",
                          description:  "Boost Your Email with blush . Boost Your Email with blush . ",
                          isVisible: true)

                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

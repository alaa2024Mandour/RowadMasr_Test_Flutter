import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingItems{
  String image,title,description;

  OnBoardingItems({
    required this.image,
    required this.title,
    required this.description});

}

var boardController = PageController();

List<OnBoardingItems> items = [
  OnBoardingItems(
      image: "assets/images/people-welcoming-concept-with-foliage-background.png",
      title: "Welcome To Our App",
      description: "We're excited to help you and manage your service aopcintments with ease."),
  OnBoardingItems(
      image: "assets/images/about-us-concept-illustration.png",
      title: "About Us",
      description: "We're excited to help you and manage your service aopcintments with ease."),
  OnBoardingItems(
      image: "assets/images/contact-us-flat-girl-background.png",
      title: "Contact Us",
      description: "We're excited to help you and manage your service aopcintments with ease."),
];

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: PageView.builder(
                controller: boardController,
                itemBuilder: (BuildContext context, int index) {
                  return itemBoarding(items[index]);
                },
                itemCount: items.length,
                  ),
            ),
            SmoothPageIndicator(
                controller: boardController,
                effect: ExpandingDotsEffect(
                  dotColor:Colors.grey ,
                  activeDotColor: Colors.blue.shade900,
                  dotHeight: 10,
                  dotWidth: 10,
                  expansionFactor: 2,
                  spacing: 5.0,
                ),
                count: items.length),
            const SizedBox(height: 50,),
            Expanded(
              child: Column(
                children: [
                  defaultButton(
                      backGroundColor: Colors.blue.shade900,
                      text: 'LogIn',
                      textColor: Colors.white),
                  const SizedBox(height: 20,),
                  defaultButton(
                      backGroundColor: Colors.grey.shade300,
                      text: 'Create an account',
                      textColor: Colors.blue.shade900)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget itemBoarding (OnBoardingItems model) => Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Image.asset(
      model.image,
      width:double.infinity ,
      height: 350,
      fit: BoxFit.cover,
    ),
    const SizedBox(height: 25,),
    Text(
      model.title,
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    const SizedBox(height: 10,),
    Text(
      model.description,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 17,
      ),
    ),
  ],
);

Widget defaultButton ({
  required Color backGroundColor,
  required String text,
  required Color textColor
}) => SizedBox(
  width: double.infinity,
  child: ElevatedButton(
    onPressed: () {  },
    style: ElevatedButton.styleFrom(
        backgroundColor: backGroundColor,
    ),
    child:  Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        text,
        style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w900
        ),
      ),
    ),

  ),
);
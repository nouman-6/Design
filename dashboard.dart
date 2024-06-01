import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DesignDashBoard extends StatelessWidget {
  const DesignDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 0, 0, 0),
      body: bodySection(),
    );
  }

  //body section
  Widget bodySection() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 100.0,
        right: 10.0,
        bottom: 5.0,
        left: 10.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [timeSection(), imageSection(), buttonSection()],
      ),
    );
  }

  //Time section
  Widget timeSection() {
    return RichText(
      text: const TextSpan(
        text: "",
        children: [
          TextSpan(text: "11.53", style: TextStyle(fontSize: 40.0)),
          TextSpan(text: "AM"),
        ],
      ),
    );
  }

  // image Section
  Widget imageSection() {
    return Stack(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
            child: Image.asset(
              "assets/van.jpg",
              height: 150.0,
              width: Get.width,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Positioned(
          bottom: 20.0,
          right: 20.0,
          child: Text(
            "June 01,2024",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
          ),
        ),
      ],
    );
  }

  // 1st Buttons Section
  Widget buttonSection() {
    return Row(
      children: [
        Column(
          children: [
            buttons(Icons.color_lens_outlined),
            const SizedBox(
              height: 10.0,
            ),
            buttons(Icons.color_lens_outlined),
          ],
        ),
        const SizedBox(
          width: 20.0,
        ),
        Column(
          children: [
            buttons(Icons.color_lens_outlined),
            const SizedBox(
              height: 10.0,
            ),
            buttons(Icons.color_lens_outlined),
          ],
        ),
      ],
    );
  }

  // button card
  Widget buttons(IconData icon) {
    return Card(
      surfaceTintColor: Colors.white,
      color: const Color.fromARGB(136, 0, 0, 0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Icon(
          icon,
          color: Colors.white,
          size: 30.0,
        ),
      ),
    );
  }

  // text card
  Widget textCards() {
    return Card(
      child: Text(""),
    );
  }
}

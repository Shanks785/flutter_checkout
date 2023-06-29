import 'package:flutter/material.dart';

class Slides extends StatelessWidget {
  final String slideText;
  final String slideSubText;
  final IconData slideIcon;
  const Slides(
      {Key? key,
      required this.slideText,
      required this.slideSubText,
      required this.slideIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print(slideText + ' clicked');
      },
      child: Container(
        // color: const Color.fromARGB(255, 127, 143, 158),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 127, 143, 158),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 60,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Row(
          children: [
            SizedBox(width: 8),
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
              child: Icon(slideIcon, color: Colors.white)),
            SizedBox(width: 15),
            Column(
              children: [
                Text(slideText,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(height: 5),
                Text(slideSubText,
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

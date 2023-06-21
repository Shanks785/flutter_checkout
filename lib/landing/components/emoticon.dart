import 'package:flutter/material.dart';

class Emoticon extends StatelessWidget {
  final String emojiText;
  final String emojiIcon;
  const Emoticon({Key? key, required this.emojiText, required this.emojiIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: InkWell(
                onTap: () {
                  print(emojiText+' clicked');
                },
                child: Text(emojiIcon,
                style: TextStyle(fontSize: 20),),
              )),
          SizedBox(height: 5),
          Text(emojiText,
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
        ],
      ),
    );
  }
}

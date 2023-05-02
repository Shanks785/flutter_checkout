import 'package:flutter/material.dart';

class Emoticon extends StatefulWidget {
  const Emoticon({Key? key}) : super(key: key);

  @override
  State<Emoticon> createState() => _EmoticonState();
}

class _EmoticonState extends State<Emoticon> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: InkWell(
                  onTap: () { print('Happy');},
                  child: Text('😩'),
                )),
            Text('Happy',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)),
          ],
        ),
        // SizedBox(width: 10),
        Icon(Icons.emoji_events_sharp, color: Colors.white),
        Icon(Icons.emoji_events_sharp, color: Colors.white),
        Icon(Icons.emoji_events_sharp, color: Colors.white),
      ],
    ));
  }
}





// Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     height: 100,
//                     child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       itemCount: emoji.length, // Number of items in the loop
//                       itemBuilder: (context, index) {
//                         // Build the individual items inside the loop
//                         return Container(
//                           width: 80,
//                           // height: 100,
//                           child: Emoticon(
//                             emojiIcon: emoji[index].emojiIcon,
//                             emojiText: emoji[index].emojiText,
//                           ),
//                         );
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             )
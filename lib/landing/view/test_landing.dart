import 'package:flutter/material.dart';

import '../../new_structure/models/emoji.dart';
import '../components/emoticon.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  List<EmojiDataModel> emoji = [
    EmojiDataModel(id: 1, emojiIcon: '😩', emojiText: 'Sad'),
    EmojiDataModel(id: 2, emojiIcon: '😁', emojiText: 'Happy'),
    EmojiDataModel(id: 3, emojiIcon: '😡', emojiText: 'Angry'),
    EmojiDataModel(id: 4, emojiIcon: '🤑', emojiText: 'Rich'),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.blue.shade700,
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('Hi, Jarvis!',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                              Text('02 May 2023',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.notifications,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      // Search bar
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.white),
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.blue.shade200,
                        ),
                      ),
                      const SizedBox(height: 25),
                      // Emoticons
                      Text('How do you feel?',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      const SizedBox(height: 15),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 100,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount:
                                    emoji.length, // Number of items in the loop
                                itemBuilder: (context, index) {
                                  // Build the individual items inside the loop
                                  return Container(
                                    width: 77,
                                    // height: 100,
                                    child: Emoticon(
                                      emojiIcon: emoji[index].emojiIcon,
                                      emojiText: emoji[index].emojiText,
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  child: Container(
                    color: Colors.grey[100],
                    child: Padding(
                      padding: EdgeInsets.zero,
                      child: Column(children: [
                        Icon(Icons.horizontal_rule_rounded,
                            size: 50, color: Colors.grey.shade500),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text('Excercises',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Icon(Icons.more_horiz_outlined,
                                  size: 50, color: Colors.black)
                            ])
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.grey[100],
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(25),
              //   topRight: Radius.circular(25),
              // ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home, color: Colors.blue.shade700),
                Icon(Icons.window, color: Colors.blue.shade700),
                Icon(Icons.shopping_bag_rounded, color: Colors.blue.shade700),
                Icon(Icons.person, color: Colors.blue.shade700),
              ],
            ),
          )),
    );
  }
}

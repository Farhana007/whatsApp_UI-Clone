import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/info.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: messages[index]['sent'] == true
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: appBarColor, borderRadius: BorderRadius.circular(08)),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 06),
              child: Row(
                children: [
                  Text(messages[index]['text'].toString()),
                  const SizedBox(width: 08),
                  Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            messages[index]['time'].toString(),
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          SizedBox(
                              width: messages[index]['sent'] == true ? 06 : 0),
                          messages[index]['sent'] == true
                              ? Icon(
                                  Icons.done_all,
                                  size: 15,
                                  color: Colors.blue,
                                )
                              : SizedBox(),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

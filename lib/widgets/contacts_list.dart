import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/info.dart';
import '../screens/mobile_chat_screen.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: info.length,
          itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: MediaQuery.of(context).size.width < 900
                      ? () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: ((context) => MobileChatScreen(
                                  name: info[index]['name']!,
                                  url: info[index]['profilePic']!,
                                  lastSeen: info[index]['lastSeen']!)),
                            ),
                          );
                        }
                      : () {},
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(info[index]['profilePic']!),
                    ),
                    title: Text(info[index]['name']!),
                    subtitle: Text(info[index]['message']!),
                    trailing: Text(
                      info[index]['time']!,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: tabColor,
        onPressed: () {},
        child: const Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}

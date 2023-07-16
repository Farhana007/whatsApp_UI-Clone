import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/chat_list.dart';
import '../widgets/mobile_message_box_area.dart';

class MobileChatScreen extends StatelessWidget {
  final String name;
  final String url;
  final String lastSeen;
  const MobileChatScreen(
      {required this.name,
      required this.url,
      required this.lastSeen,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(url),
          ),
          title: Text(name),
          subtitle: Text(lastSeen),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: const [
          Expanded(
            child: ChatList(),
          ),
          MobileMessageBoxArea()
        ],
      ),
    );
  }
}

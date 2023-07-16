import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/contacts_list.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      //body

      body: Card(
        elevation: 0,
        color: Colors.transparent,
        child: ListTile(
          leading: Container(
            child: Icon(
              Icons.link_rounded,
              size: 30,
            ),
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: tabColor),
          ),
          title: Text('Create Call link'),
          subtitle: Text("Share a link for your WhatsApp call"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: tabColor,
        onPressed: () {},
        child: const Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      ),
    );
  }
}

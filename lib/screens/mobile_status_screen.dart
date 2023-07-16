import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/contacts_list.dart';

class StatuScreen extends StatelessWidget {
  const StatuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,

      //body part

      body: Card(
        color: Colors.transparent,
        elevation: 0,
        child: ListTile(
          leading: Stack(alignment: Alignment.bottomRight, children: [
            Container(
              child: Icon(
                Icons.person,
                size: 50,
              ),
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: const Color.fromARGB(255, 109, 133, 145)),
            ),
            Container(
              child: Icon(
                Icons.add,
              ),
              height: 27,
              width: 27,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 3,
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: tabColor),
            ),
          ]),
          title: Text("My status"),
          subtitle: Text("Tap to add status update"),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: tabColor,
        onPressed: () {},
        child: const Icon(
          Icons.camera_alt_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}

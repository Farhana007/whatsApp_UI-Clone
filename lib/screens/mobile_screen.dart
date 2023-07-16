import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/contacts_list.dart';
import 'mobile_calls_screen.dart';
import 'mobile_status_screen.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 3,
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Color.fromARGB(255, 239, 228, 228),
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.camera_alt_outlined,
                color: Color.fromARGB(255, 238, 234, 234),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 232, 225, 225),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Color.fromARGB(255, 228, 220, 220),
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            labelColor: tabColor,
            indicatorWeight: 2.5,
            unselectedLabelColor: Color.fromARGB(255, 241, 231, 231),
            tabs: [
              Tab(
                text: 'Chats',
              ),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: TabBarView(
          children: [ContactsList(), StatuScreen(), CallScreen()],
        ),
      ),
    );
  }
}

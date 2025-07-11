import 'package:flutter/material.dart';
import 'package:whatsapp_ui/calls.dart';
import 'package:whatsapp_ui/chats.dart';
import 'package:whatsapp_ui/communities.dart';
import 'package:whatsapp_ui/updates.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index = 0;
  List<Widget> pages = [chats(), updates(), communities(), calls()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text("WhatsApp"),
        centerTitle: true,
        actions: [
          Icon(Icons.qr_code_scanner),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
          SizedBox(width: 20),
          Icon(Icons.camera_alt),
          SizedBox(width: 20),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.chat),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        selectedItemColor: Colors.black,unselectedItemColor: Colors.black,showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats",backgroundColor: Colors.white),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: "Updates"),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: "Communities",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Calls"),
        ],
      ),body: pages[index],
    );
  }
}

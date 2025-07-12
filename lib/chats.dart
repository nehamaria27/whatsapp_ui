import 'package:flutter/material.dart';

class chats extends StatelessWidget {
  const chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      title: Text("WhatsApp"),
      centerTitle: false,
      actions: [
        Icon(Icons.qr_code_scanner),
        SizedBox(width: 20),
        Icon(Icons.search),
        SizedBox(width: 20),
        Icon(Icons.more_vert),
        SizedBox(width: 20),
      ],
    ),
      body: ListView(
        children: [
      TextField( decoration: InputDecoration(
        hintText: 'Search',
        prefixIcon: Icon(Icons.search),
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
      ),
    ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://www.shutterstock.com/image-vector/user-profile-icon-vector-avatar-600nw-2220431045.jpg",
              ),
            ),title: Text("user"),subtitle: Text("hy"),trailing: Text("10:15"),
          ),
        ],
      ),
    );
  }
}

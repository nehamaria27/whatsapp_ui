import 'package:flutter/material.dart';
class updates extends StatelessWidget {
  const updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      title: Text("Updates"),
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
        children: [Text("Status"),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                "https://www.shutterstock.com/image-vector/user-profile-icon-vector-avatar-600nw-2220431045.jpg",
              ),
            ),title: Text("New communities"),
          ),
        ],
      ),
    );
  }
}

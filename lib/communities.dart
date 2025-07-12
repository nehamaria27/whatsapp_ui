import 'package:flutter/material.dart';
class communities extends StatelessWidget {
  const communities({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold( appBar: AppBar(
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
      title: Text("Communities"),
      centerTitle: false,
      actions: [
        Icon(Icons.qr_code_scanner),
        SizedBox(width: 20),
        Icon(Icons.more_vert),
        SizedBox(width: 20),
      ],
    ),);
  }
}

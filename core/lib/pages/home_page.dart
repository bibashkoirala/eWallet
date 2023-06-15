import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Your home page content here
      backgroundColor: Colors.grey[300],
      body: Column(
        childern : [
            //appbar
          Row(

            childern: [Text('My cards'),
            ]
          )
            //cards

            //3 buttons -> send + pay + bills

            //column -> stats + transaction


        ]
      ),
    );
  }
}

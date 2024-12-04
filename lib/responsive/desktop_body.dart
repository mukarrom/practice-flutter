import 'package:flutter/material.dart';
import 'package:myapp/responsive/yt_first_row.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text('D E S K T O P'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          const Expanded(
            child: YtFirstRow(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.deepPurple[300],
              width: 200,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myapp/responsive/yt_first_row.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text('M O B I L E'),
        centerTitle: true,
      ),
      body: const YtFirstRow(),
    );
  }
}

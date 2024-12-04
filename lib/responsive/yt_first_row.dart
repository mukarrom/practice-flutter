
import 'package:flutter/material.dart';

class YtFirstRow extends StatelessWidget {
  const YtFirstRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // youtube video
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: Container(
              color: Colors.deepPurple[400],
              child: const Center(
                child: Text(
                  "YouTube Video",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
    
        // comment section & recommended videos
        Expanded(
          child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.deepPurple[300],
                height: 120,
                child: const Center(
                  child: Text("Suggested Video"),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

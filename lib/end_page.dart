import 'package:flutter/material.dart';

class EndPage extends StatelessWidget {
  const EndPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("end page"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text("this is the end page"),
          ],
        ),
      ),
    );
  }
}

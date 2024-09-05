import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_page_lifecycle/flutter_page_lifecycle.dart';

import 'end_page.dart';

class OrientationPage extends StatefulWidget {
  const OrientationPage({super.key});

  @override
  State<OrientationPage> createState() => _OrientationPageState();
}

class _OrientationPageState extends State<OrientationPage> {
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print("deactivate");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    return PageLifecycle(
      stateChanged: (apper) {
        if (apper) {
          SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight,DeviceOrientation.portraitUp]);
        } else {
          SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("landscape page"),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => EndPage()));
                  },
                  child: Text("jump to end page"))
            ],
          ),
        ),
      ),
    );
  }
}

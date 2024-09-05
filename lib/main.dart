import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_page_lifecycle/flutter_page_lifecycle.dart';
import 'package:get/get.dart';

import 'orientation_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> routePages = [
    OrientationPage()
  ];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: Text("home"),),
          body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => routePages[index]),
                    child: Text(routePages[index].toString()),),
                ),
              );
            },
            itemCount:routePages.length),
        ));
  }
}

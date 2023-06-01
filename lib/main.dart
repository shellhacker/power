import 'package:demo/view/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'controller/home_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeController>(create: (_) => HomeController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            // primarySwatch: Colors.blue,
            ),
        home: Hompage(),
      ),
    );
  }
}

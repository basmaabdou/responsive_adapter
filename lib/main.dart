import 'package:flutter/material.dart';
import 'package:responsive/desktop/desktop_screen.dart';
import 'package:responsive/mobile/mobile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: Colors.teal
      ),
      // home: LayoutBuilder(
      //   builder: (BuildContext context, BoxConstraints constraints) {
      //     if(constraints.minWidth.toInt() <= 530) {
      //       return const MobileScreen();
      //     }
      //     return const DesktopScreen();
      //   },
      // ),
      home: Builder(
        builder: (BuildContext context) {
          //by mediaQuery
          if(MediaQuery.of(context).size.width <= 530) {
            return const MobileScreen();
          }
          return const MediaQuery(
              data: MediaQueryData(
                textScaleFactor: 1.5
              ),
              child:  DesktopScreen()
          );
        },
      ),
    );
  }
}


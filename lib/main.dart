import 'package:core_flutter_exam/view/screen/filterpage.dart';
import 'package:core_flutter_exam/view/screen/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Website());
}

class Website extends StatelessWidget {
  const Website({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
         '/':(context) => Homescreen(),
        '/filter':(context) => Filterpage(),
      },
    );
  }
}



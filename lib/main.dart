

import 'package:flutter/material.dart';
import 'package:quiz/splashScreen.dart' show Mycard;

void main(){
  runApp(mainFile());
}

class mainFile extends StatefulWidget {
  const mainFile({super.key});

  @override
  State<mainFile> createState() => _mainFileState();
}

class _mainFileState extends State<mainFile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Mycard(),
    );
  }
}

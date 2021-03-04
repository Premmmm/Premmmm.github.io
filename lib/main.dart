import 'package:flutter/material.dart';
import 'package:portfolio/PortfolioPage.dart';
import 'package:universal_io/io.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PREM RAJ',
      debugShowCheckedModeBanner: false,
      theme: Platform.isWindows || Platform.isMacOS
          ? ThemeData.light()
          : ThemeData.dark(),
      home: PortfolioPage(),
    );
  }
}

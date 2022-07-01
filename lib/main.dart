import 'package:flutter/material.dart';

import 'feature/home_page/view/homepage_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, title: 'Material App', home: HomePage());
  }
}

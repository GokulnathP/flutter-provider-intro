import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './HomePage.dart';
import './count.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Count(),
        ),
      ],
      child: MaterialApp(
        title: 'Welcome to flutter',
        home: HomePage(),
      ),
    );
  }
}

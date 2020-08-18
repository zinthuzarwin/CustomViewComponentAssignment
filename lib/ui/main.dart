
import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:customer_view_components_assignment/ui/view/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OMP Dashboard',
   theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: LightColors.DarkBlue,
              displayColor: LightColors.DarkBlue,
              fontFamily: 'Quicksand'
            ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


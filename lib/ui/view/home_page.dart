import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:customer_view_components_assignment/widgets/show_percentage_widget.dart';
import 'package:customer_view_components_assignment/widgets/task_indicator_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "OMP Dashboard",
            style: TextStyle(
                color: LightColors.DarkBlue,
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
                fontFamily: 'Quicksand'),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: LightColors.DarkBlue),
              onPressed: () {
                Navigator.pop(context);
              }),
          brightness: Brightness.light,
          actions: [_buildAppBarButton(context)],
        ),
        body: Stack(
          children: [
            ShowPercentageWidget(),
            TaskIndicatorWidget()
          ],
        ));
  }
}

Widget _buildAppBarButton(BuildContext context) {
  return IconButton(
    iconSize: 110,
    icon: FlatButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      color: LightColors.Orange,
      onPressed: () {},
      child: Text('In progress',
          style: TextStyle(
              fontSize: 13,
              color: Colors.white,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w300)),
    ),
    onPressed: () {},
  );
}

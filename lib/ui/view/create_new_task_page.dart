import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:customer_view_components_assignment/widgets/create_task.dart';
import 'package:flutter/material.dart';

class CreateNewTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: LightColors.DarkBlue.withAlpha(410),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "A Create New Task",
            style: TextStyle(
                color: LightColors.White.withOpacity(0.7),
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
                fontFamily: 'Quicksand'),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios,
                  color: LightColors.White.withOpacity(0.7)),
              onPressed: () {
                Navigator.pop(context);
              }),
          brightness: Brightness.light,
          actions: [
            FlatButton(
              onPressed: () {},
              child: Text('Save',
                  style: TextStyle(
                      fontSize: 16,
                      color: LightColors.Green.withOpacity(0.7),
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w300)),
            )
          ],
        ),
        body: CreateTaskWidget()
        );
  }
}

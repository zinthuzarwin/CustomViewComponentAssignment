import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:customer_view_components_assignment/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class TaskProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.transparent),
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.only(top: 50, right: 20.0),
        alignment: Alignment.topRight,
        child: FloatingActionButton(
            child: Icon(
              Icons.clear,
              color: LightColors.Black,
              size: 25,
            ),
            backgroundColor: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.fill)),
            foregroundDecoration:
                BoxDecoration(color: LightColors.DarkBlue.withAlpha(500)),
          ),
          ProfileCard()
        ],
      ),
    );
  }
}

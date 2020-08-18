import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';

class ImageStackerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            margin: EdgeInsets.only(left: 35.0),
            width: 45,
            height: 45,
            child: Stack(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: LightColors.Purple,
                    backgroundImage:
                        ExactAssetImage('assets/images/avatar3.png'),
                  ),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: new Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                )
              ],
            )),
        Container(
            margin: EdgeInsets.only(left: 70.0),
            width: 45,
            height: 45,
            child: Stack(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: LightColors.DarkBlue,
                    backgroundImage:
                        ExactAssetImage('assets/images/avatar1.png'),
                  ),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: new Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                )
              ],
            )),
        Container(
            margin: EdgeInsets.only(left: 107.0),
            width: 45,
            height: 45,
            child: Stack(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: LightColors.White,
                    backgroundImage: ExactAssetImage('assets/images/more.png'),
                  ),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: new Border.all(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                )
              ],
            )),
      ],
    );
  }
}

import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 260,
        decoration: BoxDecoration(
          color: LightColors.White,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Container(
          margin: EdgeInsets.only(left: 30, top: 20),
          child: TextField(
            keyboardType: TextInputType.text,
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w300,
                color: LightColors.White.withOpacity(0.7)),
            maxLines: 1,
            decoration: InputDecoration(
                labelText: 'Description',
                labelStyle: TextStyle(color: LightColors.Black),
                border: InputBorder.none),
          ),
        ),
      ),
      Row(children: [
        Container(
            width: 290,
            padding: EdgeInsets.only(left: 30, top: 70, right: 20),
            child: Divider(
              height: 4,
              color: LightColors.Black,
            )),
        Container(
            margin: EdgeInsets.only(top: 30),
            width: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    width: 1, color: LightColors.Green.withOpacity(0.3))),
            child: IconButton(
              icon: Icon(
                Icons.attach_file,
                size: 25,
                color: LightColors.Green,
              ),
              onPressed: () {},
            )),
      ]),
      Container(
        margin: EdgeInsets.only(left: 30, top: 100.0),
        child: Text(
          'ATTACHMENTS',
          style: TextStyle(
              fontSize: 12,
              color: LightColors.Grey,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.w300),
        ),
      ),
      Row(children: [
        Container(
            margin: EdgeInsets.only(left: 30.0, top: 122),
            width: 45,
            height: 45,
            child: Stack(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: LightColors.LightLavender,
                    backgroundImage: ExactAssetImage('assets/images/logo.png'),
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
        Stack(children: [
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 10, top: 122.0),
              child: Text(
                'Reference_1',
                style: TextStyle(
                    fontSize: 12,
                    color: LightColors.Black,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 75, top: 122.0),
              child: Text(
                '168 KB',
                style: TextStyle(
                    fontSize: 12,
                    color: LightColors.Grey,
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w300),
              ),
            ),
          ]),
          Container(
              width: 210,
              padding: EdgeInsets.only(left: 0, top: 150),
              child: LinearPercentIndicator(
                fillColor: Colors.transparent,
                percent: 0.85,
                lineHeight: 4,
                progressColor: LightColors.Green.withOpacity(0.7),
                backgroundColor: LightColors.Green.withOpacity(0.1),
              )),
        ]),
        Container(
            margin: EdgeInsets.only(top: 120),
            width: 45,
            decoration: BoxDecoration(
                color: LightColors.LightLavender.withOpacity(0.7),
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                    width: 1,
                    color: LightColors.LightLavender.withOpacity(0.3))),
            child: IconButton(
              icon: Icon(
                Icons.clear,
                size: 25,
                color: LightColors.Black,
              ),
              onPressed: () {},
            )),
      ]),
      Container(
        width: 320,
        height: 40,
          margin: EdgeInsets.only(left: 20,top: 200,right: 20),
          child: RaisedButton(
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              color: LightColors.Green.withOpacity(0.9),
              child: Text('CREATE TASK',
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w300)),
              onPressed: () {}))
    ]);
  }
}

import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActiveProjectList extends StatelessWidget {
  final String loadingTime;
  final String projectName;
  final bool isFinished;
  final String profileImg;
  final String subtitle;
  final int amtComment;
  final int amtAttach;

  ActiveProjectList(
    this.loadingTime,
    this.projectName,
    this.isFinished,
    this.profileImg,
    this.subtitle,
    this.amtComment,
    this.amtAttach,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 120,
      padding: EdgeInsets.only(left: 5, right: 6, top: 5, bottom: 0),
      child: Card(
        color: LightColors.White,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0))),
        child: Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            Padding(padding: EdgeInsets.only(left: 10)),
            SizedBox(height: 10.0),
            this.isFinished != true
                ? Text(
                    'In progress',
                    style: TextStyle(
                        fontSize: 12.0,
                        color: LightColors.Orange,
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Quicksand'),
                  )
                : Text(
                    'Done  \t',
                    style: TextStyle(
                        fontSize: 12.0,
                        color: LightColors.Purple,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Quicksand'),
                  ),
            SizedBox(
              width: 200.0,
              height: 30.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                loadingTime,
                //'3h',
                style: TextStyle(
                    fontSize: 12.0,
                    color: LightColors.Grey,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Quicksand'),
              ),
            ),
          ]),
          Container(
            padding: EdgeInsets.only(left: 10.0),
            child: Text(
              //'Contact page',
              projectName,
              style: TextStyle(
                  fontSize: 14.0,
                  color: LightColors.Black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Quicksand'),
            ),
          ),
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(padding: EdgeInsets.only(left: 0)),
            Stack(
              children: [
                Container(
                  child: FlatButton.icon(
                    icon: Icon(
                      FontAwesomeIcons.commentDots,
                      color: LightColors.Grey.withOpacity(0.5),
                      size: 20,
                    ),
                    label: Text(
                      amtComment.toString(),
                      //'15', //add count of comment
                      style: TextStyle(
                          fontSize: 12.0,
                          color: LightColors.Black,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Quicksand'),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 40.0),
                  child: FlatButton.icon(
                    icon: Icon(
                      Icons.attach_file,
                      color: LightColors.Grey.withOpacity(0.5),
                      size: 20,
                    ),
                    label: Stack(
                      children: [
                        Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                    color: LightColors.Orange,
                                    borderRadius: BorderRadius.circular(5.0)))),
                        Text(
                          //'9', 
                          amtAttach.toString(),//add count of comment
                          style: TextStyle(
                              fontSize: 12.0,
                              color: LightColors.Black,
                              fontWeight: FontWeight.w300,
                              fontFamily: 'Quicksand'),
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            SizedBox(width: 80.0),
            Container(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                subtitle,
                //'N^2 163', //'${pow(2,2)} 163',
                style: TextStyle(
                    fontSize: 12.0,
                    color: LightColors.Black,
                    fontWeight: FontWeight.w300,
                    fontFamily: 'Quicksand'),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              //margin: EdgeInsets.fromLTRB(130, 60, 120, 50),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: LightColors.DarkBlue,
                backgroundImage:
                    ExactAssetImage(profileImg), //'assets/images/avatar1.png'),
              ),
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                border: new Border.all(
                  color: Colors.white,
                  width: 4.0,
                ),
              ),
            )
          ]),
        ])),
      ),
    );
  }
}

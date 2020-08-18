import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:customer_view_components_assignment/ui/view/create_new_task_page.dart';
import 'package:customer_view_components_assignment/widgets/tab_bar_widget.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 150.0),
          decoration: BoxDecoration(
            color: LightColors.White,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: //const EdgeInsets.all(10.0),
                      EdgeInsets.only(
                          top: 10.0, left: 0, right: 0, bottom: 10.0),
                  child: Column(children: [
                    Row(
                      children: [
                        Expanded(
                            child: ListTile(
                          title: Text(
                            'Closed tasks  \t  ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12.0,
                                color: LightColors.Grey,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Quicksand'),
                          ),
                          subtitle: Text(
                            '361',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16.0,
                                color: LightColors.Black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand'),
                          ),
                        )),
                        Expanded(
                            child: ListTile(
                          title: Text(
                            '  \t Open tasks',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12.0,
                                color: LightColors.Grey,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Quicksand'),
                          ),
                          subtitle: Text(
                            '3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16.0,
                                color: LightColors.Black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Quicksand'),
                          ),
                        ))
                      ],
                    ),
                    Text(
                      'Zachary Butler',
                      style: TextStyle(
                          fontSize: 21.0,
                          color: LightColors.Black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Quicksand'),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'UI Designer',
                      style: TextStyle(
                          fontSize: 14.0,
                          color: LightColors.Grey,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Quicksand'),
                    ),
                    SizedBox(height: 16.0),
                    Container(
                        height: 40.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                width: 45,
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 1,
                                        color: LightColors.Green.withOpacity(
                                            0.3))),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.share,
                                    color: LightColors.Green,
                                  ),
                                  onPressed: () {},
                                )),
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(left: 0, right: 0),
                                child: RaisedButton(
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    color: LightColors.Green.withOpacity(0.9),
                                    child: Text(' \t MESSAGE  \t ',
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Colors.white,
                                            fontFamily: 'Quicksand',
                                            fontWeight: FontWeight.w300)),
                                    onPressed: () {}),
                              ),
                            ),
                            Container(
                                width: 45,
                                padding: EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    border: Border.all(
                                        width: 1,
                                        color: LightColors.Green.withOpacity(
                                            0.3))),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.event_available,
                                    size: 25,
                                    color: LightColors.Green,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                CreateNewTaskPage()));
                                  },
                                )),
                          ],
                        )),
                    Container(
                      padding: EdgeInsets.all(0.0),
                      child: TabBarWidget(),
                    ),
                  ]),
                )
              ]),
        ),
        Stack(
          children: [
            Container(
              width: 110,
              height: 110,
              margin: EdgeInsets.fromLTRB(130, 100, 120, 50),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: LightColors.DarkBlue,
                backgroundImage: ExactAssetImage('assets/images/avatar1.png'),
              ),
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                border: new Border.all(
                  color: LightColors.White,
                  width: 4.0,
                ),
              ),
            ),
            Positioned(
                right: 130,
                bottom: 60,
                child: Container(
                  child: Icon(Icons.brightness_1,
                      size: 15, color: LightColors.Green),
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border:
                          new Border.all(color: LightColors.White, width: 2.0)),
                ))
          ],
        ),
      ],
    );
  }
}

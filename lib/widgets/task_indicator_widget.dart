import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class TaskIndicatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 200.0),
      decoration: BoxDecoration(
        color: LightColors.LightLavender,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 20.0, top: 10.0)),
                Text(
                  'Data',
                  style: TextStyle(
                      fontSize: 14,
                      color: LightColors.DarkBlue.withOpacity(0.3),
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15.0, left: 12.0, right: 10.0),
                  child: StepProgressIndicator(
                    padding: 4.0,
                    direction: Axis.vertical,
                    totalSteps: 5,
                    currentStep: 5,
                    selectedColor: LightColors.Grey.withOpacity(0.5),
                    size: 2,
                    unselectedColor: Colors.yellow,
                  ),
                ),
                Text(
                  'Tasks',
                  style: TextStyle(
                      fontSize: 15,
                      color: LightColors.DarkBlue.withOpacity(0.3),
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  margin: EdgeInsets.only(left: 100.0),
                  child: DropdownButton<String>(
                    hint: Text(
                      'Show in days',
                      style: TextStyle(
                          fontSize: 14,
                          color: LightColors.DarkBlue.withOpacity(0.3),
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w500),
                    ),
                    underline: Container(height: 0, color: LightColors.White),
                    elevation: 0,
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ],
            ),
            Row(
              children: [
                _tasksIndicator(
                    context, '24.19', LightColors.Orange, LightColors.Grey.withOpacity(0.3), LightColors.White),
                _activeTask(context,"#Design","Contact page",false,false,1,'N^2 163',3,5),
              ],
            ),
            Row(
              children: [
                _tasksIndicator(context, '', LightColors.Purple,
                    LightColors.White, LightColors.Grey.withOpacity(0.3)),//Grey.withOpacity(0.3)),
                 _activeTask(context,"#Design","Calculator page",true,false,2,'N^2 158',8,2),
              ],
            ),
            Row(
              children: [
                _tasksIndicator(context, ' 23.19', LightColors.Grey.withOpacity(0.2),
                    LightColors.Grey.withOpacity(0.3), LightColors.Grey.withOpacity(0.3)),
                 _activeTask(context,"#Frontend","Technical task",false,true,1,'N^2 157',4,8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _tasksIndicator(
    BuildContext context, String date, Color avatarColor, Color lineColor1, Color lineColor2) {
  return Column(children: [
    Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 16.0)),
        date == ''
            ? SizedBox(width: 34.0)
            : Text(
                date ,
                //'24.19',
                style: TextStyle(
                    color: LightColors.DarkBlue.withOpacity(0.7),
                    fontFamily: 'Quicksand'),
              ),
        SizedBox(width: 9.0),
        Column(
          children: [
            Stack(
              children: [
                Padding(padding: EdgeInsets.only(left: 0.0)),
                Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [lineColor1, lineColor1],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 2.0,
                  height: 40.0,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 0.0),
              child: Icon(Icons.brightness_1,
                  size: 13, color: avatarColor), //LightColors.Orange),
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  border: new Border.all(color: LightColors.White, width: 2.0)),
            ),
            Stack(
              children: [
                Padding(padding: EdgeInsets.only(left: 0.0)),
                Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [lineColor2, lineColor2],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 2.0,
                  height: 27.0,
                ),
              ],
            ),
            Stack(
              children: [
                Padding(padding: EdgeInsets.only(left: 1.0)),
                Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [lineColor2, lineColor2],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 2.0,
                  height: 25.0,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ]);
}

Widget _activeTask(BuildContext context, String department, String projectName, bool isFinished, bool isReview, int noOfDeveloper, String subtitle, int amtComment,int amtAttach,) {
  return Container(
    child: Card(
      color: LightColors.White,
      elevation: 1.0,
      shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(Radius.circular(10.0))),
      child: Container(
          width: 264,
          height: 100,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(children: [
              Padding(
                  padding: EdgeInsets.only(
                left: 10,
              )),
              //SizedBox(height: 10.0),
              isReview == true
              ? Text(
                'Review \t',
                style: TextStyle(
                    fontSize: 12.0,
                    color: LightColors.Grey.withOpacity(0.5),
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand'),
              )
              : isFinished == true
              ? Text(
                'Done \t',
                style: TextStyle(
                    fontSize: 12.0,
                    color: LightColors.Purple,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand'),
              )
              : Text(
                'In Progress',
                style: TextStyle(
                    fontSize: 12.0,
                    color: LightColors.Orange,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand'),
              ),
              SizedBox(
                width: 100.0,
                height: 30.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  department,
                  //'#Design',
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
                //'Create Mobile Version',
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
              Stack(children: [
                Container(
                child: FlatButton.icon(
                icon: Icon(
                  FontAwesomeIcons.commentDots,
                  color: LightColors.Grey.withOpacity(0.5),
                  size: 20,
                ),
                label: Text(
                  //'15',
                  amtComment.toString(), //add count of comment
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
                            margin: EdgeInsets.only(bottom: 0.0),
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
              ],),
              SizedBox(width: 10),
              Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Text(
                  subtitle,
                  //'N^2 156', //'${pow(2,2)} 163',
                  style: TextStyle(
                      fontSize: 12.0,
                      color: LightColors.Black,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Quicksand'),
                ),
              ),
              noOfDeveloper == 1
              ?  Container(
                        child: CircleAvatar(
                      radius: 20,
                      backgroundColor: LightColors.DarkBlue,
                      backgroundImage: ExactAssetImage('assets/images/avatar1.png'),
                    ),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border: new Border.all(
                        color: Colors.white,
                        width: 4.0,
                      ),
                    ), 
                      )
              : Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0.0),
                    width: 40,
                    height: 40,
                    child: Stack(children: [
                      Container(
                        child: CircleAvatar(
                      radius: 30,
                      backgroundColor: LightColors.Orange.withOpacity(0.3),
                      backgroundImage: ExactAssetImage('assets/images/avatar4.png'),
                    ),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border: new Border.all(
                        color: Colors.white,
                        width: 4.0,
                      ),
                    ), 
                      )
                      
                    ],)
                   
                  ),
                   Container(
                    margin: EdgeInsets.only(left: 25.0),
                    width: 40,
                    height: 40,
                    child: Stack(children: [
                      Container(
                        child: CircleAvatar(
                      radius: 30,
                      backgroundColor: LightColors.Purple,
                      backgroundImage: ExactAssetImage('assets/images/avatar3.png'),
                    ),
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      border: new Border.all(
                        color: Colors.white,
                        width: 4.0,
                      ),
                    ), 
                      )
                      
                    ],)
                   
                  ),
                ],
              ),
            ]),
          ])),
    ),
  );
}

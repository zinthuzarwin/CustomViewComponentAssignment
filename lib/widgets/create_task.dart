import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:customer_view_components_assignment/widgets/bottom_sheet_widget.dart';
import 'package:customer_view_components_assignment/widgets/date_time_picker_widget.dart';
import 'package:customer_view_components_assignment/widgets/image_stacker_widget.dart';
import 'package:customer_view_components_assignment/widgets/filter_chip_widget.dart';
import 'package:flutter/material.dart';

class CreateTaskWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30, top: 10.0),
              child: Text(
                'CLIENT',
                style: TextStyle(
                    fontSize: 14,
                    color: LightColors.Grey.withOpacity(0.3),
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w300),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(left: 30.0, top: 20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: LightColors.White,
                    backgroundImage: ExactAssetImage('assets/images/logo.png'),
                  ),
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    border: new Border.all(
                      color: LightColors.White,
                      width: 2.0,
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  margin: EdgeInsets.only(left: 20.0),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    hint: Text(
                      'Awsmd Team',
                      style: TextStyle(
                          fontSize: 14,
                          color: LightColors.White.withOpacity(0.7),
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.w500),
                    ),
                    underline: Container(
                        height: 1, color: LightColors.Grey.withOpacity(0.3)),
                    elevation: 0,
                    items: <String>['A Team', 'B Team', 'C Team', 'D Team']
                        .map((String value) {
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
            Container(
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
                    labelText: 'PROJECT NAME',
                    labelStyle:
                        TextStyle(color: LightColors.Grey.withOpacity(0.3)),
                    border: InputBorder.none
                    // focusedBorder: UnderlineInputBorder(
                    //     borderSide:
                    //         BorderSide(color: LightColors.White.withOpacity(0.3))),
                    // border: UnderlineInputBorder(
                    //     borderSide: BorderSide(
                    //         color: LightColors.White.withOpacity(0.7)))
                    ),
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 30, right: 20, bottom: 10),
                child: Divider(
                  color: LightColors.White.withOpacity(0.7),
                )),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20.0),
              child: Text(
                'PROJECT DATE',
                style: TextStyle(
                    fontSize: 14,
                    color: LightColors.Grey.withOpacity(0.3),
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 0.0),
              child: DateTimePickerWidget()),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20.0),
              child: Text(
                'ASSIGNEE',
                style: TextStyle(
                    fontSize: 14,
                    color: LightColors.Grey.withOpacity(0.3),
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, top: 15.0),
              child: ImageStackerWidget()
            ),
             Container(
              margin: EdgeInsets.only(left: 30, top: 20.0),
              child: Text(
                'CATEGORY',
                style: TextStyle(
                    fontSize: 14,
                    color: LightColors.Grey.withOpacity(0.3),
                    fontFamily: 'Quicksand',
                    fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 0.0),
              child: FilterChipsWidget()),
            Container(
              margin: EdgeInsets.only(left: 0, top: 10.0, right: 0),
              child: BottomSheetWidget())
          ]),
    );
  }
}

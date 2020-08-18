import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class DateTimePickerWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DateTimePickerWidgetState();
  }
}

class _DateTimePickerWidgetState extends State<DateTimePickerWidget> {
  String _date1 = "Dec 24, 2019";
  String _date2 = "Dec 30, 2019";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(children: <Widget>[
                  Icon(
                    Icons.date_range,
                    size: 16.0,
                    color: LightColors.White.withOpacity(0.7),
                  ),
                  Text(
                    " $_date1",
                    style: TextStyle(
                        color: LightColors.White.withOpacity(0.7),
                        fontSize: 14,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w300),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 0),
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: LightColors.White.withOpacity(0.3),
                          ),
                          onPressed: () {
                               DatePicker.showDatePicker(context,
                      theme: DatePickerTheme(
                        containerHeight: 210.0,
                      ),
                      showTitleActions: true,
                      minTime: DateTime(2000, 1, 1),
                      maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                    print('confirm $date');
                    _date1 = '${date.year} - ${date.month} - ${date.day}';
                    setState(() {});
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                          })),
                ]),
              ),
              Container(
                  width: 130,
                  child: Divider(
                    color: LightColors.White.withOpacity(0.7),
                  )),
            ]),
        Container(
            margin: EdgeInsets.only(bottom: 10),
            width: 10,
            child: Divider(
              color: LightColors.White.withOpacity(0.7),
            )),
        SizedBox(width: 15),
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(children: <Widget>[
                  Icon(
                    Icons.date_range,
                    size: 16.0,
                    color: LightColors.White.withOpacity(0.7),
                  ),
                  Text(
                    " $_date2",
                    style: TextStyle(
                        color: LightColors.White.withOpacity(0.7),
                        fontSize: 14,
                        fontFamily: 'Quicksand',
                        fontWeight: FontWeight.w300),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 0),
                      child: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: LightColors.White.withOpacity(0.3),
                          ),
                          onPressed: () {
                               DatePicker.showDatePicker(context,
                      theme: DatePickerTheme(
                        containerHeight: 210.0,
                      ),
                      showTitleActions: true,
                      minTime: DateTime(2000, 1, 1),
                      maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                    print('confirm $date');
                    _date2 = '${date.year} - ${date.month} - ${date.day}';
                    setState(() {});
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                          })),
                ]),
              ),
              Container(
                  width: 130,
                  child: Divider(
                    color: LightColors.White.withOpacity(0.7),
                  )),
            ]),
      ]),
    );
  }
}

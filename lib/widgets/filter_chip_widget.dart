import 'package:customer_view_components_assignment/theme/colors/light_colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FilterChipsWidget extends StatefulWidget {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;

  @override
  State<StatefulWidget> createState() {
    return _FilterChipsWidgetState();
  }
}

class _FilterChipsWidgetState extends State<FilterChipsWidget> {

   @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       FilterChip(
         backgroundColor: LightColors.White.withOpacity(0.3),
          label: Text('Design'),
          labelStyle:
              TextStyle(color: widget.isSelected1 ? LightColors.White : LightColors.Black, fontFamily: 'Quicksand', fontWeight: FontWeight.bold),
          selected: widget.isSelected1,
          onSelected: (bool selected) {
            setState(() {
              widget.isSelected1 = !widget.isSelected1;
            });
          },
          selectedColor: LightColors.Green,//Theme.of(context).,
          checkmarkColor: LightColors.White,
        ),
        SizedBox(
          width: 10,
        ),
         FilterChip(
         backgroundColor: LightColors.White.withOpacity(0.3),
          label: Text('Frontend'),
          labelStyle:
              TextStyle(color: widget.isSelected2 ? LightColors.White : LightColors.Black, fontFamily: 'Quicksand', fontWeight: FontWeight.bold),
          selected: widget.isSelected2,
          onSelected: (bool selected) {
            setState(() {
              widget.isSelected2 = !widget.isSelected2;
            });
          },
          selectedColor: LightColors.Green,//Theme.of(context).,
          checkmarkColor: LightColors.White,
        ),
        SizedBox(
          width: 10,
        ),
        FilterChip(
         backgroundColor: LightColors.White.withOpacity(0.3),
          label: Text('Backend'),
          labelStyle:
              TextStyle(color: widget.isSelected3 ? LightColors.White : LightColors.Black, fontFamily: 'Quicksand', fontWeight: FontWeight.bold),
          selected: widget.isSelected3,
          onSelected: (bool selected) {
            setState(() {
              widget.isSelected3 = !widget.isSelected3;
            });
          },
          selectedColor: LightColors.Green,//Theme.of(context).,
          checkmarkColor: LightColors.White,
        ),
      ],
    );
  }
}

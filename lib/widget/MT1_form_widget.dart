import 'package:flutter/material.dart';

class MT1FormWidget extends StatelessWidget {
  final String? MT1_R_Winding_Temp;
  final String? MT1_R_Oil_Temp;
  final String? MT1_R_Core_1_Temp;
  final String? MT1_R_Core_2_Temp;
  final String? MT1_Y_Winding_Temp;
  final String? MT1_Y_Oil_Temp;
  final String? MT1_Y_Core_1_Temp;
  final String? MT1_Y_Core_2_Temp;
  final String? MT1_B_Winding_Temp;
  final String? MT1_B_Oil_Temp;
  final String? MT1_B_Core_1_Temp;
  final String? MT1_B_Core_2_Temp;

  final ValueChanged<String> onChangedMT1_R_Winding_Temp;
  final ValueChanged<String> onChangedMT1_R_Oil_Temp;
  final ValueChanged<String> onChangedMT1_R_Core_1_Temp;
  final ValueChanged<String> onChangedMT1_R_Core_2_Temp;
  final ValueChanged<String> onChangedMT1_Y_Winding_Temp;
  final ValueChanged<String> onChangedMT1_Y_Oil_Temp;
  final ValueChanged<String> onChangedMT1_Y_Core_1_Temp;
  final ValueChanged<String> onChangedMT1_Y_Core_2_Temp;
  final ValueChanged<String> onChangedMT1_B_Winding_Temp;
  final ValueChanged<String> onChangedMT1_B_Oil_Temp;
  final ValueChanged<String> onChangedMT1_B_Core_1_Temp;
  final ValueChanged<String> onChangedMT1_B_Core_2_Temp;

  const MT1FormWidget({
    Key? key,
    this.MT1_R_Winding_Temp = '',
    this.MT1_R_Oil_Temp = '',
    this.MT1_R_Core_1_Temp = '',
    this.MT1_R_Core_2_Temp = '',
    this.MT1_Y_Winding_Temp = '',
    this.MT1_Y_Oil_Temp = '',
    this.MT1_Y_Core_1_Temp = '',
    this.MT1_Y_Core_2_Temp = '',
    this.MT1_B_Winding_Temp = '',
    this.MT1_B_Oil_Temp = '',
    this.MT1_B_Core_1_Temp = '',
    this.MT1_B_Core_2_Temp = '',
    required this.onChangedMT1_R_Winding_Temp,
    required this.onChangedMT1_R_Oil_Temp,
    required this.onChangedMT1_R_Core_1_Temp,
    required this.onChangedMT1_R_Core_2_Temp,
    required this.onChangedMT1_Y_Winding_Temp,
    required this.onChangedMT1_Y_Oil_Temp,
    required this.onChangedMT1_Y_Core_1_Temp,
    required this.onChangedMT1_Y_Core_2_Temp,
    required this.onChangedMT1_B_Winding_Temp,
    required this.onChangedMT1_B_Oil_Temp,
    required this.onChangedMT1_B_Core_1_Temp,
    required this.onChangedMT1_B_Core_2_Temp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildMT1_R_Winding_Temp(),
              SizedBox(height: 8),
              buildMT1_R_Oil_Temp(),
              SizedBox(height: 8),
              buildMT1_R_Core_1_Temp(),
              SizedBox(height: 8),
              buildMT1_R_Core_2_Temp(),
              SizedBox(height: 8),
            ],
          ),
        ),
      );

  Widget buildMT1_R_Winding_Temp() => TextFormField(
        maxLines: 1,
        initialValue: MT1_R_Winding_Temp,
        style: TextStyle(color: Colors.white60, fontSize: 7),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Type something...',
          hintStyle: TextStyle(color: Colors.white60),
        ),
        validator: (MT1_R_Winding_Temp) =>
            MT1_R_Winding_Temp != null && MT1_R_Winding_Temp.isEmpty
                ? 'The description cannot be empty'
                : null,
        onChanged: onChangedMT1_R_Winding_Temp,
      );

  Widget buildMT1_R_Oil_Temp() => TextFormField(
        maxLines: 1,
        initialValue: MT1_R_Oil_Temp,
        style: TextStyle(color: Colors.white60, fontSize: 7),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Type something...',
          hintStyle: TextStyle(color: Colors.white60),
        ),
        validator: (MT1_R_Oil_Temp) =>
            MT1_R_Oil_Temp != null && MT1_R_Oil_Temp.isEmpty
                ? 'The description cannot be empty'
                : null,
        onChanged: onChangedMT1_R_Oil_Temp,
      );
  Widget buildMT1_R_Core_1_Temp() => TextFormField(
        maxLines: 1,
        initialValue: MT1_R_Core_1_Temp,
        style: TextStyle(color: Colors.white60, fontSize: 7),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Type something...',
          hintStyle: TextStyle(color: Colors.white60),
        ),
        validator: (MT1_R_Core_1_Temp) =>
            MT1_R_Core_1_Temp != null && MT1_R_Core_1_Temp.isEmpty
                ? 'The description cannot be empty'
                : null,
        onChanged: onChangedMT1_R_Core_1_Temp,
      );

  Widget buildMT1_R_Core_2_Temp() => TextFormField(
        maxLines: 1,
        initialValue: MT1_R_Core_2_Temp,
        style: TextStyle(color: Colors.white60, fontSize: 7),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Type something...',
          hintStyle: TextStyle(color: Colors.white60),
        ),
        validator: (MT1_R_Core_2_Temp) =>
            MT1_R_Core_2_Temp != null && MT1_R_Core_2_Temp.isEmpty
                ? 'The description cannot be empty'
                : null,
        onChanged: onChangedMT1_R_Core_2_Temp,
      );
}

import 'package:flutter/material.dart';
import 'package:sqflite_database_example/db/LG1_db.dart';
import 'package:sqflite_database_example/model/MT1.dart';
import 'package:sqflite_database_example/widget/MT1_form_widget.dart';

class AddEditMT1Page extends StatefulWidget {
  final MT1? mt1;

  const AddEditMT1Page({
    Key? key,
    this.mt1,
  }) : super(key: key);
  @override
  _AddEditMT1PageState createState() => _AddEditMT1PageState();
}

class _AddEditMT1PageState extends State<AddEditMT1Page> {
  final _formKey = GlobalKey<FormState>();
  late String MT1_R_Winding_Temp;
  late String MT1_R_Oil_Temp;
  late String MT1_R_Core_1_Temp;
  late String MT1_R_Core_2_Temp;
  late String MT1_Y_Winding_Temp;
  late String MT1_Y_Oil_Temp;
  late String MT1_Y_Core_1_Temp;
  late String MT1_Y_Core_2_Temp;
  late String MT1_B_Winding_Temp;
  late String MT1_B_Oil_Temp;
  late String MT1_B_Core_1_Temp;
  late String MT1_B_Core_2_Temp;

  @override
  void initState() {
    super.initState();
    MT1_R_Winding_Temp = widget.mt1?.MT1_R_Winding_Temp ?? '';
    MT1_R_Oil_Temp = widget.mt1?.MT1_R_Oil_Temp ?? '';
    MT1_R_Core_1_Temp = widget.mt1?.MT1_R_Core_1_Temp ?? '';
    MT1_R_Core_2_Temp = widget.mt1?.MT1_R_Core_2_Temp ?? '';
    MT1_Y_Winding_Temp = widget.mt1?.MT1_Y_Winding_Temp ?? '';
    MT1_Y_Oil_Temp = widget.mt1?.MT1_Y_Oil_Temp ?? '';
    MT1_Y_Core_1_Temp = widget.mt1?.MT1_Y_Core_1_Temp ?? '';
    MT1_Y_Core_2_Temp = widget.mt1?.MT1_Y_Core_2_Temp ?? '';
    MT1_B_Winding_Temp = widget.mt1?.MT1_B_Winding_Temp ?? '';
    MT1_B_Oil_Temp = widget.mt1?.MT1_B_Oil_Temp ?? '';
    MT1_B_Core_1_Temp = widget.mt1?.MT1_B_Core_1_Temp ?? '';
    MT1_B_Core_2_Temp = widget.mt1?.MT1_B_Core_2_Temp ?? '';
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [buildButton()],
        ),
        body: Form(
          key: _formKey,
          child: MT1FormWidget(
            MT1_R_Winding_Temp: MT1_R_Winding_Temp,
            MT1_R_Oil_Temp: MT1_R_Oil_Temp,
            MT1_R_Core_1_Temp: MT1_R_Core_1_Temp,
            MT1_R_Core_2_Temp: MT1_R_Core_2_Temp,
            MT1_Y_Winding_Temp: MT1_Y_Winding_Temp,
            MT1_Y_Oil_Temp: MT1_Y_Oil_Temp,
            MT1_Y_Core_1_Temp: MT1_Y_Core_1_Temp,
            MT1_Y_Core_2_Temp: MT1_Y_Core_2_Temp,
            MT1_B_Winding_Temp: MT1_B_Winding_Temp,
            MT1_B_Oil_Temp: MT1_B_Oil_Temp,
            MT1_B_Core_1_Temp: MT1_B_Core_1_Temp,
            MT1_B_Core_2_Temp: MT1_B_Core_2_Temp,

            onChangedMT1_R_Winding_Temp: (MT1_R_Winding_Temp) =>
                setState(() => this.MT1_R_Winding_Temp = MT1_R_Winding_Temp),
            onChangedMT1_R_Oil_Temp: (MT1_R_Oil_Temp) =>
                setState(() => this.MT1_R_Oil_Temp = MT1_R_Oil_Temp),
            onChangedMT1_R_Core_1_Temp: (MT1_R_Core_1_Temp) =>
                setState(() => this.MT1_R_Core_1_Temp = MT1_R_Core_1_Temp),
            onChangedMT1_R_Core_2_Temp: (MT1_R_Core_2_Temp) =>
                setState(() => this.MT1_R_Core_2_Temp = MT1_R_Core_2_Temp),
            onChangedMT1_Y_Winding_Temp: (MT1_Y_Winding_Temp) =>
                setState(() => this.MT1_Y_Winding_Temp = MT1_Y_Winding_Temp),
            onChangedMT1_Y_Oil_Temp: (MT1_Y_Oil_Temp) =>
                setState(() => this.MT1_Y_Oil_Temp = MT1_Y_Oil_Temp),
            onChangedMT1_Y_Core_1_Temp: (MT1_Y_Core_1_Temp) =>
                setState(() => this.MT1_Y_Core_1_Temp = MT1_Y_Core_1_Temp),
            onChangedMT1_Y_Core_2_Temp: (MT1_Y_Core_2_Temp) =>
                setState(() => this.MT1_Y_Core_2_Temp = MT1_Y_Core_2_Temp),
            onChangedMT1_B_Winding_Temp: (MT1_B_Winding_Temp) =>
                setState(() => this.MT1_B_Winding_Temp = MT1_B_Winding_Temp),
            onChangedMT1_B_Oil_Temp: (MT1_B_Oil_Temp) =>
                setState(() => this.MT1_B_Oil_Temp = MT1_B_Oil_Temp),
            onChangedMT1_B_Core_1_Temp: (MT1_B_Core_1_Temp) =>
                setState(() => this.MT1_B_Core_1_Temp = MT1_B_Core_1_Temp),
            onChangedMT1_B_Core_2_Temp: (MT1_B_Core_2_Temp) =>
                setState(() => this.MT1_B_Core_2_Temp = MT1_B_Core_2_Temp),

            //onChangedTitle: (title) => setState(() => this.title = title),
          ),
        ),
      );

  Widget buildButton() {
    final isFormValid = MT1_R_Winding_Temp.isNotEmpty &&
        MT1_R_Oil_Temp.isNotEmpty &&
        MT1_R_Core_1_Temp.isNotEmpty &&
        MT1_R_Core_2_Temp.isNotEmpty &&
        MT1_Y_Winding_Temp.isNotEmpty &&
        MT1_Y_Oil_Temp.isNotEmpty &&
        MT1_Y_Core_1_Temp.isNotEmpty &&
        MT1_Y_Core_2_Temp.isNotEmpty &&
        MT1_B_Winding_Temp.isNotEmpty &&
        MT1_B_Oil_Temp.isNotEmpty &&
        MT1_B_Core_1_Temp.isNotEmpty &&
        MT1_B_Core_2_Temp.isNotEmpty;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          primary: isFormValid ? null : Colors.grey.shade700,
        ),
        onPressed: addOrUpdateNote,
        child: Text('Save'),
      ),
    );
  }

  void addOrUpdateNote() async {
    final isValid = _formKey.currentState!.validate();

    if (isValid) {
      final isUpdating = widget.mt1 != null;

      if (isUpdating) {
        await updateNote();
      } else {
        await addNote();
      }

      Navigator.of(context).pop();
    }
  }

  Future updateNote() async {
    final mt1 = widget.mt1!.copy(
      MT1_R_Winding_Temp: MT1_R_Winding_Temp,
      MT1_R_Oil_Temp: MT1_R_Oil_Temp,
      MT1_R_Core_1_Temp: MT1_R_Core_1_Temp,
      MT1_R_Core_2_Temp: MT1_R_Core_2_Temp,
      MT1_Y_Winding_Temp: MT1_Y_Winding_Temp,
      MT1_Y_Oil_Temp: MT1_Y_Oil_Temp,
      MT1_Y_Core_1_Temp: MT1_Y_Core_1_Temp,
      MT1_Y_Core_2_Temp: MT1_Y_Core_2_Temp,
      MT1_B_Winding_Temp: MT1_B_Winding_Temp,
      MT1_B_Oil_Temp: MT1_B_Oil_Temp,
      MT1_B_Core_1_Temp: MT1_B_Core_1_Temp,
      MT1_B_Core_2_Temp: MT1_B_Core_2_Temp,
    );

    await LG1Database.instance.update(mt1);
  }

  Future addNote() async {
    final mt1 = MT1(
      MT1_R_Winding_Temp: MT1_R_Winding_Temp,
      MT1_R_Oil_Temp: MT1_R_Oil_Temp,
      MT1_R_Core_1_Temp: MT1_R_Core_1_Temp,
      MT1_R_Core_2_Temp: MT1_R_Core_2_Temp,
      MT1_Y_Winding_Temp: MT1_Y_Winding_Temp,
      MT1_Y_Oil_Temp: MT1_Y_Oil_Temp,
      MT1_Y_Core_1_Temp: MT1_Y_Core_1_Temp,
      MT1_Y_Core_2_Temp: MT1_Y_Core_2_Temp,
      MT1_B_Winding_Temp: MT1_B_Winding_Temp,
      MT1_B_Oil_Temp: MT1_B_Oil_Temp,
      MT1_B_Core_1_Temp: MT1_B_Core_1_Temp,
      MT1_B_Core_2_Temp: MT1_B_Core_2_Temp,
      createdTime: DateTime.now(),
    );

    await LG1Database.instance.create(mt1);
  }
}

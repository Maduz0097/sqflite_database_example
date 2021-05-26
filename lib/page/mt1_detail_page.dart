import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sqflite_database_example/db/LG1_db.dart';
import 'package:sqflite_database_example/model/MT1.dart';
import 'package:sqflite_database_example/page/edit_MT1_page.dart';

class MT1DetailPage extends StatefulWidget {
  final int mt1Id;

  const MT1DetailPage({
    Key? key,
    required this.mt1Id,
  }) : super(key: key);

  @override
  _MT1DetailPageState createState() => _MT1DetailPageState();
}

class _MT1DetailPageState extends State<MT1DetailPage> {
  late MT1 mt1;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNote();
  }

  Future refreshNote() async {
    setState(() => isLoading = true);

    this.mt1 = await LG1Database.instance.readMT1(widget.mt1Id);

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [editButton(), deleteButton()],
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.all(12),
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  children: [
                    Text(
                      mt1.MT1_R_Winding_Temp,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      DateFormat.yMMMd().format(mt1.createdTime),
                      style: TextStyle(color: Colors.white38),
                    ),
                    SizedBox(height: 8),
                    Text(
                      mt1.MT1_R_Oil_Temp,
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    )
                  ],
                ),
              ),
      );

  Widget editButton() => IconButton(
      icon: Icon(Icons.edit_outlined),
      onPressed: () async {
        if (isLoading) return;

        await Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AddEditMT1Page(mt1: mt1),
        ));

        refreshNote();
      });

  Widget deleteButton() => IconButton(
        icon: Icon(Icons.delete),
        onPressed: () async {
          await LG1Database.instance.delete(widget.mt1Id);

          Navigator.of(context).pop();
        },
      );
}

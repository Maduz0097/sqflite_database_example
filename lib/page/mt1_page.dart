import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:sqflite_database_example/db/LG1_db.dart';
import 'package:sqflite_database_example/model/MT1.dart';
import 'package:sqflite_database_example/page/edit_MT1_page.dart';
import 'package:sqflite_database_example/page/mt1_detail_page.dart';
import 'package:sqflite_database_example/widget/MT1_card_widget.dart';

class MT1_Page extends StatefulWidget {
  @override
  _MT1_PageState createState() => _MT1_PageState();
}

class _MT1_PageState extends State<MT1_Page> {
  late List<MT1> mt1s;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNotes();
  }

  @override
  void dispose() {
    LG1Database.instance.close();

    super.dispose();
  }

  Future refreshNotes() async {
    setState(() => isLoading = true);

    this.mt1s = await LG1Database.instance.readAllMT1s();

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(
            'Log Sheets',
            style: TextStyle(fontSize: 24),
          ),
          actions: [Icon(Icons.search), SizedBox(width: 12)],
        ),
        body: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : mt1s.isEmpty
                  ? Text(
                      'No Log Sheets',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    )
                  : buildNotes(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(Icons.add),
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => AddEditMT1Page()),
            );

            refreshNotes();
          },
        ),
      );

  Widget buildNotes() => StaggeredGridView.countBuilder(
        padding: EdgeInsets.all(8),
        itemCount: mt1s.length,
        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          final mt1 = mt1s[index];

          return GestureDetector(
            onTap: () async {
              await Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => MT1DetailPage(mt1Id: mt1.id!),
              ));

              refreshNotes();
            },
            child: MT1CardWidget(mt1: mt1, index: index),
          );
        },
      );
}

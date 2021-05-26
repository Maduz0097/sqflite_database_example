import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_database_example/model/MT1.dart';

class LG1Database {
  static final LG1Database instance = LG1Database._init();

  static Database? _database;

  LG1Database._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('LG1.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final boolType = 'BOOLEAN NOT NULL';
    final integerType = 'INTEGER NOT NULL';

    await db.execute('''
CREATE TABLE $tableMT1 ( 
  ${MT1Fields.id} $idType, 
  
  ${MT1Fields.MT1_R_Winding_Temp} $textType,
  ${MT1Fields.MT1_R_Oil_Temp} $textType,
  ${MT1Fields.MT1_R_Core_1_Temp} $textType,
  ${MT1Fields.MT1_R_Core_2_Temp} $textType,
  ${MT1Fields.MT1_Y_Winding_Temp} $textType,
  ${MT1Fields.MT1_Y_Oil_Temp} $textType,
  ${MT1Fields.MT1_Y_Core_1_Temp} $textType,
  ${MT1Fields.MT1_Y_Core_2_Temp} $textType,
  ${MT1Fields.MT1_B_Winding_Temp} $textType,
  ${MT1Fields.MT1_B_Oil_Temp} $textType,
  ${MT1Fields.MT1_B_Core_1_Temp} $textType,
  ${MT1Fields.MT1_B_Core_2_Temp} $textType,


  ${MT1Fields.time} $textType
  )
''');
  }

  Future<MT1> create(MT1 MT1) async {
    final db = await instance.database;

    // final json = MT1.toJson();
    // final columns =
    //     '${MT1Fields.title}, ${MT1Fields.description}, ${MT1Fields.time}';
    // final values =
    //     '${json[MT1Fields.title]}, ${json[MT1Fields.description]}, ${json[MT1Fields.time]}';
    // final id = await db
    //     .rawInsert('INSERT INTO table_name ($columns) VALUES ($values)');

    final id = await db.insert(tableMT1, MT1.toJson());
    return MT1.copy(id: id);
  }

  Future<MT1> readMT1(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableMT1,
      columns: MT1Fields.values,
      where: '${MT1Fields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return MT1.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<MT1>> readAllMT1s() async {
    final db = await instance.database;

    final orderBy = '${MT1Fields.time} ASC';
    // final result =
    //     await db.rawQuery('SELECT * FROM $tableMT1s ORDER BY $orderBy');

    final result = await db.query(tableMT1, orderBy: orderBy);

    return result.map((json) => MT1.fromJson(json)).toList();
  }

  Future<int> update(MT1 MT1) async {
    final db = await instance.database;

    return db.update(
      tableMT1,
      MT1.toJson(),
      where: '${MT1Fields.id} = ?',
      whereArgs: [MT1.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      tableMT1,
      where: '${MT1Fields.id} = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}

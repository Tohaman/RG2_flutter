import 'dart:io';
import 'package:flutter/services.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final _databaseName = 'testBase.db';
  static final _databaseVersion = 1;
  static final table = 'simple';
  static final columnId = 'ID';
  static final columnPhase = 'PHASE';
  static final columnTitle = 'TITLE';

  //Constructor
  DatabaseHelper._privateConstructor();

  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database _database;

  Future<Database> get database async {
    if (_database != null) return database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, _databaseName);

    //Проверяем наличие базы
    var exist = await databaseExists(path);
    if (!exist) {
      print("Copy database from assets");
      try {
        await Directory(dirname(path)).create(recursive: true);
      } catch (_) {} //nothing

      //Copy
      ByteData data = await rootBundle.load(join("assets/db", _databaseName));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);

      //Write
      await File(path).writeAsBytes(bytes, flush: true);
    } else {
      print("Opening existing database:");
    }
  }

  //CRUD
  /// =================================================================
  //Insert
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(table, row);
  }

  //SELECT ALL
  Future<List> getAllItems() async {
    Database db = await instance.database;
    var result = await db.query(table);
    return result.toList();
  }

  //RAW query
  Future<int> getCount() async {
    Database db = await instance.database;
    var result =
    Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(1) FROM $table'));
    return result;
  }

  //Update
  Future<int> update(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.update(table, row);
  }

  //Delete
  Future<int> delete(String phase) async {
    Database db = await instance.database;
    return await db.delete(table, where: '$columnPhase', whereArgs: [phase]);
  }
}
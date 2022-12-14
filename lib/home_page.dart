import 'package:flutter/material.dart';
import 'package:flutter_sqlite_example/database/database_sqlite.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    _database();
    super.initState();
  }

  Future<void> _database() async {
    var database = await DatabaseSqLite().openConnection();

    // database.insert("teste", {"nome": "Gabriel Donato"});
    // database.delete(
    //   "teste",
    //   where: "nome = ?",
    //   whereArgs: ["Gabriel Donato"],
    // );

    // database.update(
    //   "teste",
    //   {"nome": "donatao"},
    //   where: "nome = ?",
    //   whereArgs: ["Gabriel Donato"],
    // );

    // var result = database.query("teste");
    // print(result);

    // database.rawInsert("insert into teste values(null, ?)", ["Gabriel Donato"]);
    // database.rawUpdate(
    //     "update teste set nome = ? where id = ?", ["Gabriel flutter", 5]);
    // database.rawDelete("delete from teste where id = ?", [5]);
    var result = database.rawQuery("select * from teste");
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Trocar nome",
            ),
          ),
        ],
      ),
    );
  }
}

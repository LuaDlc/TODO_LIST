import 'package:flutter/material.dart';
import 'package:todo_list/todo_list_page.dart';

//estrutura básica
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightGreen,
      ),
      home: TodoListPage(),
    );
  }
}
//estrutura básica-fim

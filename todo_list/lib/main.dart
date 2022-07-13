import 'package:exemplo/todo_list_page.dart';
import 'package:flutter/material.dart';
//estrutura básica
main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(Key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
    primaryColor: Colors.purple,
    ),
      home: TodoListPage(),
    ),
  }
}
//estrutura básica-fim
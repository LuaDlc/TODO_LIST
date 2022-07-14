import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  TextEditingController _textEditingController = TextEditingController();

  List<String> tarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de tarefas'),
      ),
      //corpo do aplicativo:
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
            ),
            //adicionando as tarefas na tela
            Container(
              height: 400, //adiciona uma restrição de tamanho ao container
              child: ListView.separated(
                separatorBuilder: (context, index) =>
                    Divider(), //cria uma linha
                itemCount: tarefas.length, //pega tamanho da lista
                itemBuilder: (context, index) {
                  //builder tem q retornar um widge
                  return ListTile(
                      title: Text(tarefas[index]),
                      onLongPress: () {
                        setState(() {
                          tarefas.removeAt(index);
                        });
                      }); //listTile
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.lime,
            onPressed: () {
              if (_textEditingController.text.length > 0) {
                setState(() {
                  tarefas.add(_textEditingController.text);
                });
                _textEditingController.clear();
              }
            },
            child: Icon(Icons.add),
          ), //floatingActionButton
          FloatingActionButton(
            backgroundColor: Colors.lime,
            onPressed: () {
              setState(() {
                tarefas = [];
              });
              _textEditingController.clear();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

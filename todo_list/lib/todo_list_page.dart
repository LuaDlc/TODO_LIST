import 'package:flutter/material.dart';

class TodoListPage extends StateFulWidget {
  const TodoListPage({Key? key}) : super(key: key);
  
  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListpage> {
 
  TextEditingController _texteEditingController = textEditingController();
  
  List<String> tarefas = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold{
      appBar: AppBar(
        title: Text('Lista de tarefas'),
      ),
      //corpo do aplicativo:
      body: ,Container(
      padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
            controller: _texteEditingController,
            ), //textField
          //adicionando as tarefas na tela
            Container(
            height: 400, //adiciona uma restrição de tamanho
              child:ListView.separated(
                separetedBuilder: separatorBuilder(context, index) => Divider(),//cria uma linha
              itemCount:tarefas.length, //quantidade de itens dentro da lista
              itemBUilder: (context, index) { //builder tem q retornar um widget
                return LisTile(
                  title: Text(tarefas[index]),
                  onLongPress: () {
                    setState(() {
                      
                      tarefas.removeAt(index);
                      
                    });
                  }
                ), //listTile
              },
              ), //listView.builder
            ), //container
          ],
      ), //column
    ), //container
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: mainAxisAlignment.end,
        children[
     floatingActionButton: FloatingActionButton(
       backgroundCOlor: Colors.lime,
       onPressed:(){
         if (_texteEditingController.text.length> 0) {
           SetState((){
             tarefas.add(_texteEditingController.text);
           });
           _texteEditingController.clear();
         }
       },
       child: Icon(Icons.add),
     ), //floatingActionButton 
          floatingActionButton: Row(
        children[
     floatingActionButton: FloatingActionButton(
       backgroundCOlor: Colors.lime,
       onPressed:(){
           SetState((){
             tarefas.add= [];
           });
           _texteEditingController.clear();
       },
       child: Icon(Icons.remove),
     ),
    ],
   ), //row
  }; //scaffold
 }
}
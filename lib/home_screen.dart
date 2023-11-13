import 'package:flutter/material.dart';
import 'UpdateTaskModel.dart';
import 'AddNewTastModel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Todo Works')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddNewTaskModel();
              });
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Actions'),
                      content: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.edit),
                            title: Text('Update'),
                            onTap: () {
                              Navigator.pop(context);
                              showModalBottomSheet(context: context, builder: (context){
                                return const UpdateTaskModel();
                              });
                            },
                          ),
                          Divider(
                            height: 5,
                          ),
                          ListTile(
                            leading: Icon(Icons.delete),
                            title: Text("Delete"),
                            onTap: () {},
                          ),
                        ],
                      ),
                    );
                  });
            },
            leading: CircleAvatar(
              child: Text("${index + 1}"),
            ),
            title: Text("i need to go to dhaka"),
            subtitle: Text("Date"),
            trailing: Text("pending"),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 0,
          );
        },
      ),
    );
  }
}


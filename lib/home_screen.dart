import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Todo Works')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      body: ListView.builder(
          itemCount : 10,
          itemBuilder: (context,index){
        return ListTile(
          leading: CircleAvatar(
            child: Text("${index+1}"),
          ),
          title: Text("i need to go to dhaka"),
          subtitle: Text("Date"),
          trailing: Text("pending"),
        );
      }),
    );
  }
}

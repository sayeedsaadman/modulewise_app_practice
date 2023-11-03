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
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) {
            return Column(
              children: [
                Text("Add new to do work", style: Theme.of(context).textTheme.titleLarge,),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your todo here",
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16,),
                ElevatedButton(onPressed: () {}, child: const Text("Add"),)
              ],
            );
          });
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
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
      }, separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 5,
            );
      },
      ),
    );
  }
}

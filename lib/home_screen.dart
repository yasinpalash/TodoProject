import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_project/update_task_modal.dart';

import 'add_new_task_modal.dart';

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
          backgroundColor: Colors.red,
          title: const Text("Todo-App"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return AddnewTaskModal();
                });

          },
          child: const Icon(Icons.add),
        ),
        body: ListView.separated(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Actions'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          leading: const Icon(Icons.edit),
                          title: const Text('Update'),
                          onTap: (){
                            Navigator.pop(context);
                            showModalBottomSheet(context: context, builder: (context){
                              return UpdateModal();


                            });



                          },
                        ),
                        const Divider(
                          height: 0,
                        ),
                        ListTile(
                          onTap: (){
                            Navigator.pop(context);
                          },
                          leading: const Icon(Icons.delete_outlined),
                          title: const Text('Delete'),
                        )
                        
                      ],
                    ),

                  );
                });

              },
              leading: CircleAvatar(),
              title: Text('This is book '),
              subtitle: Text('note'),
              trailing: Text('panding'),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 4,
            );
          },
        ));
  }
}

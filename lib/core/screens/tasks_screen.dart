import 'package:flutter/material.dart';
import 'package:my_first_project/core/models/todo.dart';
class TaskScreen extends StatelessWidget{
  TaskScreen({Key? key}) : super(key: key);

 List<Task> tasksList = [
   Task(title: 'Task1'),
   Task(title: 'Task2'),
   Task(title: 'Task3'),
 ];

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tasks App'),
        actions: [
          IconButton(onPressed:(){}, icon: const Icon(Icons.add),
          )
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
         const Center(
            child: Chip(
              label: Text(
                'Tasks:',
              ),
            ),
            ),

    Expanded(
      child: ListView.builder(
        itemCount: tasksList.length,
          itemBuilder: (context,index){
      var task = tasksList[index];
      return ListTile(
      title: Text(task.title),
      trailing: Checkbox(
      value: task.isDone,
      onChanged: (value) {},
      ),
      );
      }),
    )
        ],
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip:  'Add Task',
    )

    );
  }

}
import 'package:flutter/material.dart';

class TasksPage extends StatefulWidget {
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  final List<String> tasks = [
    'Geri dönüşüm yapın',
    'Enerji tasarrufu yapın',
    'Bisiklet sürün',
    'Plastik kullanımını azaltın',
  ];

  final Set<String> completedTasks = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Görevler'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          final isCompleted = completedTasks.contains(task);

          return ListTile(
            title: Text(
              task,
              style: TextStyle(
                decoration: isCompleted ? TextDecoration.lineThrough : null,
              ),
            ),
            trailing: Checkbox(
              value: isCompleted,
              onChanged: (bool? value) {
                setState(() {
                  if (value != null) {
                    if (value) {
                      completedTasks.add(task);
                    } else {
                      completedTasks.remove(task);
                    }
                  }
                });
              },
            ),
          );
        },
      ),
    );
  }
}

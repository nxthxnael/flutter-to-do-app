import 'package:flutter/material.dart';
import 'package:to_do_app/utils/todo_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List toDoList = [
    ['Send Invoice', false],
    ['Integrate Daraja API', false],
    ['Find Sam', false],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCECECE),
      appBar: AppBar(
        title: const Text("nxthxnael's to-dos"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: toDoList.length,
        itemBuilder: (BuildContext context, index) {
          return TodoList(taskName: toDoList[index][0]);
        },
      ),
    );
  }
}

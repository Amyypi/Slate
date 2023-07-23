import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_app/controller/controller.dart';
import 'package:flutter/src/widgets/icon_data.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _taskController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
      init: Controller(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text('To Do List')), // AppBar
          body: ListView.builder(
            itemCount: _.todoList.length,
            itemBuilder: (context, index) => Dismissible(
              key: ValueKey<String>(_.todoList[index].id),
              onDismissed: (direction) => _.deleteTodo(_.todoList[index].id),
              background: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.delete,
                    color: Color.fromARGB(255, 214, 82, 73),
                  )
                ],
              ),
              child: _.todoList.isNotEmpty
                  ? Card(
                      child: ListTile(
                        title: Text(_.todoList[index].toDoEntryText!),
                        trailing: Checkbox(
                          onChanged: (value) =>
                              _.updatePost_todo(_.todoList[index].id, value),
                          value: _.todoList[index].isDone,
                        ),
                      ),
                    )
                  : const Center(
                      child: Text(
                      'No tasks!',
                    )),
            ),
          ),
          //add button
          floatingActionButton:
              //add entry
              FloatingActionButton.extended(
            label: const Text("Add To Do Task"),
            icon: const Icon(Icons.add),
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    TextField(controller: _taskController),
                    ElevatedButton(
                      onPressed: () => {
                        _.addPost_todo(_taskController.text.trim()),
                        Navigator.pop(context),
                        _taskController.clear(),
                      },
                      child: const Text('Save'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

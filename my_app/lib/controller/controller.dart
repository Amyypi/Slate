import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:get/get.dart';
import 'package:my_app/amplifyconfiguration.dart';
import 'package:my_app/models/ModelProvider.dart';

class Controller extends GetxController {
  var todoList = <ToDoList>[].obs;
  var journalEntry = <JournalEntry>[].obs;

  @override
  void onInit() {
    _configureAmplify();
    super.onInit();
  }

  // configure amplify. This should run first
  void _configureAmplify() async {
    // Add the following lines to your app initialization to add the DataStore plugin
    AmplifyDataStore datastorePlugin =
        AmplifyDataStore(modelProvider: ModelProvider.instance);
    Amplify.addPlugin(datastorePlugin);
    await Amplify.addPlugin(AmplifyAPI());
    try {
      await Amplify.configure(amplifyconfig);
      readData_todo();
      readData_journalEntry();
    } on AmplifyAlreadyConfiguredException {
      safePrint(
          'Tried to reconfigure Amplify; this can occur when your app restarts on Android.');
    }
  }

// To do List Functions
  // read data
  Future<void> readData_todo() async {
    try {
      todoList = RxList(await Amplify.DataStore.query(ToDoList.classType));
      update();
    } catch (e) {
      print(e); //avoid 'print calls in production code.
    }
  }

  // add new todo
  Future<void> addPost_todo(String? journalText) async {
    try {
      ToDoList _newTodo = ToDoList(toDoEntryText: journalText!, isDone: false);
      await Amplify.DataStore.save(_newTodo);
      readData_todo();
    } on Exception catch (e) {
      print(e);
    }
  }

  // update todo
  Future<void> updatePost_todo(String? id, bool? isDone) async {
    try {
      ToDoList _oldTodo = (await Amplify.DataStore.query(ToDoList.classType,
          where: ToDoList.ID.eq(id)))[0];

      ToDoList _newTodo = _oldTodo.copyWith(
          id: id!, toDoEntryText: _oldTodo.toDoEntryText!, isDone: isDone!);
      await Amplify.DataStore.save(_newTodo);
      readData_todo();
    } on Exception catch (e) {
      print(e);
    }
  }

  // delete todo
  Future<void> deleteTodo(String? id) async {
    (await Amplify.DataStore.query(ToDoList.classType,
            where: ToDoList.ID.eq(id)))
        .forEach((element) async {
      try {
        await Amplify.DataStore.delete(element);
      } catch (e) {
        print(e);
      }
    });
    readData_todo();
  }

//////////////////////////
// To do List Functions //
//////////////////////////

  // read Journal entry data
  Future<void> readData_journalEntry() async {
    try {
      journalEntry =
          RxList(await Amplify.DataStore.query(JournalEntry.classType));
      update();
    } catch (e) {
      print(e);
    }
  }

  // add new journalEntry
  Future<void> addPost_journalEntry(
      String? journalText, String? moodStatus_input) async {
    try {
      JournalEntry _newJournalEntry = JournalEntry(
          journalEntryText: journalText!, moodStatus: moodStatus_input!);
      await Amplify.DataStore.save(_newJournalEntry);
      readData_journalEntry();
    } on Exception catch (e) {
      print(e);
    }
  }

  // update journalEntry
  Future<void> updatePost_journalEntry(String? id) async {
    try {
      JournalEntry _oldJournalEntry = (await Amplify.DataStore.query(
          JournalEntry.classType,
          where: JournalEntry.ID.eq(id)))[0];

      JournalEntry _newJournalEntry = _oldJournalEntry.copyWith(
          id: id!,
          journalEntryText: _oldJournalEntry.journalEntryText!,
          moodStatus: _oldJournalEntry.moodStatus!);
      await Amplify.DataStore.save(_newJournalEntry);
      readData_journalEntry();
    } on Exception catch (e) {
      print(e);
    }
  }

  // delete journalEntry
  Future<void> deleteJournalEntry(String? id) async {
    (await Amplify.DataStore.query(JournalEntry.classType,
            where: JournalEntry.ID.eq(id)))
        .forEach((element) async {
      try {
        await Amplify.DataStore.delete(element);
      } catch (e) {
        print(e);
      }
    });
    readData_journalEntry();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_app/controller/controller.dart';
import 'package:flutter/src/widgets/icon_data.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/nav.dart';

class JournalEntryList extends StatefulWidget {
  const JournalEntryList({Key? key}) : super(key: key);

  @override
  State<JournalEntryList> createState() => _JournalEntryListState();
}

// Date functions
class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  DateTime date = DateTime(2016, 10, 26);
  DateTime time = DateTime(2016, 5, 10, 22, 35);
  DateTime dateTime = DateTime(2016, 8, 3, 17, 45);

  // This shows a CupertinoModalPopup with a reasonable fixed height which hosts CupertinoDatePicker.
  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.all(10.0),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: DefaultTextStyle(
        style: TextStyle(
          color: CupertinoColors.label.resolveFrom(context),
          fontSize: 16.0,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _DatePickerItem(
                children: <Widget>[
                  const Text('Date'),
                  CupertinoButton(
                    // Display a CupertinoDatePicker in date picker mode.
                    onPressed: () => _showDialog(
                      CupertinoDatePicker(
                        initialDateTime: date,
                        mode: CupertinoDatePickerMode.date,
                        use24hFormat: true,
                        // This is called when the user changes the date.
                        onDateTimeChanged: (DateTime newDate) {
                          setState(() => date = newDate);
                        },
                      ),
                    ),
                    // In this example, the date value is formatted manually. You can use intl package
                    // to format the value based on user's locale settings.
                    child: Text(
                      '${date.month}-${date.day}-${date.year}',
                      style: const TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// This class simply decorates a row of widgets.
class _DatePickerItem extends StatelessWidget {
  const _DatePickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}

class _JournalEntryListState extends State<JournalEntryList> {
  final TextEditingController _taskController = TextEditingController();
  final TextEditingController _Textcontroller = TextEditingController();
  final TextEditingController _datecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<Controller>(
      init: Controller(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text('Journaling')), // AppBar

          body: ListView.builder(
            padding: const EdgeInsets.all(10.0),
            itemCount: _.journalEntry.length,
            itemBuilder: (context, index) => Dismissible(
              key: ValueKey<String>(_.journalEntry[index].id),
              onDismissed: (direction) =>
                  _.deleteJournalEntry(_.journalEntry[index].id),
              background: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(
                    Icons.delete,
                    color: Color.fromARGB(255, 214, 82, 73),
                  )
                ],
              ),
              child: _.journalEntry.isNotEmpty
                  ? Card(
                      color: Color.fromARGB(255, 243, 244, 245),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: ListTile(
                        title: Text(_.journalEntry[index].moodStatus!,
                            style: TextStyle(color: Colors.black)),
                        subtitle: Text(_.journalEntry[index].journalEntryText!,
                            style: TextStyle(color: Colors.black)),
                        onTap: () {
                          showDialog(
                            // popup text
                            context: context,
                            builder: (context) => AlertDialog(
                                title: Text("Placeholder Date number"),
                                content: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  //position
                                  mainAxisSize: MainAxisSize.min,
                                  // wrap content in flutter
                                  children: <Widget>[
                                    Text("Mood Status: " +
                                        _.journalEntry[index].moodStatus!),
                                    Text("Journal Text : " +
                                        _.journalEntry[index].journalEntryText!)
                                  ],
                                )),
                          );
                        }, // Handle your onTap here.
                      ),
                    )
                  : const Center(
                      child: Text(
                      'No journal entries',
                    )),
            ),
          ),
          //add button
          floatingActionButton:
              //add entry
              FloatingActionButton.extended(
            label: const Text("Add Journal Entry"),
            icon: const Icon(Icons.add),
            onPressed: () => showModalBottomSheet(
              context: context,
              builder: (context) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          controller: _taskController,
                          decoration: const InputDecoration(
                              labelText: 'What is your mood today?',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2)),
                              )),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _Textcontroller,
                        decoration: const InputDecoration(
                            labelText: 'Tell me about your day...',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2)),
                            )),
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                      ),
                    ),
                    DatePickerExample(),
                    ElevatedButton(
                      onPressed: () => {
                        _.addPost_journalEntry(_Textcontroller.text.trim(),
                            _taskController.text.trim()),
                        Navigator.pop(context),
                        _taskController.clear(),
                        _Textcontroller.clear()
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

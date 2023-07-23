import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:my_app/controller/controller.dart';
import 'package:flutter/src/widgets/icon_data.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/nav.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class WaterRecord extends StatefulWidget {
  const WaterRecord({
    super.key,
  });

  @override
  State<WaterRecord> createState() => _WaterRecordState();
}

TextEditingController _waterController = TextEditingController();

class _WaterRecordState extends State<WaterRecord> {
// variables for storing and updating percent indicator
  double waterDrank = 0;
  double total = 0;
  String _total = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // app bar title
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Slate Water Tracker'),
      ),

      // button for adding how much water user drank
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Water Drank"),
        icon: const Icon(Icons.add),
        onPressed: () => showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text("Add Amount of Water"),
                  content: TextFormField(
                    controller: _waterController,
                    decoration: const InputDecoration(
                        hintText: "Enter amount in fluid ounces."),
                  ),
                  actions: [
                    TextButton(
                      child: const Text("Cancel"),
                      onPressed: () => Navigator.pop(context),
                    ),
                    TextButton(
                        child: const Text("OK"),
                        onPressed: () {
                          if (_waterController.text.isEmpty) {
                            Navigator.pop(context);
                            return;
                          } else {
                            waterDrank = double.parse(_waterController.text);

                            //not working validation
                            if (((total + waterDrank) / 100) > 1.0) {
                              waterDrank = 0;
                              _waterController.clear();
                              Navigator.pop(context);
                              return;
                            } else {
                              total += waterDrank;
                              _total = total.toString();
                              waterDrank = 0;
                              Navigator.pop(context);
                              _waterController.clear();
                              setState(() {});
                              return;
                            }
                          }
                        })
                  ],
                )),
      ),

      // circular indicator for how much water has been drunk
      body: Center(
          child: CircularPercentIndicator(
        animation: true,
        animationDuration: 900,
        radius: 375,
        lineWidth: 40,
        percent: (total / 64 as double),
        progressColor: Colors.blue,
        backgroundColor: Colors.lightBlue.shade100,
        circularStrokeCap: CircularStrokeCap.round,
        // want to display how much water been added
        header: Text(
          '$_total / 64 fl. oz.',
          style: const TextStyle(fontSize: 20, height: 2),
        ),
        center: const Icon(Icons.water_drop_outlined, size: 90),
        footer: const Text("Purify Your Soul.",
            style: TextStyle(fontSize: 20, height: 2.5)),
      )),
    );
  }
}

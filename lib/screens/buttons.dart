import 'package:flutter/material.dart';

import '../component/Button component/common_buttons.dart';
import '../component/Button component/drawer.dart';
import '../component/Button component/floating_action_button.dart';
import '../component/Button component/icon_button.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawerUDF(),
      appBar: AppBar(
        title: const Text('Actions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              'Common Buttons',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: commonButtons(),
            ),
            const Text(
              'Icon Buttons',
              style: TextStyle(fontSize: 20),
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: iconButtonUdf(),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 43),
              child: Text(
                'Floating Action button',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: folatingActionButtonUdf(),
    );
  }
}

import 'package:flutter/material.dart';

Padding folatingActionButtonUdf() {
  return Padding(
    padding: const EdgeInsets.only(left: 25),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
            FloatingActionButton.small(
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
            FloatingActionButton.extended(
              label: const Text('Create'),
              icon: const Icon(Icons.add),
              onPressed: () {},
            ),
            FloatingActionButton.large(
              child: const Icon(Icons.add),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';

Column commonButtons() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: Text('Elevated'),
          ),
          ElevatedButton.icon(
            label: Text('Icon'),
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Elevated'),
            style: ButtonStyle(
              backgroundColor:
              WidgetStatePropertyAll(Colors.grey.shade400),
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FilledButton(
            onPressed: () {},
            child: Text('Filled'),
          ),
          FilledButton.icon(
            label: Text('Icon'),
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          FilledButton(
            onPressed: () {},
            child: Text('Filled'),
            style: ButtonStyle(
              backgroundColor:
              WidgetStatePropertyAll(Colors.grey.shade400),
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FilledButton.tonal(
            onPressed: () {},
            child: Text('Filled tonal'),
          ),
          FilledButton.tonalIcon(
            label: Text('Icon'),
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('tonal'),
            style: ButtonStyle(
              backgroundColor:
              WidgetStatePropertyAll(Colors.grey.shade400),
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OutlinedButton(
            onPressed: () {},
            child: Text('Outlined'),
          ),
          OutlinedButton.icon(
            label: Text('Icon'),
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('Outlined'),
            style: ButtonStyle(
              backgroundColor:
              WidgetStatePropertyAll(Colors.grey.shade400),
            ),
          )
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () {},
            child: Text('Text'),
          ),
          TextButton.icon(
            label: Text('Icon'),
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          TextButton(
            onPressed: () {},
            child: Text('Text'),
            style: ButtonStyle(
              backgroundColor:
              WidgetStatePropertyAll(Colors.grey.shade400),
            ),
          )
        ],
      )
    ],
  );
}
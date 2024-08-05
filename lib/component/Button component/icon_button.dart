import 'package:flutter/material.dart';

Column iconButtonUdf() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings_outlined)),
          IconButton.filled(onPressed: () {}, icon: const Icon(Icons.settings_outlined)),
          IconButton.filledTonal(onPressed: () {}, icon: const Icon(Icons.settings_outlined)),
          IconButton.outlined(onPressed: () {}, icon: const Icon(Icons.settings_outlined))
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings_outlined,color: Colors.grey,)),
          IconButton.filled(style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.grey.shade300)),onPressed: () {}, icon: const Icon(Icons.settings_outlined,color: Colors.grey,)),
          IconButton.filledTonal(style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.grey.shade300)),onPressed: () {}, icon: const Icon(Icons.settings_outlined,color: Colors.grey,)),
          IconButton.outlined(onPressed: () {}, icon: const Icon(Icons.settings_outlined,color: Colors.grey,))
        ],
      )
    ],
  );
}
import 'package:flutter/material.dart';

import '../../utils/global.dart';

Drawer drawerUDF() {
  return Drawer(
    backgroundColor: Colors.grey.shade200,
    child: Column(
      children: [
        DrawerHeader(
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(img),
              ),
              const Text(
                'Patel Deep',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )
            ],
          ),
        ),
        ...List.generate(
          drawerList.length,
              (index) => list_tile_udf(index),
        )
      ],
    ),
  );
}

ListTile list_tile_udf(int index) {
  return ListTile(
    leading: Icon(drawerList[index]['icon']),
    title: Text(
      drawerList[index]['name'],
      style: const TextStyle(fontSize: 20),
    ),
  );
}
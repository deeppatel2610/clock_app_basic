## Flutter Button Types: Common Button, Icon Button, and Floating Action Button

Flutter provides various types of buttons to help build interactive UI elements. Here are definitions and examples of three common button types: common button, icon button, and floating action button.

### 1. Common Button (TextButton, ElevatedButton, OutlinedButton)

#### Definition
Common buttons in Flutter are used to trigger actions when pressed. There are three main types:
- **TextButton**: A simple, flat button without any elevation.
- **ElevatedButton**: A button with elevation, giving it a 3D effect.
- **OutlinedButton**: A button with a border outline but no elevation.

#### Examples

**TextButton**
```dart
TextButton(
  onPressed: () {
    // Action to perform
  },
  child: Text('Text Button'),
)
```

**ElevatedButton**
```dart
ElevatedButton(
  onPressed: () {
    // Action to perform
  },
  child: Text('Elevated Button'),
)
```

**OutlinedButton**
```dart
OutlinedButton(
  onPressed: () {
    // Action to perform
  },
  child: Text('Outlined Button'),
)
```

### 2. Icon Button

#### Definition
An IconButton is a button that contains an icon instead of text. It is typically used for actions that can be represented with a single icon.

#### Example
```dart
IconButton(
  icon: Icon(Icons.favorite),
  onPressed: () {
    // Action to perform
  },
)
```

### 3. Floating Action Button (FAB)

#### Definition
A Floating Action Button (FAB) is a circular button that floats above the content of the screen. It is usually used for a primary action in the application.

#### Example
```dart
FloatingActionButton(
  onPressed: () {
    // Action to perform
  },
  child: Icon(Icons.add),
)
```

### Usage in a Flutter Application

Here's a simple Flutter application that demonstrates the usage of these buttons:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Buttons Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text('Text Button'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Elevated Button'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text('Outlined Button'),
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
```

### Summary
- **TextButton**: Simple flat button.
- **ElevatedButton**: Button with elevation for a 3D effect.
- **OutlinedButton**: Button with a border outline.
- **IconButton**: Button with an icon, used for actions.
- **FloatingActionButton (FAB)**: Circular button for primary actions.

## Flutter Drawer Widget: README

This README file provides an overview of the Flutter `Drawer` widget, its usage, and examples.

### Introduction
The `Drawer` widget in Flutter is used to provide a hidden side panel that slides in from the left or right side of the screen. It typically contains navigation links and other menu options.

### Table of Contents
- [Usage](#usage)
- [Basic Example](#basic-example)
- [Customizing the Drawer](#customizing-the-drawer)
- [Advanced Example](#advanced-example)

### Usage
To use a `Drawer` in Flutter, you typically place it in the `Scaffold` widget, which provides the structure for a visual interface. The `Scaffold` has a `drawer` property where the `Drawer` widget can be assigned.

### Basic Example

Here's a basic example of a `Drawer` with a few navigation options:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drawer Example'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('Home Page'),
        ),
      ),
    );
  }
}
```

### Customizing the Drawer

The `Drawer` can be customized with different widgets and styles to fit the needs of your application. You can add any widget inside the `Drawer`, including custom headers, images, and different types of lists.

### Advanced Example

Here's an advanced example of a `Drawer` with more customization:

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appear: AppBar(
          title: Text('Advanced Drawer Example'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('John Doe'),
                accountEmail: Text('john.doe@example.com'),
                current account picture: CircleAvatar(
                  backgroundColor: Colors. orange,
                  child: Text(
                    'JD',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors. blue,
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.contacts),
                title: Text('Contact Us),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Text('Home Page'),
        ),
      ),
    );
  }
}
```

### Summary
- The `Drawer` widget provides a sliding panel from the side of the screen.
- It is typically used for navigation and menu options.
- The `Drawer` is placed inside the `Scaffold` widget.
- Customization options include headers, images, and widgets inside the `Drawer`.

### Additional Resources
For more information and advanced usage, please take a look at the official Flutter documentation: [Flutter Drawer Documentation](https://flutter.dev/docs/cookbook/design/drawer).


<div>
    <img src= "https://github.com/user-attachments/assets/7a1f7f2a-2097-4b4e-921c-02e0352f9898"  height =500px>
    <img src= "https://github.com/user-attachments/assets/09acee46-1aea-45c0-bda1-e21f9fb455e4"  height =500px> 
  
  </div>

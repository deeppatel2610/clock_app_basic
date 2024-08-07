#### 5.1

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

  
  #### 5.2

###  What is  Asynchronous Programming?

Asynchronous programming is a programming paradigm that allows tasks to run concurrently, enabling non-blocking operations. This means that while waiting for one task to complete, the program can continue executing other tasks. It's particularly useful for tasks that involve waiting, like network requests or file I/O.

```j
async function fetchData() {
  let response = await fetch('https://api.example.com/data');
  let data = await response.json();
  console.log(data);
}
fetchData();
```

### What is Future Class ?

The `Future` class in programming, particularly in Dart, represents a potential value or error that will be available at some point in the future. It is used for handling asynchronous operations. A `Future` can be in one of three states: uncompleted, completed with a value, or completed with an error.

**Example in Dart:**

```dart
Future<String> fetchUserData() async {
  // Simulate a network request
  await Future.delayed(Duration(seconds: 2));
  return 'User data';
}

void main() {
  fetchUserData().then((data) {
    print(data); // Prints 'User data' after 2 seconds
  });
}
```

### What is Duration class & Future.delayed() constructor with Example ?

### Duration Class

The `Duration` class in Dart represents a span of time, such as 5 seconds or 3 minutes. It is commonly used to specify time intervals.

### Future.delayed() Constructor

The `Future.delayed()` constructor creates a future that completes after a specified duration. It's useful for simulating delays in asynchronous operations.

**Example:**

```dart
void main() {
  Future.delayed(Duration(seconds: 3), () {
    print('Executed after 3 seconds');
  });

  print('Waiting...');
}
```
### What is the Use of the async & await keyword?
### Use of `async` and `await` Keywords

In Dart, the `async` and `await` keywords are used for asynchronous programming. The `async` keyword is used to mark a function as asynchronous, allowing it to perform asynchronous operations. The `await` keyword is used to pause the execution of an `async` function until a `Future` completes, simplifying asynchronous code.

**Example:**

```dart
Future<void> fetchData() async {
  print('Fetching data...');
  await Future.delayed(Duration(seconds: 2));
  print('Data fetched');
}

void main() {
  fetchData();
  print('Doing other work...');
}
```

### What is Recursion ?

### Recursion

Recursion is a programming technique where a function calls itself to solve smaller instances of the same problem. It is useful for tasks that can be divided into similar subtasks, like traversing data structures or solving mathematical problems.

**Example in Dart:**

```dart
int factorial(int n) {
  if (n <= 1) return 1;  // Base case
  return n * factorial(n - 1);  // Recursive call
}

void main() {
  print(factorial(5));  // Output: 120
}
```

### What is Timer class? 
### Timer Class

The `Timer` class in Dart is used to create a timer that runs a function after a specified duration or repeatedly at specified intervals. It's useful for tasks like scheduling events or creating delays.

**Example:**

```dart
import 'dart:async';

void main() {
  // Run a function once after a 2-second delay
  Timer(Duration(seconds: 2), () {
    print('This runs after a 2-second delay');
  });

  // Run a function repeatedly every second
  Timer.periodic(Duration(seconds: 1), (Timer t) {
    print('This runs every second');
  });
}
```

### What is Timer.periodic and use with Example?
### Timer.periodic

The `Timer.periodic` constructor in Dart creates a timer that repeatedly runs a function at specified intervals. It's useful for executing a task at regular intervals, like updating a UI or polling for data.

**Example:**

```dart
import 'dart:async';

void main() {
  // Run a function every second
  Timer.periodic(Duration(seconds: 1), (Timer t) {
    print('This runs every second');
  });

  // Stop the timer after 5 seconds
  Timer(Duration(seconds: 5), () {
    t.cancel();
    print('Timer stopped');
  });
}
```


### 5.3

Sure, here's a brief README file for the Digital Clock app:

---

# Digital Clock Flutter Application

## Overview

The Digital Clock is a simple Flutter application that displays the current time and date in a digital clock format. The clock updates every second and features an attractive background image. This app is built using Flutter, making it cross-platform and capable of running on both Android and iOS devices.

## Features

- **Live Time Update**: The clock updates every second, displaying the current hour, minute, and second.
- **AM/PM Indicator**: The clock shows whether the current time is AM or PM.
- **Date Display**: Below the clock, the current day of the week, day of the month, and month are displayed.
- **Custom Background**: The clock is displayed over a background image that can be customized.
- **Responsive Design**: The layout adjusts to different screen sizes, ensuring a consistent appearance across devices.

## Getting Started

### Prerequisites

To run this application, you need to have Flutter installed on your machine. You can follow the official Flutter installation guide [here](https://flutter.dev/docs/get-started/install).

### Installation

1. **Clone the repository**:
    ```sh
    git clone https://github.com/yourusername/digital_clock.git
    cd digital_clock
    ```

2. **Install dependencies**:
    ```sh
    flutter pub get
    ```

3. **Run the app**:
    ```sh
    flutter run
    ```

## Code Explanation

### Main Components

- **DigitalClock**: This is the main widget that sets up the state for the digital clock.
- **_DigitalClockState**: This stateful widget manages the clock's state and updates the time every second using a `Timer`.

### Key Methods and Properties

- `initState()`: Sets up a `Timer.periodic` to update the `dateTime` property every second.
- `build(BuildContext context)`: Builds the UI, which includes the clock display and the background image.

### UI Elements

- **Background Image**: The background image is loaded using the `AssetImage` function. The `gifUdf()` function returns the path to the image.
- **Clock Display**: The time is displayed using a `Row` widget, with the hour and minute separated from the seconds and AM/PM indicator.
- **Date Display**: The date is displayed in a `Row` widget below the clock.

## Customization

### Background Image

To change the background image, modify the `gifUdf()` function in the `../utils/global.dart` file to return the path of your desired image.

### Time Format

The current time format is 12-hour. To switch to a 24-hour format, you can adjust the logic in the `build` method:

```dart
Text(
  '${dateTime.hour.toString().padLeft(2, '0')}:${dateTime.minute.toString().padLeft(2, '0')}',
  style: const TextStyle(
    color: Colors.white,
    fontSize: 70,
    fontWeight: FontWeight.bold,
  ),
),
```

### Colors and Fonts

The text style can be customized by changing the `TextStyle` properties in the `build` method.

## Contributing

Contributions are welcome! Please fork the repository and create a pull request with your changes.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.

## Contact

For questions or suggestions, please contact [your email].

---

<div>
   <img src= "https://github.com/user-attachments/assets/ba6240fe-03f8-4550-bdf0-f0bf52230332"  height =500px>
   <img src= "https://github.com/user-attachments/assets/f359b802-713c-4740-9fda-9c866d68b5c5"  height =500px>
  <img src= "https://github.com/user-attachments/assets/4a92a379-1fee-40a8-8e97-e4ab9c27a52d"  height =500px>
  <img src= "https://github.com/user-attachments/assets/5918f263-4646-4c4b-8c8b-da92db7d0da6"  height =500px>
   <img src= "https://github.com/user-attachments/assets/9ff04d9a-8600-43e0-8556-9dee73c1ad4f"  height =500px>
    <img src= "https://github.com/user-attachments/assets/28cf41b2-5742-420e-8473-4ed7675504ae"  height =500px>
   
  
  
 
 
  
  </div>

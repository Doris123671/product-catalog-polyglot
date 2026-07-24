# lab3_flutter

A simple Flutter app created for the Lab 3 assignment.

What I changed:
- The default counter app text was updated to display a personalized message: "Hello from Doris".

How to run locally:
1. Ensure the Flutter SDK is installed and available (or use the full SDK path `C:\src\flutter\bin\flutter.bat`).
2. From this folder run:
```powershell
C:\src\flutter\bin\flutter.bat pub get
C:\src\flutter\bin\flutter.bat run -d windows    # runs on Windows desktop
# or
C:\src\flutter\bin\flutter.bat run -d chrome     # runs on Chrome web
```

Hot reload:
- While the app is running, edit `lib/main.dart` and save; Flutter's hot reload will update the running app when supported by the target.

Files of interest:
- `lib/main.dart` - The main entrypoint; contains `MyApp`, `MyHomePage`, and the `_MyHomePageState` class which stores the counter and exposes `_incrementCounter()` used by the `FloatingActionButton`.
- `test/widget_test.dart` - A basic widget test that verifies the greeting text and counter increment behavior.


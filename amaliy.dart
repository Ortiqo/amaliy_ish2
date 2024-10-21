import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dialog Widgets Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DialogExample(),
    );
  }
}

class DialogExample extends StatelessWidget {
  // AlertDialog ko'rsatish funksiyasi
  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('AlertDialog'),
          content: Text('Bu oddiy AlertDialog o‘ynasi.'),
          actions: <Widget>[
            TextButton(
              child: Text('Bekor qilish'),
              onPressed: () {
                Navigator.of(context).pop(); // Dialogni yopish
              },
            ),
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Dialogni yopish
              },
            ),
          ],
        );
      },
    );
  }

  // SimpleDialog ko'rsatish funksiyasi
  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('SimpleDialog'),
          children: <Widget>[
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop(); // Tanlovdan so'ng dialogni yopish
              },
              child: Text('Option 1'),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Option 2'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Widgets Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => _showAlertDialog(context),
              child: Text('Show AlertDialog'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showSimpleDialog(context),
              child: Text('Show SimpleDialog'),
            ),
          ],
        ),
      ),
    );
  }
}
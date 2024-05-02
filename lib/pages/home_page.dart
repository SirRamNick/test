import 'package:flutter/material.dart';
import 'package:test_app/services/firebase.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirestoreService items = FirestoreService();
  TextEditingController textEditingController = TextEditingController();

  void submit(String item) {
    items.addItem(item);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textEditingController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () => submit(textEditingController.text),
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}

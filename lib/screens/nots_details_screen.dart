import 'package:flutter/material.dart';

import '../widgets/custom_textformfeild.dart';

class NotesDetailsScreen extends StatefulWidget {
  String appbarTitle;

  NotesDetailsScreen({required this.appbarTitle});

  @override
  State<NotesDetailsScreen> createState() => _NotesDetailsScreenState();
}

class _NotesDetailsScreenState extends State<NotesDetailsScreen> {
  TextEditingController titleTextController = new TextEditingController();
  TextEditingController descriptionTextController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note Details Screen',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back, size: 30,color: Colors.black,), onPressed: () {
                Navigator.pop(context);
          }),
          backgroundColor: Colors.lime,
          centerTitle: true,
          title: Text(
            widget.appbarTitle,
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w900, fontSize: 30),
          ),
        ),
        body: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customTextFormField(
                  hintText: "Enter Title",
                  labelText: "Title",
                  controller: titleTextController),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: customTextFormField(
                  hintText: "Enter Description",
                  labelText: "Description",
                  controller: descriptionTextController),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.green),
                    shadowColor:
                        MaterialStatePropertyAll<Color>(Colors.greenAccent),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("SAVE"),
                )),
                Expanded(
                    child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.red),
                    shadowColor:
                        MaterialStatePropertyAll<Color>(Colors.redAccent),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("DELETE"),
                )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

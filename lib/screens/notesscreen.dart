import 'package:flutter/material.dart';
import 'package:sql_database_project/screens/nots_details_screen.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Notes",
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
        ),
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            NotesDetailsScreen(appbarTitle: 'Edit Notes')));
              },
              leading: CircleAvatar(
                backgroundColor: Colors.green,
                child: Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.black,
                  size: 30,
                ),
              ),
              title: Text("Notes$index"),
              subtitle: Text("Subtitle$index"),
              trailing: Icon(Icons.delete),
            );
          }),
      floatingActionButton: FloatingActionButton(
        tooltip: "Add Notes",
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => NotesDetailsScreen(
                        appbarTitle: 'Add Notes',
                      )));
        },
        child: Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }
}

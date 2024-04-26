import 'package:flutter/material.dart';
import 'package:note_app/widgets/notesview/custom_appbar.dart';
import 'package:note_app/widgets/notesview/custom_listview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(50),
          ),
        ),
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        child: Column(
          children: [
            CustomAppbar(),
            Expanded(
              child: CustomListView(),
            ),
          ],
        ),
      ),
    );
  }
}

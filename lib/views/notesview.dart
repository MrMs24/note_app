import 'package:flutter/material.dart';
import 'package:note_app/widgets/notesview/custom_appbar.dart';
import 'package:note_app/widgets/notesview/custom_floatingbutton.dart';
import 'package:note_app/widgets/notesview/custom_listview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomFloatingButton(),
      body: Padding(
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

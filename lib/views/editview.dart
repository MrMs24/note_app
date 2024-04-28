import 'package:flutter/material.dart';
import 'package:note_app/widgets/notesview/custom_appbar.dart';
import 'package:note_app/widgets/notesview/custom_textfield.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        child: Column(
          children: [
            CustomAppbar(
              title: "Edit Note",
              iconButton:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.check)),
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomTextField(hinttext: 'title'),
            const SizedBox(
              height: 25,
            ),
            const CustomTextField(
              hinttext: 'content',
              maxline: 5,
            ),
          ],
        ),
      ),
    );
  }
}

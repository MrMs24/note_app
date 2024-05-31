import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/notesview/custom_appbar.dart';
import 'package:note_app/widgets/notesview/custom_textfield.dart';

class EditView extends StatefulWidget {
  const EditView({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditView> createState() => _EditViewState();
}

class _EditViewState extends State<EditView> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
        child: Column(
          children: [
            CustomAppbar(
              title: "Edit Note",
              iconButton: IconButton(
                  onPressed: () {
                    widget.note.title = title ?? widget.note.title;
                    widget.note.subTitle = subtitle ?? widget.note.subTitle;
                    widget.note.save();
                  },
                  icon: const Icon(Icons.check)),
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
              onchanged: (p0) {
                title = p0;
              },
              hinttext: widget.note.title,
            ),
            const SizedBox(
              height: 25,
            ),
            CustomTextField(
              onchanged: (p0) {
                subtitle = p0;
              },
              hinttext: widget.note.subTitle,
              maxline: 5,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/widgets/notesview/custom_button.dart';
import 'package:note_app/widgets/notesview/custom_textfield.dart';

class CustomNoteBottomSheet extends StatelessWidget {
  const CustomNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(
                hinttext: 'title',
              ),
              SizedBox(
                height: 25,
              ),
              CustomTextField(
                hinttext: 'content',
                maxline: 5,
              ),
              SizedBox(
                height: 25,
              ),
              CustomButton(
                text: 'Test',
              )
            ],
          ),
        ),
      ),
    );
  }
}

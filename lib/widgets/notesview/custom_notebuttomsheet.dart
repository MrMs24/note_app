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
          child: AddNoteForm(),
        ),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            onsaved: (p0) {
              title = p0;
            },
            hinttext: 'title',
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            onsaved: (p0) {
              subtitle = p0;
            },
            hinttext: 'content',
            maxline: 5,
          ),
          const SizedBox(
            height: 25,
          ),
          CustomButton(
            onpressed: () {
              if (formkey.currentState!.validate()) {
                formkey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            text: 'Add',
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hinttext,
    this.maxline = 1,
    this.onsaved,
    this.onchanged,
  });
  final String hinttext;
  final int maxline;
  final void Function(String?)? onsaved;
  final void Function(String?)? onchanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is required';
        } else {
          return null;
        }
      },
      onSaved: onsaved,
      onChanged: onchanged,
      maxLines: maxline,
      decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(color: primarycolor),
          contentPadding: const EdgeInsets.all(8),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(color: primarycolor),
          )),
    );
  }
}

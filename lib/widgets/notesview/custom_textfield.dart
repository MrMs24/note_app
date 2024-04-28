import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hinttext,
    this.onchanged,
    this.maxline = 1,
  });
  final String hinttext;
  final int maxline;

  final Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
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
      onChanged: onchanged,
    );
  }
}

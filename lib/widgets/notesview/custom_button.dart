import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(secondarycolor),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
      onPressed: () {},
      child: Center(
          child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      )),
    );
  }
}

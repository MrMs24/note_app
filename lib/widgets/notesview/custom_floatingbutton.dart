import 'package:flutter/material.dart';
import 'package:note_app/widgets/notesview/custom_notebuttomsheet.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return const CustomNoteBottomSheet();
          },
        );
      },
      child: const Icon(Icons.add),
    );
  }
}

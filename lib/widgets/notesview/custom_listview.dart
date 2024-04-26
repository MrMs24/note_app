import 'package:flutter/material.dart';
import 'package:note_app/widgets/notesview/custom_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 40,
      itemBuilder: (context, index) {
        return const CustomCard();
      },
    );
  }
}

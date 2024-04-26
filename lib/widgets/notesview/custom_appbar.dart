import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Notes",
          style: TextStyle(fontSize: 26),
        ),
        const Spacer(
          flex: 1,
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.2),
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar(
      {super.key, required this.iconButton, required this.title});
  final IconButton iconButton;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 26),
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
            child: iconButton,
          ),
        ],
      ),
    );
  }
}

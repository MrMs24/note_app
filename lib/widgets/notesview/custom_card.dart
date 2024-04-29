import 'package:flutter/material.dart';
import 'package:note_app/views/editview.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditView(),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: const Text(
                    'Flutter tips',
                    style: TextStyle(fontSize: 32, color: Colors.black),
                  ),
                  subtitle: const Text(
                    'build your own career with mohamed sayed',
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                ),
                const Text("jun 24/2024",
                    style: TextStyle(fontSize: 12, color: Colors.black54))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

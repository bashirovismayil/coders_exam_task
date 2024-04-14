import 'package:flutter/material.dart';
import 'package:exam_task_api/ui/deleted_page.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "API Task",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.delete_rounded),
          color: Colors.blue,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DeletedPage()),
            );
          },
        ),
      ],
    );
    ;
  }
}

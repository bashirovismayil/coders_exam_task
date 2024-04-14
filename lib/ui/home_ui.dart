import 'package:flutter/material.dart';
import 'package:exam_task_api/ui/card_design.dart';
import 'package:exam_task_api/ui/custom_app_bar.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: CustomAppBar(),
      ),
      body: const CardDesign(),
    );
  }
}

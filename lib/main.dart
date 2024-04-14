import 'package:flutter/material.dart';
import 'package:exam_task_api/ui/home_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:exam_task_api/cubit/products_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => ProductsCubit()..fetchProducts(),
        child: const MyHomePage(),
      ),
    );
  }
}

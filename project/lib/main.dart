import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/data/repository/main_repository.dart';

import 'package:project/view/home_screen/presentation/home_screen.dart';

import 'view/home_screen/bloc/bloc/home_screen_bloc.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = Repository();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeScreenBloc(repository),
        ),
      ],
      child: Builder(builder: (context) {
        return MaterialApp(
          home: Scaffold(body: HomeScreen()),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/data/repository/description_repository.dart';
import 'package:project/data/repository/main_repository.dart';

import 'package:project/view/home_screen/presentation/home_screen.dart';
import 'package:project/view/product_description/bloc/product_description_bloc.dart';

import 'view/home_screen/bloc/bloc/home_screen_bloc.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final repository = Repository();
    final repository_description = RepositoryInformation();
    ;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeScreenBloc(repository),
        ),
        BlocProvider(
          create: (context) => ProductDescriptionBloc(repository_description),
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

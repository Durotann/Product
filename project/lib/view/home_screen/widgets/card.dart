// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:project/view/home_screen/bloc/bloc/home_screen_bloc.dart';

class Product extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  const Product({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(builder: (
      context,
      state,
    ) {
      if (state is ProductLoaded) {
        return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    'https://api.altyn-kovri.ru${image}',
                    scale: 5.5,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${title}",
                    style: TextStyle(fontSize: 10, wordSpacing: 9),
                  ),
                  Text(
                    "${price}",
                    style: TextStyle(fontSize: 10, wordSpacing: 9),
                  ),
                ],
              ),
            ));
      }
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    });
  }
}

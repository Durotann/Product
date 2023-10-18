// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:project/view/home_screen/bloc/bloc/home_screen_bloc.dart';

class Product extends StatelessWidget {
  final String title;
  final String image;
  final String price;

  final VoidCallback press;
  const Product({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(builder: (
      context,
      state,
    ) {
      if (state is ProductLoaded) {
        return InkWell(
          onTap: press,
          child: Container(
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [],
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 150,
                  child: Image.network(
                    'https://api.altyn-kovri.ru${image}',
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "${title}",
                  softWrap: true,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "${price}",
                  maxLines: 10,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),
        );
      }
      return Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    });
  }
}

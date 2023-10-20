import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/data/repository/basket_repository.dart';
import 'package:project/view/home_screen/bloc/bloc/home_screen_bloc.dart';
import 'package:project/view/home_screen/widgets/card.dart';
import 'package:project/view/product_description/presentation/product_description.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void initState() {
    context.read<HomeScreenBloc>().add(ProductLoad());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        if (state is ProductLoading) {
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }
        if (state is ProductLoaded) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                "MainScreen",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: state.data.results.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Product(
                          title: '${state.data.results[index].title}',
                          image: '${state.data.results[index].image}',
                          price: '${state.data.results[index].price}',
                          press: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductInformation(
                                          id: state.data.results[index].id,
                                        )));
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        }
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}

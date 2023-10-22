import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/data/model/atribute_model.dart';
import 'package:project/data/model/atributelist_model.dart';
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
    context.read<HomeScreenBloc>().add(AtributeLoad());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) {
      if (state is ProductLoading) {
        return const Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      }
      if (state is ProductLoaded) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "MainScreen",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: SafeArea(
            child: ListView(children: [
              Column(
                children: [
                  Text("Размер"),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ListView.builder(
                      itemCount: state.data1[0].properties.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 90,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: MaterialButton(
                                onPressed: () {
                                  context.read<HomeScreenBloc>().add(ProductLoad(
                                      arg1: '${state.data1[0].query_arg}',
                                      arg2:
                                          "${state.data1[0].properties[index].title}"));
                                },
                                child: Text(
                                  state.data1[0].properties[index].title,
                                  style: TextStyle(fontSize: 12),
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                  Text("Цвет"),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ListView.builder(
                      itemCount: state.data1[1].properties.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 90,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: MaterialButton(
                                onPressed: () {
                                  context.read<HomeScreenBloc>().add(ProductLoad(
                                      arg1: '${state.data1[1].query_arg}',
                                      arg2:
                                          "${state.data1[1].properties[index].title}"));
                                },
                                child: Text(
                                  state.data1[1].properties[index].title,
                                  style: TextStyle(fontSize: 12),
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                  Text("Коллекция"),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ListView.builder(
                      itemCount: state.data1[2].properties.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 90,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: MaterialButton(
                                onPressed: () {
                                  context.read<HomeScreenBloc>().add(ProductLoad(
                                      arg1: '${state.data1[2].query_arg}',
                                      arg2:
                                          "${state.data1[2].properties[index].title}"));
                                },
                                child: Text(
                                  state.data1[2].properties[index].title,
                                  style: TextStyle(fontSize: 12),
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                  Text("Cостав"),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ListView.builder(
                      itemCount: state.data1[3].properties.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 90,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: MaterialButton(
                                onPressed: () {
                                  context.read<HomeScreenBloc>().add(ProductLoad(
                                      arg1: '${state.data1[3].query_arg}',
                                      arg2:
                                          "${state.data1[3].properties[index].title}"));
                                },
                                child: Text(
                                  state.data1[3].properties[index].title,
                                  style: TextStyle(fontSize: 12),
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                  Text("Стиль"),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ListView.builder(
                      itemCount: state.data1[4].properties.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 90,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: MaterialButton(
                                onPressed: () {
                                  context.read<HomeScreenBloc>().add(ProductLoad(
                                      arg1: '${state.data1[4].query_arg}',
                                      arg2:
                                          "${state.data1[4].properties[index].title}"));
                                },
                                child: Text(
                                  state.data1[4].properties[index].title,
                                  style: TextStyle(fontSize: 12),
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                  Text("Форма"),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ListView.builder(
                      itemCount: state.data1[5].properties.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 90,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: MaterialButton(
                                onPressed: () {
                                  context.read<HomeScreenBloc>().add(ProductLoad(
                                      arg1: '${state.data1[5].query_arg}',
                                      arg2:
                                          "${state.data1[5].properties[index].title}"));
                                },
                                child: Text(
                                  state.data1[5].properties[index].title,
                                  style: TextStyle(fontSize: 12),
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                  Text("Страна"),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ListView.builder(
                      itemCount: state.data1[6].properties.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 90,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: MaterialButton(
                                onPressed: () {
                                  context.read<HomeScreenBloc>().add(ProductLoad(
                                      arg1: '${state.data1[6].query_arg}',
                                      arg2:
                                          "${state.data1[6].properties[index].title}"));
                                },
                                child: Text(
                                  state.data1[6].properties[index].title,
                                  style: TextStyle(fontSize: 12),
                                )),
                          ),
                        );
                      },
                    ),
                  ),
                  Text("Состав ворса"),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: ListView.builder(
                      itemCount: state.data1[7].properties.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 90,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(20)),
                            child: MaterialButton(
                                onPressed: () {
                                  context.read<HomeScreenBloc>().add(ProductLoad(
                                      arg1: '${state.data1[7].query_arg}',
                                      arg2:
                                          "${state.data1[7].properties[index].title}"));
                                },
                                child: Text(
                                  state.data1[7].properties[index].title,
                                  style: TextStyle(fontSize: 12),
                                )),
                          ),
                        );
                      },
                    ),
                  ),
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
            ]),
          ),
        );
      }
      print(state);
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    });
  }
}

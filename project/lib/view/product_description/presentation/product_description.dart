// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:project/view/product_description/bloc/product_description_bloc.dart';

class ProductInformation extends StatefulWidget {
  const ProductInformation({
    Key? key,
    required this.id,
  }) : super(key: key);
  final int id;

  @override
  State<ProductInformation> createState() => _ProductInformationState();
}

class _ProductInformationState extends State<ProductInformation> {
  final CarouselController carouselController = CarouselController();
  String text = '';
  String atribute = '';
  String title = '';
  int value = 0;
  int activeIndex = 0;
  @override
  void initState() {
    context
        .read<ProductDescriptionBloc>()
        .add(ProductDescriptionLoad(id: widget.id));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDescriptionBloc, ProductDescriptionState>(
      builder: (context, state) {
        if (state is ProductDescriptionLoaded) {
          return Scaffold(
              appBar: AppBar(
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                      ))
                ],
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                ),
                title: Text(
                  "Description",
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: SafeArea(
                child: ListView(children: [
                  Column(children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CarouselSlider.builder(
                                      options: CarouselOptions(
                                        height: 247,
                                        viewportFraction: 1,
                                        enableInfiniteScroll: true,
                                        reverse: false,
                                        onPageChanged: (index, reason) =>
                                            setState(
                                          () => activeIndex = index,
                                        ),
                                        enlargeCenterPage: true,
                                        enlargeFactor: 0.3,
                                        scrollDirection: Axis.horizontal,
                                      ),
                                      itemCount: state.data.item_gallery.length,
                                      itemBuilder: (context, index, realIndex) {
                                        return Container(
                                          width: 400,
                                          height: 257,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.network(
                                                    'https://api.altyn-kovri.ru${state.data.item_gallery[index].image.thumbnail}',
                                                    scale: 10,
                                                    loadingBuilder: (context,
                                                        child,
                                                        loadingProgress) {
                                                      return Container(
                                                        color: Colors.black,
                                                      );
                                                    },
                                                  ).image)),
                                        );
                                      },
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 150,
                                        height: 24,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: state.data.item_gallery
                                              .asMap()
                                              .entries
                                              .map((entry) {
                                            return GestureDetector(
                                              onTap: () => carouselController
                                                  .animateToPage(entry.key),
                                              child: Container(
                                                width: 10.0,
                                                height: 10.0,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8.0,
                                                        horizontal: 4.0),
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: (Theme.of(context)
                                                                    .brightness ==
                                                                Brightness.dark
                                                            ? Colors.white
                                                            : Colors.black)
                                                        .withOpacity(
                                                            activeIndex ==
                                                                    entry.key
                                                                ? 0.9
                                                                : 0.4)),
                                              ),
                                            );
                                          }).toList(),
                                        ),
                                      ),
                                    )
                                  ]),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "${state.data.title}",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1),
                        itemCount: state.data.variations.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[400],
                                  borderRadius: BorderRadius.circular(10)),
                              child: MaterialButton(
                                onPressed: () {
                                  setState(() {
                                    text = state.data.variations[index].price
                                        .toString();
                                    value = state
                                        .data.variations[index].stock_amount;
                                    atribute =
                                        state.data.properties[index].attribute;
                                    title = state.data.properties[index].title;
                                  });
                                },
                                child: Center(
                                  child: Text(
                                    "${state.data.variations[index].height} х ${state.data.variations[index].width}",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "${state.data.description}",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("${atribute}"),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "${title}",
                            )
                          ]),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("цена ${text} ₽"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("ост : ${value}")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Center(
                            child: Text("В корзину"),
                          )),
                    )
                  ]),
                ]),
              ));
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

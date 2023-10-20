import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/view/basket/bloc/basket_bloc.dart';

class BasketScreen extends StatefulWidget {
  const BasketScreen({
    super.key,
  });

  @override
  State<BasketScreen> createState() => _BasketScreenState();
}

class _BasketScreenState extends State<BasketScreen> {
  @override
  void initState() {
    context.read<BasketBloc>().add(BasketLoad());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasketBloc, BasketState>(
      builder: (context, state) {
        if (state is BasketLoaded) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              centerTitle: true,
              title: Text(
                "Корзина",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            body: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 500,
                  child: ListView.builder(
                    itemCount: state.data['cart_lines'].length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 30),
                        child: Container(
                          height: 400,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Image.network(
                                "https://api.altyn-kovri.ru${state.data['cart_lines'][index]['item']['image']}",
                                scale: 5,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                  "${state.data['cart_lines'][index]['item']['title']}"),
                              Text(
                                  "${state.data['cart_lines'][index]['item']['price']}"),
                              Text(
                                  "${state.data['cart_lines'][index]['size']}"),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                    width: 200,
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      "общая цена: ${state.data['cart_lines'][0]['total']}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ))),
              ],
            ),
          );
        }
        ;
        return Scaffold(
          body: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}

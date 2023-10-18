import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project/data/repository/main_repository.dart';

import '../../../data/model/description_model.dart';
import '../../../data/repository/description_repository.dart';
import '../../home_screen/bloc/bloc/home_screen_bloc.dart';

part 'product_description_event.dart';
part 'product_description_state.dart';

class ProductDescriptionBloc
    extends Bloc<ProductDescriptionEvent, ProductDescriptionState> {
  ProductDescriptionBloc(
    this.repository,
  ) : super(ProductDescriptionInitial()) {
    on<ProductDescriptionLoad>(_onProductDescriptionLoad);
  }

  final RepositoryInformation repository;

  void _onProductDescriptionLoad(
      ProductDescriptionLoad event, Emitter emit) async {
    try {
      emit(ProductDescriptionLoading());
      final result = await repository.getData(event.id);
      emit(ProductDescriptionLoaded(data: result));
    } catch (e) {
      print('error ${e}');
    }
  }
}

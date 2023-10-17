import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project/data/repository/main_repository.dart';

import '../../../../data/model/main_model.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc(this.repository) : super(HomeScreenInitial()) {
    on<ProductLoad>(_onProductScreenLoad);
  }
  final Repository repository;

  void _onProductScreenLoad(ProductLoad event, Emitter emit) async {
    try {
      emit(ProductLoading());
      final result = await repository.getData();
      emit(ProductLoaded(data: result));
    } catch (e) {
      print('error ${e}');
    }
  }
}

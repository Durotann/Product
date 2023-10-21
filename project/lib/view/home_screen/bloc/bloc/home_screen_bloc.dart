import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project/data/model/atribute_model.dart';
import 'package:project/data/model/atributelist_model.dart';
import 'package:project/data/repository/atributes_repository.dart';
import 'package:project/data/repository/main_repository.dart';

import '../../../../data/model/main_model.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';

class HomeScreenBloc extends Bloc<HomeScreenEvent, HomeScreenState> {
  HomeScreenBloc(this.repository, this.atributerepository)
      : super(HomeScreenInitial()) {
    on<ProductLoad>(_onProductScreenLoad);
    on<AtributeLoad>(_onAtributeLoad);
  }
  final Repository repository;

  final AtributeRepository atributerepository;
  void _onProductScreenLoad(ProductLoad event, Emitter emit) async {
    try {
      emit(ProductLoading());
      final result =
          await repository.getData(arg1: event.arg1, arg2: event.arg2);
      final result1 = await atributerepository.getData();
      emit(ProductLoaded(data: result, data1: result1));
    } catch (e) {
      print('error ${e}');
    }
  }

  void _onAtributeLoad(AtributeLoad event, Emitter emit) async {
    try {
      // emit(AtributeLoading());
      final result1 = await atributerepository.getData();
      emit(AtributeLoaded(data1: result1));
    } catch (e) {
      print('errors ${e}');
    }
  }
}

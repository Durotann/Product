import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:project/data/repository/basket_repository.dart';

part 'basket_event.dart';
part 'basket_state.dart';

class BasketBloc extends Bloc<BasketEvent, BasketState> {
  BasketBloc(this.repository) : super(BasketInitial()) {
    on<BasketAdd>(_onBasketAdd);
    on<BasketLoad>(_onBasketLoad);
  }
  final PostRepository repository;
  void _onBasketAdd(BasketAdd event, Emitter emit) async {
    try {
      emit(BasketLoading());

      final result = await repository.getAddData(
        event.variation_id,
        event.product_id,
      );
      emit(BasketAddLoaded(data: result));
      print(result);
    } catch (e) {
      print('error ${e}');
    }
  }

  void _onBasketLoad(BasketLoad event, Emitter emit) async {
    try {
      emit(BasketLoading());

      final result = await repository.getData();
      emit(BasketLoaded(data: result));
      print(result);
    } catch (e) {
      print('error ${e}');
    }
  }
}

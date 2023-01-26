import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_project/models/models.dart';
import 'package:flutter_project/services/services.dart';

part 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  FoodCubit() : super(FoodInitial());

  Future<void> getFood() async {
    ApiReturnValue<List<Food>> result = await FoodServices.getFood();

    if (result.value != null) {
      emit(FoodLoadingFailed(result.massage));
    } else {}
  }
}

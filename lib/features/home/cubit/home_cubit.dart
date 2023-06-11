import 'package:bloc/bloc.dart';
import 'package:weather/app/core/enums.dart';
import 'package:weather/model/weather_model.dart';
import 'package:weather/repositories/weather_repostiories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.weatherRepository) : super(HomeState());
  final WeatherRepository weatherRepository;
  Future<void> getWeatherModel({required String city}) async {
    emit(
      HomeState(status: Status.loading),
    );
    try {
      final weatherModel = await weatherRepository.getWeatherModel(city: city);
      emit(
        HomeState(
          status: Status.success,
          model: weatherModel,
        ),
      );
    } catch (error) {
      emit(
        HomeState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}

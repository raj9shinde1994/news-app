import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:news_api_app/Models/news.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent,NewsState> {
  NewsBloc() : super(const InitialState());


  @override
  Stream<NewsState> mapEventToState(
      NewsEvent event) async* {
   /* if (event is RotateEvent) {
      yield RotatedState(angle: event.angle);
    }*/
  }

//final GameRepository gameRepository;
/*
  void _mapEventToState(
      NewsEvent event) async {
    */ /*try {
      emit(state.copyWith(status: GamesByCategoryStatus.loading));

      final gamesByCategory =
      await gameRepository.getGamesByCategory(event.idSelected);
      emit(
        state.copyWith(
          status: GamesByCategoryStatus.success,
          games: gamesByCategory,
          categoryName: event.categoryName,
        ),
      );
    } catch (error) {
      emit(state.copyWith(status: GamesByCategoryStatus.error));
    }*/ /*
  }*/
}

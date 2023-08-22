import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:testtest/domain/export.dart';

part 'home_screen_state.dart';
part 'home_screen_cubit.freezed.dart';

@injectable
class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit({required this.repository}) : super(const HomeScreenState());
  final Repository repository;

  Future<String> getFirstName() async {
    final json = await repository.fetchUser();

     return json;
  }
}

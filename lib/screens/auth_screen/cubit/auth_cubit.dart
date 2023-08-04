import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testtest/domain/repository.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.repository}) : super(const AuthState());
  final Repository repository;

  ({int age, String name}) testVoid() {
    final response = repository.fetchUser();
    return (age: response.age, name: response.name);
  }
}

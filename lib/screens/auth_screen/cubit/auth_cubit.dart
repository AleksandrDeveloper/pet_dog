import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testtest/domain/repository.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit({required this.repository}) : super(const AuthState());
  final Repository repository;

  Future<void> goRegistration({
    required String login,
    required String password,
  }) async {
    final response =
        await repository.goRegistration(login: login, password: password);
    print('massege = ${response}');
  }
}

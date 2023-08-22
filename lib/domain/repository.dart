import 'package:injectable/injectable.dart';
import 'package:testtest/domain/service.dart';

abstract class BaseRepository {
  Future<String> fetchUser();
  Future<String> goRegistration({
    required String login,
    required String password,
  });
}

@injectable
class Repository implements BaseRepository {
  Repository({required this.service});

  final Service service;

  @override
  Future<String> fetchUser() => service.fetchUser();

  @override
  Future<String> goRegistration({required String login, required String password}) => service.goRegistration(login: login, password: password);
}

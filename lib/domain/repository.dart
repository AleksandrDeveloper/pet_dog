import 'package:injectable/injectable.dart';
import 'package:testtest/domain/service.dart';

abstract class BaseRepository {
  void fetchUser() {}
}

@injectable
class Repository implements BaseRepository {
  Repository({required this.service});

  final Service service;

  @override
  ({String name, int age}) fetchUser() => service.fetchUser();
}

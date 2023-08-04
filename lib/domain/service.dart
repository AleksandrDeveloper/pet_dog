import 'package:injectable/injectable.dart';

@injectable
class Service {
  ({String name, int age}) fetchUser() {
    return (name: 'Alex', age: 33);
  }
}

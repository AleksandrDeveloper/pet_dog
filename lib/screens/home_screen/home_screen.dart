import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:testtest/modals/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pet Dog'),
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('HomeScreen'),
          ),
          ElevatedButton(
              onPressed: () {
                final user = User(name: 'Alex Frost', age: 33);
                context.go('/auth', extra: user);
              },
              child: Text('Go To')),
        ],
      ),
    );
  }
}

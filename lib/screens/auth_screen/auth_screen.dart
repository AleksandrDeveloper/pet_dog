import 'package:flutter/material.dart';
import 'package:testtest/modals/user.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key, required this.user});

  final User user;

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('AuthScreen'),
        backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
      ),
      body: Center(
        child: Text(widget.user.name),
      ),
    );
  }
}

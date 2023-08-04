import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage transitionPage<T>({
  required Widget child,
  required LocalKey key,
}) {
  return CustomTransitionPage(
      key: key,
      child: child,
      transitionsBuilder: (
          _,
          animation,
          secondaryAnimation,
          child,
          ) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      });
}

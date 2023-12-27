import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';

Widget animationItem(Widget child, String key,
    {Duration? duration, Offset? begin}) {
  return AnimateIfVisible(
    reAnimateOnVisibility: true,
    key: Key(key),
    duration: duration ?? const Duration(milliseconds: 300),
    builder: (context, animation) {
      return FadeTransition(
        opacity: Tween<double>(
          begin: 0,
          end: 1,
        ).animate(animation),
        child: SlideTransition(
          position: Tween<Offset>(
            begin: begin ?? const Offset(0, -0.1),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
      );
    },
  );
}

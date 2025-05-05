import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: LoadingAnimationWidget.fourRotatingDots(
            color: const Color.fromARGB(255, 152, 28, 28),
            size: 50,
          ),
        ),
      ),
    );
  }
}

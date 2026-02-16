import 'package:flutter/material.dart';

class SuperImageLoading extends StatelessWidget {
  const SuperImageLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(strokeWidth: 2),
    );
  }
}

import 'package:flutter/material.dart';

class SuperImageGestureController {
  final TransformationController controller = TransformationController();

  double minScale = 1.0;
  double maxScale = 4.0;

  void reset() {
    controller.value = Matrix4.identity();
  }

  void doubleTapZoom(Offset position) {
    final scale = controller.value.getMaxScaleOnAxis();

    if (scale > 1.0) {
      reset();
    } else {
      controller.value = Matrix4.identity()
        ..translate(-position.dx * 2, -position.dy * 2)
        ..scale(2.5);
    }
  }
}

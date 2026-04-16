import 'package:flutter/widgets.dart';
import 'package:demo_flappy_physics_def/demo_flappy_physics_def.dart';

/// Floaty, low-gravity alternative to [SimplePhysics].
///
/// Designed for a more forgiving game feel: weaker gravity, softer jumps,
/// and a small collision tolerance so near-misses aren't punished.
class AlternativePhysics extends FlappyPhysicsDefinition {
  static const double _collisionTolerance = 2.0;

  @override
  double get gravity => 4.9;

  @override
  double get jumpVelocity => -3.0;

  @override
  void update(double dt) {
    // Physics tick — the engine owns per-entity state; this plugin only
    // supplies the tuning constants and collision policy.
  }

  @override
  bool checkCollision(Rect a, Rect b) {
    // Shrink both rects inward before testing — a gentler collision model
    // than the exact-overlap behavior of SimplePhysics.
    return a.deflate(_collisionTolerance).overlaps(b.deflate(_collisionTolerance));
  }

  @override
  Widget buildUI(BuildContext context) {
    return const SizedBox.shrink();
  }
}

# demo_alternative_physics

Single-package MSS plugin — an alternative `FlappyPhysicsDefinition`
implementation for the demo Flappy Bird game. Standalone repo;
demonstrates the non-subpath publishing case.

## Rules that aren't obvious from one file

- **Cross-repo path dep**: `pubspec.yaml` points at
  `path: ../demo_flappybird/demo_flappy_physics_def`. This only resolves
  when both repos are checked out as siblings locally. The MSS combiner
  collapses every reference to `demo_flappy_physics_def` (across all
  cloned plugin sources) via `dependency_overrides`, so the path is a
  dev-time convenience only — at build time a single canonical clone
  backs every reference.
- **Drop-in replacement** for `demo_simple_physics` (from `demo_flappybird`).
  Users pick one or the other when assembling `demo_my_flappybird`; the
  physics module interface is what the app consumes.
- **Gameplay knobs** — floatier gravity, gentler jump, 2px collision
  tolerance. See [`README.md`](README.md) for the table. Keep the knobs
  distinct from `demo_simple_physics` or there's nothing to demonstrate.

## Dev loop

```bash
flutter pub get
flutter analyze
```

End-to-end: assemble `demo_my_flappybird` with this plugin (in place of
`demo_simple_physics`) via the MSS client.

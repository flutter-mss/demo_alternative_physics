# demo_alternative_physics

An alternative physics implementation for the demo Flappy Bird game.
A standalone single-package MSS plugin that implements
`FlappyPhysicsDefinition` from
[`demo_flappybird/demo_flappy_physics_def`](https://github.com/flutter-mss/demo_flappybird).

Pairs against [`demo_simple_physics`](https://github.com/flutter-mss/demo_flappybird)
as a drop-in replacement — users assembling an app pick whichever feel they prefer.

## Differences from `demo_simple_physics`

| | simple | alternative |
|---|---|---|
| gravity | 9.8 | 4.9 |
| jump velocity | -4.5 | -3.0 |
| collision | exact overlap | 2px-tolerance overlap |

Net effect: floatier, more forgiving game feel.

## Try it

Download the signed MSS client from
[flutter-mss/mss_releases](https://github.com/flutter-mss/mss_releases/releases/latest),
assemble `demo_my_flappybird` with `demo_alternative_physics` in place of
`demo_simple_physics`.

## License

MIT — see [LICENSE](LICENSE).

import 'package:flame/components.dart';
import 'package:flame/game.dart';

import 'actors/ember.dart';

class EmberQuestGame extends FlameGame {
  late EmberPlayer _ember;

  @override
  Future<void> onLoad() async {
    await images.loadAll([
      'block.png',
      'ember.png',
      'ground.png',
      'heart_half.png',
      'heart.png',
      'star.png',
      'water_enemy.png',
    ]);

    // Everything in this world assumes that the position
    // of the `CameraComponent`s viewfinder (where the camera is looking)
    // is in the top left corner, that's why we set the anchor here.
    camera.viewfinder.anchor = Anchor.topLeft;

    _ember = EmberPlayer(
      position: Vector2(128, canvasSize.y - 70),
    );
    world.add(_ember);
  }
}
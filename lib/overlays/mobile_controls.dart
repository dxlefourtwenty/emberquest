import 'package:flutter/material.dart';
import '../ember_quest.dart';

class MobileControls extends StatelessWidget {
  final EmberQuestGame game;
  const MobileControls({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Left button
            GestureDetector(
              onTapDown: (_) => game.player.horizontalDirection = -1,
              onTapUp: (_) => game.player.horizontalDirection = 0,
              onTapCancel: () => game.player.horizontalDirection = 0,
              child: Image.asset(
                'assets/images/left.png',
                width: 64,
                height: 64,
              ),
            ),

            // Up button (jump)
            GestureDetector(
              onTapDown: (_) {
                game.player.hasJumped = true;
              },
              onTapUp: (_) => game.player.hasJumped = false,
              onTapCancel: () => game.player.hasJumped = false,
              child: Image.asset(
                'assets/images/up.png',
                width: 64,
                height: 64,
              ),
            ),

            // Right button
            GestureDetector(
              onTapDown: (_) => game.player.horizontalDirection = 1,
              onTapUp: (_) => game.player.horizontalDirection = 0,
              onTapCancel: () => game.player.horizontalDirection = 0,
              child: Image.asset(
                'assets/images/right.png',
                width: 64,
                height: 64,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

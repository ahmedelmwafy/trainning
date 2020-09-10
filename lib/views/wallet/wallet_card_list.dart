import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:tawla/views/wallet/wallet_card.dart';

class WalletCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimationLimiter(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: WalletCard(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

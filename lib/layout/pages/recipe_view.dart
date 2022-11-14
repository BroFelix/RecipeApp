import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class RecipeView extends StatelessWidget {
  const RecipeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Iconsax.arrow_left),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Iconsax.more),
          ),
        ],
      ),
      body: Container(),
    );
  }
}

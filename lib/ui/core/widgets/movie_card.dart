import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MovieCard extends ConsumerStatefulWidget {
  const MovieCard({super.key});

  @override
  ConsumerState<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends ConsumerState<MovieCard> {
  @override
  Widget build(BuildContext contex) {
    return Stack(
      children: [
        SizedBox(
          width: 148,
          height: 250,
          child: Column(
            children: [
              Image.network(
                'https://www.researchgate.net/publication/362830447/figure/fig1/AS:11431281096102456@1668081581530/Figura-3-Cartaz-do-filme-Interestelar-de-Christopher-Nolan.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

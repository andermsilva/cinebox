import 'package:cinebox/ui/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class GenresBox extends ConsumerStatefulWidget {
  const GenresBox({super.key});

  @override
  ConsumerState<GenresBox> createState() => _GenresBoxState();
}

class _GenresBoxState extends ConsumerState<GenresBox> {
  final selectedGenre = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,

      child: ListView.builder(
        padding: EdgeInsets.only(left: 16),
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 25,
        itemBuilder: (context, index) {
          return InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              selectedGenre.value = index;
            },
            child: ValueListenableBuilder(
              valueListenable: selectedGenre,
              builder: (_, Value, _) {
                return Container(
                  margin: EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: Value == index
                        ? AppColors.redColor
                        : AppColors.darkGrey,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Center(
                    child: Text(
                      'Item ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

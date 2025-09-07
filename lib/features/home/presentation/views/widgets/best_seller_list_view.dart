import 'package:booklyapp/features/home/presentation/views/widgets/best_seller_scroll_view_iteam.dart';
import 'package:flutter/material.dart';

class DesignBooks extends StatelessWidget {
  const DesignBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: BestSillerIteam(),
        );
      }),
    );
  }
}

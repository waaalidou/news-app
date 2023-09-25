import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "News",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          Text(
            "Cloud",
            style: TextStyle(
              color: Colors.orange,
            ),
          ),
        ],
      ),
    );
  }
}

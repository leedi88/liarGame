import 'package:flutter/material.dart';

class ChangeMemberCountWidget extends StatelessWidget {
  const ChangeMemberCountWidget({
    Key? key,
    required this.onPressedPlus,
    required this.onPressedMinus,
    required this.desc,
  }) : super(key: key);

  final String desc;
  final VoidCallback onPressedPlus;
  final VoidCallback onPressedMinus;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: onPressedPlus,
          icon: const Icon(Icons.arrow_upward),
        ),
        Text(desc),
        IconButton(
          onPressed: onPressedMinus,
          icon: const Icon(Icons.arrow_downward),
        ),
      ],
    );
  }
}

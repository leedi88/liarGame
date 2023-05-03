import 'package:flutter/material.dart';

class ChangeMemberCountWidget extends StatefulWidget {
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
  State<ChangeMemberCountWidget> createState() =>
      _ChangeMemberCountWidgetState();
}

class _ChangeMemberCountWidgetState extends State<ChangeMemberCountWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: widget.onPressedPlus,
          icon: const Icon(Icons.arrow_upward),
        ),
        Text(widget.desc),
        IconButton(
          onPressed: widget.onPressedMinus,
          icon: const Icon(Icons.arrow_downward),
        ),
      ],
    );
  }
}

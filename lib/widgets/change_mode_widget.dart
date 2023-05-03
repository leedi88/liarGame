import 'package:flutter/material.dart';

class ChangeModeWidget extends StatefulWidget {
  const ChangeModeWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  State<ChangeModeWidget> createState() => _ChangeModeWidgetState();
}

class _ChangeModeWidgetState extends State<ChangeModeWidget> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: widget.onPressed,
      style: TextButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        backgroundColor: Colors.brown,
      ),
      child: const Text(
        "멀티 모드 참여하기",
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({
    super.key,
    required this.isActive,
  });
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: 14,
      height: 14,
      decoration: ShapeDecoration(
        color: isActive ? const Color(0xFF4DB7F2) : const Color(0xFFA0A3BD),
        shape: const OvalBorder(),
      ),
    );
  }
}

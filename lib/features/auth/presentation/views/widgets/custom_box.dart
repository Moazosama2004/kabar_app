import 'package:flutter/material.dart';

class CustomBox extends StatefulWidget {
  const CustomBox({super.key});

  @override
  State<CustomBox> createState() => _CustomBoxState();
}

class _CustomBoxState extends State<CustomBox> {
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isActive = !isActive;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        margin: const EdgeInsets.all(4),
        width: 20,
        height: 20,
        decoration: ShapeDecoration(
          color: isActive ? const Color(0xFF1877F2) : Colors.transparent,
          shape: RoundedRectangleBorder(
            side: isActive
                ? BorderSide.none
                : const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(3),
          ),
        ),
        child: isActive
            ? const Icon(
                Icons.check,
                color: Colors.white,
                size: 16,
              )
            : null,
      ),
    );
  }
}

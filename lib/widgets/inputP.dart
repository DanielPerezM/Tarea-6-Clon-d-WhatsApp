import 'package:flutter/material.dart';

class InputP extends StatelessWidget {
  final String label;
  final bool obscureText;
  final TextEditingController? controller;
  final double fs;

  const InputP({
    super.key,
    required this.label,
    this.obscureText = false,
    this.controller,
    this.fs = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
            fontSize: fs,
            fontWeight: FontWeight.w400,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        const SizedBox(height: 5),
        TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 223, 183, 183)),
            ),
            border: OutlineInputBorder(),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}

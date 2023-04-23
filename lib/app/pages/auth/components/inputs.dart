import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  final String name;
  final Color? cor;
  final bool obscureText; 

   const Inputs({
    Key? key,
    required this.name,
    this.cor = Colors.white,  this.obscureText = false,
  }) : super(key: key);

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          fillColor: widget.cor,
          filled: true,
          isDense: true,
          hintText: widget.name,
          hintStyle: const TextStyle(
            fontSize: 16,
          ),
        ),
        obscureText: widget.obscureText,
      ),
    );
  }
}

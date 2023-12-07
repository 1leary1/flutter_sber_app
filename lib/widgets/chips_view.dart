import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {

  final String label;

  const MyChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide(color: Theme.of(context).colorScheme.secondaryContainer),
      label: Text(label),
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Theme.of(context).colorScheme.secondaryContainer),
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
    );
  }
}
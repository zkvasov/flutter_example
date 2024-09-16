import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String label;
  final String info;

  const InfoCard({
    super.key,
    required this.label,
    required this.info,
  });

  @override
  Widget build(BuildContext context) => Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text.rich(TextSpan(
            children: [
              TextSpan(
                text: '$label: ',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: info,
              ),
            ],
          )),
        ),
      );
}

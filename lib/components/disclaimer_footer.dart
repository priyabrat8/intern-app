import 'package:flutter/material.dart';

class DisclaimerFooter extends StatelessWidget {
  const DisclaimerFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 32),
      child: Text(
        'Disclaimer: Internships are sourced from public platforms. We are not affiliated with the listed companies.',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
      ),
    );
  }
}

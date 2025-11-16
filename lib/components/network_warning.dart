import 'package:flutter/material.dart';

class NoNetworkBanner extends StatelessWidget {
  const NoNetworkBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.redAccent,
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: const Text(
        '⚠ You are Offline – Showing cached or no data.',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
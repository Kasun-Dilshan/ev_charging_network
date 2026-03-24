import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key, required this.sessionId});
  final String sessionId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Payment')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text('Session: $sessionId'),
          const Text('Mock payment completed'),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: () => context.go('/history'), child: const Text('View History')),
        ]),
      ),
    );
  }
}

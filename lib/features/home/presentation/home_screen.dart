import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeBody(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  const _HomeBody();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text('EV Charging Network', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        ElevatedButton(onPressed: () => context.go('/scan'), child: const Text('Scan QR to Start')),
        ElevatedButton(onPressed: () => context.go('/calculator'), child: const Text('Charging Calculator')),
        ElevatedButton(onPressed: () => context.go('/history'), child: const Text('Charging History')),
        ElevatedButton(onPressed: () => context.go('/admin'), child: const Text('Admin Panel')),
      ],
    );
  }
}

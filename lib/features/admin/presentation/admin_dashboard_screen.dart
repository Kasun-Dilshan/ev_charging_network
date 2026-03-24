import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: ListView(
        children: [
          ListTile(title: const Text('Stations'), onTap: () => context.go('/admin/stations')),
          ListTile(title: const Text('Analytics'), onTap: () => context.go('/admin/analytics')),
          ListTile(title: const Text('Users'), onTap: () => context.go('/admin/users')),
        ],
      ),
    );
  }
}

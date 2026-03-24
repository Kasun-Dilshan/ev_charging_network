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
      padding: const EdgeInsets.all(18),
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 22, 20, 24),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF00A86B), Color(0xFF0BBF95)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF00A86B).withOpacity(0.25),
                blurRadius: 24,
                offset: const Offset(0, 12),
              ),
            ],
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'EV Charging Network',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Charge smarter with live monitoring, QR start, and a premium dashboard.',
                style: TextStyle(color: Colors.white, height: 1.35),
              ),
            ],
          ),
        ),
        const SizedBox(height: 18),
        _FeatureTile(
          title: 'Scan QR to Start Charging',
          subtitle: 'Instantly connect with a nearby station',
          icon: Icons.qr_code_scanner_rounded,
          onTap: () => context.go('/scan'),
        ),
        const SizedBox(height: 12),
        _FeatureTile(
          title: 'Charging Time Calculator',
          subtitle: 'Estimate time and cost before you plug in',
          icon: Icons.calculate_rounded,
          onTap: () => context.go('/calculator'),
        ),
        const SizedBox(height: 12),
        _FeatureTile(
          title: 'Charging History',
          subtitle: 'See all sessions and spending',
          icon: Icons.history_rounded,
          onTap: () => context.go('/history'),
        ),
        const SizedBox(height: 12),
        _FeatureTile(
          title: 'Admin Panel',
          subtitle: 'Manage stations, users, and analytics',
          icon: Icons.admin_panel_settings_rounded,
          onTap: () => context.go('/admin'),
        ),
      ],
    );
  }
}

class _FeatureTile extends StatelessWidget {
  const _FeatureTile({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                height: 48,
                width: 48,
                decoration: BoxDecoration(
                  color: const Color(0xFF00A86B).withOpacity(0.10),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(icon, color: const Color(0xFF00A86B)),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color: Color(0xFF121A2F),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        color: Color(0xFF6C7693),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios_rounded, size: 16),
            ],
          ),
        ),
      ),
    );
  }
}

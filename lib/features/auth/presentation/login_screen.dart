import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFE8FFF5), Color(0xFFEEF4FF), Color(0xFFFFFFFF)],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 460),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 52,
                          width: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color(0xFF00A86B).withOpacity(0.12),
                          ),
                          child: const Icon(
                            Icons.ev_station_rounded,
                            color: Color(0xFF00A86B),
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'Welcome Back',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF0B1020),
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          'Manage charging sessions, monitor stations, and track your EV history in one elegant app.',
                          style: TextStyle(
                            color: Color(0xFF6C7693),
                            height: 1.4,
                          ),
                        ),
                        const SizedBox(height: 24),
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            prefixIcon: const Icon(Icons.mail_outline_rounded),
                            hintText: 'name@example.com',
                          ),
                        ),
                        const SizedBox(height: 12),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: const Icon(Icons.lock_outline_rounded),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.visibility_off_rounded),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton.icon(
                          onPressed: () => context.go('/'),
                          icon: const Icon(Icons.arrow_forward_rounded),
                          label: const Text('Login (Demo)'),
                        ),
                        const SizedBox(height: 10),
                        Center(
                          child: TextButton(
                            onPressed: () => context.go('/signup'),
                            child: const Text('Create new account'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

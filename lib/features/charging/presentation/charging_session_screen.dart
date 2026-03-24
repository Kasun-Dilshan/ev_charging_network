import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ChargingSessionScreen extends StatefulWidget {
  const ChargingSessionScreen({super.key, required this.sessionId});
  final String sessionId;

  @override
  State<ChargingSessionScreen> createState() => _ChargingSessionScreenState();
}

class _ChargingSessionScreenState extends State<ChargingSessionScreen> {
  Duration elapsed = Duration.zero;
  Timer? t;

  @override
  void initState() {
    super.initState();
    t = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() => elapsed += const Duration(seconds: 1));
    });
  }

  @override
  void dispose() {
    t?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Charging Session')),
      body: Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Text('Session: ${widget.sessionId}'),
          Text('Elapsed: ${elapsed.inMinutes} min'),
          const SizedBox(height: 12),
          ElevatedButton(onPressed: () => context.go('/payment/${widget.sessionId}'), child: const Text('Stop & Pay')),
        ]),
      ),
    );
  }
}

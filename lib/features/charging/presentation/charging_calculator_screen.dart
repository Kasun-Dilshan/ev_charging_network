import 'package:flutter/material.dart';

class ChargingCalculatorScreen extends StatefulWidget {
  const ChargingCalculatorScreen({super.key});

  @override
  State<ChargingCalculatorScreen> createState() => _ChargingCalculatorScreenState();
}

class _ChargingCalculatorScreenState extends State<ChargingCalculatorScreen> {
  final cap = TextEditingController(text: '60');
  final from = TextEditingController(text: '20');
  final to = TextEditingController(text: '80');

  @override
  Widget build(BuildContext context) {
    final c = double.tryParse(cap.text) ?? 0;
    final f = double.tryParse(from.text) ?? 0;
    final t = double.tryParse(to.text) ?? 0;
    final needed = (c * (t - f) / 100).clamp(0, 10000);

    return Scaffold(
      appBar: AppBar(title: const Text('Charging Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          TextField(controller: cap, decoration: const InputDecoration(labelText: 'Capacity kWh'), onChanged: (_) => setState(() {})),
          TextField(controller: from, decoration: const InputDecoration(labelText: 'Current %'), onChanged: (_) => setState(() {})),
          TextField(controller: to, decoration: const InputDecoration(labelText: 'Target %'), onChanged: (_) => setState(() {})),
          const SizedBox(height: 16),
          Text('Estimated energy: ${needed.toStringAsFixed(2)} kWh'),
        ]),
      ),
    );
  }
}

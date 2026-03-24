import 'package:flutter/material.dart';

class StationDetailScreen extends StatelessWidget {
  const StationDetailScreen({super.key, required this.stationId});
  final String stationId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Station Detail')),
      body: Center(child: Text('Station ID: $stationId')),
    );
  }
}

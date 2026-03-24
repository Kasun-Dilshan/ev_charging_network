class ChargingSession {
  const ChargingSession({
    required this.id,
    required this.userId,
    required this.stationId,
    required this.stationName,
    required this.startTime,
    this.endTime,
    this.energyKwh = 0,
    required this.pricePerKwh,
    this.isActive = true,
  });

  final String id;
  final String userId;
  final String stationId;
  final String stationName;
  final DateTime startTime;
  final DateTime? endTime;
  final double energyKwh;
  final double pricePerKwh;
  final bool isActive;

  double get totalCost => energyKwh * pricePerKwh;
  Duration get duration => (endTime ?? DateTime.now()).difference(startTime);
}

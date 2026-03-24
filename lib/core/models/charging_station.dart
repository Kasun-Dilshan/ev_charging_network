enum StationStatus { available, busy, offline }
enum ChargerType { fast, normal }

class ChargingStation {
  const ChargingStation({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.status,
    required this.chargerType,
    required this.pricePerKwh,
    this.qrCodeId,
  });

  final String id;
  final String name;
  final double latitude;
  final double longitude;
  final String address;
  final StationStatus status;
  final ChargerType chargerType;
  final double pricePerKwh;
  final String? qrCodeId;
}

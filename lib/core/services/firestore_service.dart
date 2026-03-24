import '../models/charging_session.dart';
import '../models/charging_station.dart';

class FirestoreService {
  // Placeholder in-memory demo data to keep app running until Firebase setup.
  final List<ChargingStation> _stations = const [
    ChargingStation(
      id: 's1',
      name: 'Central Station',
      latitude: 6.9271,
      longitude: 79.8612,
      address: 'Colombo',
      status: StationStatus.available,
      chargerType: ChargerType.fast,
      pricePerKwh: 0.3,
      qrCodeId: 'QR_S1',
    ),
  ];

  final List<ChargingSession> _sessions = [];

  List<ChargingStation> getStations() => _stations;
  ChargingStation? findByQr(String qr) {
    for (final station in _stations) {
      if (station.qrCodeId == qr) return station;
    }
    return null;
  }

  void addSession(ChargingSession s) => _sessions.add(s);
  List<ChargingSession> sessionsByUser(String userId) =>
      _sessions.where((e) => e.userId == userId).toList();
}

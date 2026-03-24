import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uuid/uuid.dart';

import '../../../core/models/charging_session.dart';

final activeSessionProvider = StateProvider<ChargingSession?>((_) => null);

final chargingActionsProvider = Provider((ref) {
  return ChargingActions(ref);
});

class ChargingActions {
  ChargingActions(this.ref);
  final Ref ref;

  void start({
    required String userId,
    required String stationId,
    required String stationName,
    required double pricePerKwh,
  }) {
    ref.read(activeSessionProvider.notifier).state = ChargingSession(
          id: const Uuid().v4(),
          userId: userId,
          stationId: stationId,
          stationName: stationName,
          startTime: DateTime.now(),
          pricePerKwh: pricePerKwh,
        );
  }

  void stop() {
    final current = ref.read(activeSessionProvider);
    if (current == null) return;
    ref.read(activeSessionProvider.notifier).state = ChargingSession(
      id: current.id,
      userId: current.userId,
      stationId: current.stationId,
      stationName: current.stationName,
      startTime: current.startTime,
      endTime: DateTime.now(),
      energyKwh: current.energyKwh,
      pricePerKwh: current.pricePerKwh,
      isActive: false,
    );
  }
}

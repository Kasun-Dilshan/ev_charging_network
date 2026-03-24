import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/services/firestore_service.dart';

final firestoreProvider = Provider((_) => FirestoreService());
final stationsProvider = Provider((ref) => ref.watch(firestoreProvider).getStations());

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/login_screen.dart';
import '../../features/auth/presentation/signup_screen.dart';
import '../../features/charging/presentation/charging_calculator_screen.dart';
import '../../features/charging/presentation/charging_session_screen.dart';
import '../../features/charging/presentation/payment_screen.dart';
import '../../features/charging/presentation/qr_scan_screen.dart';
import '../../features/history/presentation/charging_history_screen.dart';
import '../../features/home/presentation/home_screen.dart';
import '../../features/stations/presentation/station_detail_screen.dart';
import '../../features/admin/presentation/admin_dashboard_screen.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (_, __) => const LoginScreen()),
      GoRoute(path: '/signup', builder: (_, __) => const SignupScreen()),
      GoRoute(path: '/', builder: (_, __) => const HomeScreen()),
      GoRoute(path: '/calculator', builder: (_, __) => const ChargingCalculatorScreen()),
      GoRoute(path: '/scan', builder: (_, __) => const QrScanScreen()),
      GoRoute(path: '/history', builder: (_, __) => const ChargingHistoryScreen()),
      GoRoute(
        path: '/station/:id',
        builder: (_, state) => StationDetailScreen(stationId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/session/:id',
        builder: (_, state) => ChargingSessionScreen(sessionId: state.pathParameters['id']!),
      ),
      GoRoute(
        path: '/payment/:id',
        builder: (_, state) => PaymentScreen(sessionId: state.pathParameters['id']!),
      ),
      GoRoute(path: '/admin', builder: (_, __) => const AdminDashboardScreen()),
    ],
  );
});

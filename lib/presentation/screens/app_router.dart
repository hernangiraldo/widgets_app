import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/const/app_routes.dart';
import 'package:widgets_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widgets_app/presentation/screens/cards/cards_screen.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: AppRoutes.buttons,
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: AppRoutes.cards,
      builder: (context, state) => const CardsScreen(),
    ),
  ],
);

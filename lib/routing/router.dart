import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:summer_project/features/landing_page/presentation/screens/landing_page.dart';
final routerProvider = Provider<GoRouter>((ref){
return  GoRouter(
  initialLocation: '/',
  redirect: (context, state) {
    // add logic if needed
    return '/landing';
  },
  routes: [
    GoRoute(
      path: '/landing',
      name: 'landing_page',
      builder: (context, state) => LandingScreen()
    ),
  ],
);
});
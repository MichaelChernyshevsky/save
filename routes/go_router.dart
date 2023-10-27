


class AppRouter {
  final GoRouter router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        name: 'Splash Screen',
        builder: (BuildContext context, GoRouterState state) =>
            const SplashScreen(),
        routes: [
          GoRoute(
            path: '1',
            name: '1',
            builder: (BuildContext context, GoRouterState state) =>
                const OneScreen(),
            routes: [
              GoRoute(
                path: '1.1',
                name: '1.1',
                builder: (BuildContext context, GoRouterState state) =>
                    const OnePointOne(),
              ),
              
                ],
              ),
              GoRoute(
                path: '2',
                name: '2',
                builder: (BuildContext context, GoRouterState state) =>
                    const TwoScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}



 routerConfig: AppRouter().router,
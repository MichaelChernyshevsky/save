
class AppRoutes {
  static const String app = '/app';
  
  static Map<String, WidgetBuilder> get routes => {
        app: (_) => const App(),
    
      };
}


MaterialApp(
      navigatorKey: NavigatorService.navigatorKey,
      initialRoute: AppRoutes.app,
      routes: AppRoutes.routes,
    );
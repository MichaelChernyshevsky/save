// ignore_for_file: depend_on_referenced_packages

library notification_service;

import 'package:flutter_local_notifications/flutter_local_notifications.dart';


class NotificationService {
  factory NotificationService() {
    return _notificationService;
  }

  NotificationService._internal();
  // Singleton pattern
  static final NotificationService _notificationService = NotificationService._internal();

  static const channelId = '1';

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static const AndroidNotificationDetails _androidNotificationDetails = AndroidNotificationDetails(
    channelId,
    'thecodexhub',
    channelDescription: 'This channel is responsible for all the local notifications',
    priority: Priority.high,
    importance: Importance.high,
  );

  static const DarwinNotificationDetails _iOSNotificationDetails = DarwinNotificationDetails();

  final NotificationDetails notificationDetails = const NotificationDetails(
    android: _androidNotificationDetails,
    iOS: _iOSNotificationDetails,
  );

  Future<void> init() async {
    const androidInitializationSettings = AndroidInitializationSettings('@mipmap/ic_launcher');

    const iOSInitializationSettings = DarwinInitializationSettings(
      defaultPresentAlert: false,
      defaultPresentBadge: false,
      defaultPresentSound: false,
    );

    const initializationSettings = InitializationSettings(
      android: androidInitializationSettings,
      iOS: iOSInitializationSettings,
    );

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> requestIOSPermissions() async {
    await flutterLocalNotificationsPlugin.resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  Future<void> showNotification(int id, String title, String body, String payload) async {
    await flutterLocalNotificationsPlugin.show(
      id,
      title,
      body,
      notificationDetails,
      payload: payload,
    );
  }
}
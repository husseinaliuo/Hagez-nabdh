import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  NotificationService._();

  static final NotificationService instance = NotificationService._();

  final FlutterLocalNotificationsPlugin _plugin =
      FlutterLocalNotificationsPlugin();

  static const int _bookingChannelId = 1;

  Future<void> init() async {
    tz.initializeTimeZones();

    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
    const darwinSettings = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    await _plugin.initialize(
      settings: const InitializationSettings(
        android: androidSettings,
        iOS: darwinSettings,
      ),
    );

    await _createChannels();
  }

  Future<void> _createChannels() async {
    final androidImpl = _plugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();
    if (androidImpl == null) return;

    await androidImpl.createNotificationChannel(
      const AndroidNotificationChannel(
        'booking',
        'إشعارات الحجوزات',
        description: 'تأكيدات وتحديثات مواعيد الحجز',
        importance: Importance.high,
      ),
    );
    await androidImpl.createNotificationChannel(
      const AndroidNotificationChannel(
        'reminders',
        'تذكيرات المواعيد',
        description: 'تذكيرك بمواعيد الأطباء القادمة',
        importance: Importance.defaultImportance,
      ),
    );
  }

  Future<bool> requestPermission() async {
    final androidImpl = _plugin.resolvePlatformSpecificImplementation<
        AndroidFlutterLocalNotificationsPlugin>();
    if (androidImpl != null) {
      return await androidImpl.requestNotificationsPermission() ?? false;
    }
    final iosImpl = _plugin.resolvePlatformSpecificImplementation<
        IOSFlutterLocalNotificationsPlugin>();
    return await iosImpl?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        ) ??
        false;
  }

  Future<void> showBookingConfirmed({
    required String doctorName,
    required String date,
    required String time,
  }) async {
    await _plugin.show(
      id: _bookingChannelId,
      title: 'تم تأكيد الحجز',
      body: 'موعدك مع $doctorName في $date الساعة $time',
      notificationDetails: const NotificationDetails(
        android: AndroidNotificationDetails(
          'booking',
          'إشعارات الحجوزات',
          importance: Importance.high,
          priority: Priority.high,
        ),
        iOS: DarwinNotificationDetails(),
      ),
    );
  }

  Future<void> scheduleReminder({
    required int id,
    required String doctorName,
    required String date,
    required String time,
    required DateTime appointmentDateTime,
  }) async {
    final scheduledTime = appointmentDateTime.subtract(const Duration(hours: 1));
    if (scheduledTime.isBefore(DateTime.now())) return;

    await _plugin.zonedSchedule(
      id: id,
      title: 'تذكير بموعدك',
      body: 'لديك موعد مع $doctorName في $date الساعة $time',
      scheduledDate: tz.TZDateTime.from(scheduledTime, tz.local),
      notificationDetails: const NotificationDetails(
        android: AndroidNotificationDetails(
          'reminders',
          'تذكيرات المواعيد',
          importance: Importance.defaultImportance,
          priority: Priority.defaultPriority,
        ),
        iOS: DarwinNotificationDetails(),
      ),
      androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
      matchDateTimeComponents: null,
    );
  }

  Future<void> cancel(int id) async {
    await _plugin.cancel(id: id);
  }

  Future<void> cancelAll() async {
    await _plugin.cancelAll();
  }
}

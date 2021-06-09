import 'package:schedule_manager/model/schedule-item.dart';

class Schedule {
  int id;
  String title;
  DateTime creationTime;
  bool enabled;
  List<ScheduleItem> items;
  ActiveDays activeDays;

  Schedule(id, title, creationTime, enabled, items, activeDays)
      : id = id,
        title = title,
        creationTime = creationTime,
        enabled = enabled,
        items = items,
        activeDays = activeDays;

  Schedule.currentTime(id, title, enabled, items, activeDays)
      : id = id,
        title = title,
        creationTime = DateTime.now(),
        enabled = enabled,
        items = items,
        activeDays = activeDays;
}

class ActiveDays {
  bool mon;
  bool tue;
  bool wed;
  bool thu;
  bool fri;
  bool sat;
  bool sun;

  ActiveDays(mon, tue, wed, thu, fri, sat, sun)
      : mon = mon,
        tue = tue,
        wed = wed,
        thu = thu,
        fri = fri,
        sat = sat,
        sun = sun;

  ActiveDays.noActive()
      : mon = false,
        tue = false,
        wed = false,
        thu = false,
        fri = false,
        sat = false,
        sun = false;
}

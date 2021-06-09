import 'package:schedule_manager/model/time.dart';

class ScheduleItem {
  int id;
  Time time;
  String description;

  ScheduleItem(id, time, description)
      : id = id,
        time = time,
        description = description;

  ScheduleItem.empty()
      : id = 0,
        time = Time.empty(),
        description = "";

  ScheduleItem.currentTime(id, description)
      : id = id,
        time = Time.current(),
        description = description;
}

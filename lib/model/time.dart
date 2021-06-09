class Time {
  int year;
  int month;
  int day;

  Time(year, month, day)
      : year = year,
        month = month,
        day = day;

  Time.empty()
      : year = 0,
        month = 0,
        day = 0;

  Time.current() {
    var now = DateTime.now();
    year = now.year;
    month = now.month;
    day = now.day;
  }

  String toFormatted() {
    var months = [
      '',
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December'
    ];
    return months[month] + " " + day.toString() + ", " + year.toString();
  }

  DateTime toDateTime() {
    return DateTime(year, month, day, 0, 0, 0, 0, 0);
  }
}

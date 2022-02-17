import 'package:intl/intl.dart';

///Class extension base DateTime
class EDateTime {
  /// Weekday constants that are returned by [weekday] method:
  static const int monday = 1;
  static const int tuesday = 2;
  static const int wednesday = 3;
  static const int thursday = 4;
  static const int friday = 5;
  static const int saturday = 6;
  static const int sunday = 7;
  static const int daysPerWeek = 7;

  /// Month constants that are returned by the [month] getter.
  static const int january = 1;
  static const int february = 2;
  static const int march = 3;
  static const int april = 4;
  static const int may = 5;
  static const int june = 6;
  static const int july = 7;
  static const int august = 8;
  static const int september = 9;
  static const int october = 10;
  static const int november = 11;
  static const int december = 12;
  static const int monthsPerYear = 12;

  late DateTime _date;

  ///Default constructor
  EDateTime(int year,
      [int month = 1,
      int day = 1,
      int hour = 0,
      int minute = 0,
      int second = 0,
      int millisecond = 0,
      int microsecond = 0])
      : _date = DateTime(
            year, month, day, hour, minute, second, millisecond, microsecond);

  ///Constructor to convert DateTime to EDateTime
  EDateTime.fromDateTime(DateTime date) : _date = date;

  /// Constructs a [EDateTime] instance specified in the UTC time zone.
  ///
  /// ```dart
  /// var moonLanding = EDateTime.utc(1969, 7, 20, 20, 18, 04);
  /// ```
  ///
  /// When dealing with dates or historic events prefer to use UTC DateTimes,
  /// since they are unaffected by daylight-saving changes and are unaffected
  /// by the local timezone.
  EDateTime.utc(int year,
      [int month = 1,
      int day = 1,
      int hour = 0,
      int minute = 0,
      int second = 0,
      int millisecond = 0,
      int microsecond = 0])
      : _date = DateTime.utc(
            year, month, day, hour, minute, second, millisecond, microsecond);

  /// Constructs a [EDateTime] instance with current date and time in the
  /// local time zone.
  ///
  /// ```dart
  /// var thisInstant = EDateTime.now();
  /// ```
  EDateTime.now() : _date = DateTime.now();

  /// Constructs a new [EDateTime] instance
  /// with the given [millisecondsSinceEpoch].
  ///
  /// If [isUtc] is false then the date is in the local time zone.
  ///
  /// The constructed [EDateTime] represents
  /// 1970-01-01T00:00:00Z + [millisecondsSinceEpoch] ms in the given
  /// time zone (local or UTC).
  EDateTime.fromMillisecondsSinceEpoch(int millisecondsSinceEpoch,
      {bool isUtc = false})
      : _date = DateTime.fromMillisecondsSinceEpoch(millisecondsSinceEpoch,
            isUtc: isUtc);

  /// Constructs a new [EDateTime] instance
  /// with the given [microsecondsSinceEpoch].
  ///
  /// If [isUtc] is false then the date is in the local time zone.
  ///
  /// The constructed [EDateTime] represents
  /// 1970-01-01T00:00:00Z + [microsecondsSinceEpoch] us in the given
  /// time zone (local or UTC).
  EDateTime.fromMicrosecondsSinceEpoch(int microsecondsSinceEpoch,
      {bool isUtc = false})
      : _date = DateTime.fromMicrosecondsSinceEpoch(microsecondsSinceEpoch,
            isUtc: isUtc);

  ///Get day from date
  int get day => _date.day;

  ///Get hour from date
  int get hour => _date.hour;

  ///Get isUtc
  bool get isUtc => _date.isUtc;

  ///Get microsecond from date
  int get microsecond => _date.microsecond;

  ///Get microseconds Since Epoch
  int get microsecondsSinceEpoch => _date.microsecondsSinceEpoch;

  ///Get millisecond from date
  int get millisecond => _date.millisecond;

  ///Get day from milliseconds Since Epoch
  int get millisecondsSinceEpoch => _date.millisecondsSinceEpoch;

  ///Get minute from date
  int get minute => _date.minute;

  ///Get second from date
  int get second => _date.second;

  ///Get weekday from date
  int get weekday => _date.weekday;

  ///Get month from date
  int get month => _date.month;

  ///Get timeZone from date
  String get timeZoneName => _date.timeZoneName;

  ///Get timeZoneOffset from date
  Duration get timeZoneOffset => _date.timeZoneOffset;

  ///Get year from date
  int get year => _date.year;

  ///Add a some value to current date,
  EDateTime add({
    int year = 0,
    int month = 0,
    int day = 0,
    int hour = 0,
    int minute = 0,
    int second = 0,
    int millisecond = 0,
    int microsecond = 0,
  }) {
    _date = DateTime(
        _date.year + year,
        _date.month + month,
        _date.day + day,
        _date.hour + hour,
        _date.minute + minute,
        _date.second + second,
        _date.millisecond + millisecond,
        _date.microsecond + microsecond);
    return EDateTime.fromDateTime(_date);
  }

  /// Compares this EDateTime object to [other],
  /// returning zero if the values are equal.
  ///
  /// Returns a negative value if this EDateTime [isBefore] [other]. It returns 0
  /// if it [isAtSameMomentAs] [other], and returns a positive value otherwise
  /// (when this [isAfter] [other]).
  int compareTo(EDateTime other) {
    return _date.compareTo(other._date);
  }

  ///Difference between two EDateTime
  Duration difference(EDateTime other) {
    return _date.difference(other._date);
  }

  /// Returns true if [this] occurs after [other].
  ///
  /// The comparison is independent
  /// of whether the time is in UTC or in the local time zone.
  ///
  bool isAfter(EDateTime other) {
    return _date.isAfter(other._date);
  }

  /// Returns true if [this] occurs at the same moment as [other].
  ///
  /// The comparison is independent of whether the time is in UTC or in the local
  /// time zone.
  ///
  bool isAtSameMomentAs(EDateTime other) {
    return _date.isAtSameMomentAs(other._date);
  }

  /// Returns true if [this] occurs before [other].
  ///
  /// The comparison is independent
  /// of whether the time is in UTC or in the local time zone.
  ///
  bool isBefore(EDateTime other) {
    return _date.isBefore(other._date);
  }

  EDateTime subtract({
    int year = 0,
    int month = 0,
    int day = 0,
    int hour = 0,
    int minute = 0,
    int second = 0,
    int millisecond = 0,
    int microsecond = 0,
  }) {
    _date = DateTime(
        _date.year - year,
        _date.month - month,
        _date.day - day,
        _date.hour - hour,
        _date.minute - minute,
        _date.second - second,
        _date.millisecond - millisecond,
        _date.microsecond - microsecond);
    return EDateTime.fromDateTime(_date);
  }

  // void subtract(Duration duration) {
  //   _date = _date.subtract(duration);
  // }

  /// Returns an ISO-8601 full-precision extended format representation.
  String toIso8601String() {
    return _date.toIso8601String();
  }

  /// Returns this DateTime value in the local time zone.
  ///
  /// Returns [this] if it is already in the local time zone.
  EDateTime toLocal() {
    return EDateTime.fromDateTime(_date.toLocal());
  }

  /// Returns this DateTime value in the UTC time zone.
  ///
  /// Returns [this] if it is already in UTC.
  EDateTime toUtc() {
    return EDateTime.fromDateTime(_date.toUtc());
  }

  ///Convert EDateTime to String
  @override
  String toString() {
    return _date.toString();
  }

  ///Convert EDateTime tyo format String. Use format from package intl
  String toFormatStr(String? format) {
    if (format == null) {
      return toString();
    } else {
      return DateFormat(format).format(_date);
    }
  }

  ///Allows you to compare EDateTime with each other
  bool operator >(EDateTime other) {
    if (isAfter(other)) {
      return true;
    } else {
      return false;
    }
  }

  ///Allows you to compare EDateTime with each other
  bool operator >=(EDateTime other) {
    if (isAfter(other) || _date == other._date) {
      return true;
    } else {
      return false;
    }
  }

  ///Allows you to compare EDateTime with each other
  bool operator <=(EDateTime other) {
    if (isBefore(other) || _date == other._date) {
      return true;
    } else {
      return false;
    }
  }

  ///Allows you to compare EDateTime with each other
  bool operator <(EDateTime other) {
    if (isBefore(other) || this == other) {
      return true;
    } else {
      return false;
    }
  }

  ///Allows you to subtract EDateTime between each other
  EDateTime operator -(EDateTime other) {
    return EDateTime.fromDateTime(_date.subtract(difference(other)));
  }

  ///Allows you to compare EDateTime with each other
  @override
  bool operator ==(Object other) {
    return other is EDateTime && _date == other._date;
  }

  ///Returns hashCode
  @override
  int get hashCode => _date.hashCode;
}

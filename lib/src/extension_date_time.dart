import 'package:intl/intl.dart';

extension ExtensionDateTime on DateTime {
  ///Allows you to compare EDateTime with each other
  bool operator >(DateTime other) {
    if (isAfter(other)) {
      return true;
    } else {
      return false;
    }
  }

  ///Allows you to compare EDateTime with each other
  bool operator >=(DateTime other) {
    if (isAfter(other) || this == other) {
      return true;
    } else {
      return false;
    }
  }

  ///Allows you to compare EDateTime with each other
  bool operator <=(DateTime other) {
    if (isBefore(other) || this == other) {
      return true;
    } else {
      return false;
    }
  }

  ///Allows you to compare EDateTime with each other
  bool operator <(DateTime other) {
    if (isBefore(other) || this == other) {
      return true;
    } else {
      return false;
    }
  }

  ///Allows you to subtract EDateTime between each other
  DateTime operator -(DateTime other) {
    return subtract(Duration(days: difference(other).inDays));
  }

  ///Convert EDateTime to format String. Use format from package intl
  String toFormatStr(String? format) {
    if (format == null) {
      return toString();
    } else {
      return DateFormat(format).format(this);
    }
  }
}

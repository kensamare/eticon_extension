import 'package:intl/intl.dart';
import 'e_date_time.dart';

extension ExtensionNullString on String? {
  ///Check String is Null or empty
  bool get isNullOrEmpty => _isNullOrEmpty();

  bool _isNullOrEmpty() {
    if (this == null) {
      return true;
    } else if (this!.isEmpty) {
      return true;
    }
    return false;
  }
}

extension ExtensionString on String {
  ///Convert String to int
  int get toInt {
    return int.parse(this);
  }

  ///Convert String to Double
  double get toDouble {
    return double.parse(this);
  }

  ///Convert String to DateTime
  DateTime toDateTime(String? format) {
    if (format == null) {
      return DateFormat().parse(this);
    } else {
      return DateFormat(format).parse(this);
    }
  }

  ///Convert String to EDateTime
  EDateTime toEDateTime(String? format) {
    if (format == null) {
      return EDateTime.fromDateTime(DateFormat().parse(this));
    } else {
      return EDateTime.fromDateTime(DateFormat(format).parse(this));
    }
  }
}

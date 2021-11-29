import 'package:intl/intl.dart';

extension ExtensionNullString on String? {
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
  int toInt() {
    return int.parse(this);
  }

  double toDouble() {
    return double.parse(this);
  }

  DateTime toDateTime(String? format){
    if(format == null){
      return DateFormat().parse(this);
    }
    else{
      return DateFormat(format).parse(this);
    }
  }
}

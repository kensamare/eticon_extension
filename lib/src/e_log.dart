import 'dart:async';
import 'dart:developer' as dev;

void log(
  dynamic message, {
  DateTime? time,
  int? sequenceNumber,
  int level = 0,
  String name = '',
  Zone? zone,
  Object? error,
  StackTrace? stackTrace,
}) {
  if (!_LogSettings.instance.disable) {
    dev.log(
      message.toString(),
      sequenceNumber: sequenceNumber,
      level: level,
      name: name,
      zone: zone,
      error: error,
      stackTrace: stackTrace,
    );
  }
}

class ELogSettings {
  static void disableLogs(bool disable) {
    _LogSettings.instance.setDisable(disable);
  }
}

class _LogSettings {
  _LogSettings._();

  static _LogSettings instance = _LogSettings._();

  static bool _disable = false;

  bool get disable => _disable;

  void setDisable(bool t) {
    _disable = t;
  }
}

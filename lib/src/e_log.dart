import 'dart:async';
import 'dart:developer' as dev;

///This is a standard log with dart:developer, but it takes not a string, but a dynamic.
///Also allows you to disable the output of logs for the entire project, for this use ELogSettings.disableLogs(true)
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

///Disable the output of logs for the entire project, for this use ELogSettings.disableLogs(true)
class ELogSettings {
  ///Disable the output of logs for the entire project
  static void disableLogs(bool disable) {
    _LogSettings.instance.setDisable(disable);
  }
}

///Singleton to save information about disable logs
class _LogSettings {
  _LogSettings._();

  static _LogSettings instance = _LogSettings._();

  static bool _disable = false;

  bool get disable => _disable;

  void setDisable(bool t) {
    _disable = t;
  }
}

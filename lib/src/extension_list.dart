///Extension on List?
extension ExtensionNullList on List? {
  ///Check List is Null or empty
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

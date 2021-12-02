extension ExtensionNullObject on Object? {
  bool get isNull => _isNull();
  bool get isNotNull => !_isNull();
  bool _isNull() {
    if (this == null) {
      return true;
    }
    return false;
  }
}
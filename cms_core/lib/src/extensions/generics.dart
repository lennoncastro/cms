extension Ext<T> on T {
  void within(Function(T) transform) => transform(this);
}

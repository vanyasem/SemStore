import 'package:collection/collection.dart';

extension IterableExtension<E> on Iterable<E> {
  ///
  /// Returns the index of the last item in the list or -1 if the list is empty.
  ///
  int get lastIndex => length - 1;

  Iterable<E> separatedWith(final E separator) {
    return expandIndexed((final int index, final E element) {
      return <E>[element, if (index != lastIndex) separator];
    });
  }
}

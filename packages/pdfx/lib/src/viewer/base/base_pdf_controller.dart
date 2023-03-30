import 'package:flutter/widgets.dart';

mixin BasePdfController {
  ValueNotifier<PdfLoadingState> get loadingState;

  ValueNotifier<int> get pageListenable;
  int get page;
  int? get pagesCount;
}

enum PdfLoadingState {
  loading,
  error,
  success,
}

class PdfPoint {
  Offset offset;
  int page;
  PdfPoint(this.offset, this.page);
}

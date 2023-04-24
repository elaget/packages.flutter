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
  PdfxPage pdfPage;
  PdfPoint(this.offset, this.pdfPage);
}

class PdfxPage {
  Size size;
  int page;
  PdfxPage(this.size, this.page);
}

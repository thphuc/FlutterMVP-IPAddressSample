import 'package:flutter_mvp/base/base_view.dart';
abstract class BasePresenter<V extends BaseView> {
  V view;

  BasePresenter(V view) {
    this.view = view;
  }
}

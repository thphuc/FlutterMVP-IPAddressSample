import 'package:flutter_mvp/base/base_presenter.dart';
import 'package:flutter_mvp/base/base_view.dart';

abstract class IPPresenter extends BasePresenter {
  void getIPAddress();
}

abstract class IPView extends BaseView<IPPresenter> {
  void updateIAddress(String ipAddress);
}
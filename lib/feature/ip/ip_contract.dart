import 'package:flutter_mvp/base/base_presenter.dart';
import 'package:flutter_mvp/base/base_view.dart';
import 'package:flutter_mvp/feature/ip/ip_view.dart';

abstract class IPPresenter extends BasePresenter<IPViewState> {
  IPPresenter(IPViewState view) : super(view);

  void getIPAddress();
}

abstract class IPView extends BaseView {
  void updateIPAddress(String ipAddress);
}
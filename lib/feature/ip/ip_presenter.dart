import 'package:flutter_mvp/data/ip/ip_repository_impl.dart';
import 'package:flutter_mvp/feature/ip/ip_contract.dart';
import 'package:flutter_mvp/feature/ip/ip_view.dart';

class IPPresenterImpl implements IPPresenter {

  IPRepositoryImpl _ipRepository;

  IPPresenterImpl(IPViewState view, IPRepositoryImpl ipRepository) {
    this.view = view;
    this._ipRepository = ipRepository;
  }

  @override
  void getIPAddress() {
    _ipRepository.getIp().then((String ip) {
      view.updateIPAddress(ip);
    });
  }

  @override
  IPViewState view;
}
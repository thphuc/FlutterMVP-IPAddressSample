import 'package:flutter_mvp/data/ip/ip_repository_impl.dart';
import 'package:flutter_mvp/feature/ip/ip_contract.dart';

class IPPresenterImpl implements IPPresenter {

  IPView _ipView;
  IPRepositoryImpl _ipRepository;

  IPPresenterImpl(this._ipView, this._ipRepository);

  @override
  void getIPAddress() {
    _ipRepository.getIp().then((String ip) {
      _ipView.updateIAddress(ip);
    });
  }

}
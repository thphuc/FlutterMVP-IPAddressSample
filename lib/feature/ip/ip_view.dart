import 'package:flutter/material.dart';
import 'package:flutter_mvp/data/ip/ip_repository_impl.dart';
import 'package:flutter_mvp/feature/ip/ip_contract.dart';
import 'package:flutter_mvp/feature/ip/ip_presenter.dart';

class IPViewImpl extends StatefulWidget {

  IPViewImpl({Key key, this.title}) : super(key: key);

  final String title;

  @override
  IPViewState createState() => new IPViewState();
}

class IPViewState extends State<IPViewImpl> implements IPView {
  String _ipAddress = "0.0.0.0";
  IPPresenterImpl _ipPresenter;

  IPViewState() {
    _ipPresenter = new IPPresenterImpl(this, new IPRepositoryImpl());
    _ipPresenter.getIPAddress();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'Finding your IP Address:',
            ),
            new Text(
              '$_ipAddress',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _getIPAddress,
        tooltip: 'Get IP Adress',
        child: new Icon(Icons.refresh),
      ),
    );
  }

  void _getIPAddress() {
    setState(() {
      _ipAddress = "Loading...";
    });
    _ipPresenter.getIPAddress();
  }

  @override
  void updateIAddress(String ipAddress) {
    setState(() {
      _ipAddress = ipAddress;
    });
  }

}

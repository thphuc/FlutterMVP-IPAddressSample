import 'package:flutter_mvp/feature/ip/ip_contract.dart';
import 'package:flutter_mvp/feature/ip/ip_presenter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

main() {
  testDemo();

  testGetIPAddress();
}

class MockIPAddressPresenter extends Mock implements IPPresenterImpl {}
class MockIPView extends Mock implements IPView {}

testDemo() {
  test('my first unit test on dart', () {
    int number = 40;
    expect(number, 40);
  });
}

testGetIPAddress() {
  test('test getIPAddress() method', () {
    MockIPAddressPresenter mockIPAddressPresenter = new MockIPAddressPresenter();
    mockIPAddressPresenter.getIPAddress();
    verify(mockIPAddressPresenter.getIPAddress());
  });
}
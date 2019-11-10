//import 'package:flutter/services.dart';
//import 'package:flutter_test/flutter_test.dart';
//import 'package:testdartffi/testdartffi.dart';
//
//void main() {
//  const MethodChannel channel = MethodChannel('testdartffi');
//
//  TestWidgetsFlutterBinding.ensureInitialized();
//
//  setUp(() {
//    channel.setMockMethodCallHandler((MethodCall methodCall) async {
//      return '42';
//    });
//  });
//
//  tearDown(() {
//    channel.setMockMethodCallHandler(null);
//  });
//
//  test('getPlatformVersion', () async {
//    expect(await Testdartffi.platformVersion, '42');
//  });
//}

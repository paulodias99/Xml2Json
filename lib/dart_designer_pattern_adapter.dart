import 'package:dart_designer_pattern_adapter/xml2_json_adapter.dart';
import 'package:dio/dio.dart';

Future<void> run() async {
  print('############################################');
  print('XML');

  var res = await Dio().get('https://www.sspds.ce.gov.br/feed/').then((res) => Xml2JsonAdapter.adapter(res.data));
  print(res);
  print(res.runtimeType);
}

import 'dart:convert';

import 'package:http/http.dart' as http;

class EmpresasProvider {
  var resultado;

  final Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'Authorization':
        "Bearer 0033187b970906588a3e1589262dbbf1b9c70e89ea57c3f25278db0d4be834d1"
  };

  Future getRespuesta(String nruc) async {
    final response = await http.get (Uri.parse("https://apiperu.dev/api/ruc/$nruc"),
        headers: requestHeaders);

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = json.decode(body);
      print('getRespuesta Ok');
      resultado = jsonData['data'];
      return resultado;
    } else {
      print("error ${response.statusCode}");
      return null;
    }
  }
}

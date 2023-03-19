import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/io_client.dart';
import 'package:package_name/utils/model/err_res.dart';
import 'package:package_name/utils/model/res_model.dart';
import 'package:package_name/utils/model/tv_res.dart';

IOClient baseClient() {
  HttpClient httpClient = HttpClient();
  IOClient myClient = IOClient(httpClient);
  return myClient;
}

const int retryCnt = 3;

Future<ResModel<TvRes?, ErrRes?>> getTVList(
    {int httpRetryCnt = retryCnt}) async {
  var client = baseClient();
  try {
    var uri = Uri.parse(
        "https://raw.githubusercontent.com/nobodyyu/file/master/tv.json");
    var header = {
      "user-agent":
          "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (HTML, like Gecko) Chrome/111.0.0.0 Safari/537.36",
      "Content-Type": "text/html; charset=utf-8"
    };
    var jsonStr = await client
        .get(uri, headers: header)
        .timeout(const Duration(seconds: 30));
    if (jsonStr.statusCode == 200) {
      var rtn = TvRes.fromJson(json.decode(jsonStr.body));
      return ResModel(rtn, null);
    } else {
      return ResModel(
          null, ErrRes(statusCode: jsonStr.statusCode, msg: "API error"));
    }
  } on TimeoutException catch (_) {
    httpRetryCnt = httpRetryCnt - 1;
    if (httpRetryCnt > 0) {
      return await getTVList(httpRetryCnt: httpRetryCnt);
    } else {
      return ResModel(null, ErrRes(statusCode: 999, msg: "Time Out"));
    }
  } on SocketException catch (_) {
    httpRetryCnt = httpRetryCnt - 1;
    if (httpRetryCnt > 0) {
      return await getTVList(httpRetryCnt: httpRetryCnt);
    } else {
      return ResModel(null, ErrRes(statusCode: 998, msg: "Network Error"));
    }
  } finally {
    client.close();
  }
}

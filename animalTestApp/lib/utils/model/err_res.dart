class ErrRes {
  int? statusCode;
  String? msg;

  ErrRes({this.statusCode, this.msg});

  ErrRes.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode'];
    msg = json['msg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['statusCode'] = statusCode;
    data['msg'] = msg;
    return data;
  }
}

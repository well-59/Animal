class TvRes {
  int? ut;
  List<Tv>? tv;

  TvRes({this.ut, this.tv});

  TvRes.fromJson(Map<String, dynamic> json) {
    ut = json['ut'];
    if (json['tv'] != null) {
      tv = <Tv>[];
      json['tv'].forEach((v) {
        tv!.add(Tv.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['ut'] = ut;
    if (tv != null) {
      data['tv'] = tv!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tv {
  String? name;
  String? value;

  Tv({this.name, this.value});

  Tv.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['name'] = name;
    data['value'] = value;
    return data;
  }
}

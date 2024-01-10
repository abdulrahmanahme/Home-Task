class HomeModel {
  bool? status;
  int? code;
  String? message;
  Data? data;

  HomeModel({this.status, this.code, this.message, this.data});

  HomeModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    code = json['code'];
    message = json['message'];
    data = json['data'] != null ?  Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['status'] = this.status;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  UserDetails? userDetails;
  TopOffer? topOffer;
  List<LiveNow>? liveNow;

  Data({this.userDetails, this.topOffer, this.liveNow});

  Data.fromJson(Map<String, dynamic> json) {
    userDetails = json['user_details'] != null
        ?  UserDetails.fromJson(json['user_details'])
        : null;
    topOffer = json['top_offer'] != null
        ?  TopOffer.fromJson(json['top_offer'])
        : null;
    if (json['live_now'] != null) {
      liveNow = <LiveNow>[];
      json['live_now'].forEach((v) {
        liveNow!.add( LiveNow.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    if (this.userDetails != null) {
      data['user_details'] = this.userDetails!.toJson();
    }
    if (this.topOffer != null) {
      data['top_offer'] = this.topOffer!.toJson();
    }
    if (this.liveNow != null) {
      data['live_now'] = this.liveNow!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UserDetails {
  String? name;
  String? image;

  UserDetails({this.name, this.image});

  UserDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}

class TopOffer {
  String? title;
  String? desc;

  TopOffer({this.title, this.desc});

  TopOffer.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    desc = json['desc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['title'] = this.title;
    data['desc'] = this.desc;
    return data;
  }
}

class LiveNow {
  String? title;
  UserDetails? user;
  String? image;

  LiveNow({this.title, this.user, this.image});

  LiveNow.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    user = json['user'] != null ?  UserDetails.fromJson(json['user']) : null;
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['title'] = this.title;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['image'] = this.image;
    return data;
  }
}
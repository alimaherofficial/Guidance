class Model {
  String? title;
  String? name;
  String? address;
  String? phone;
  String? openhours;
  String? prices;
  String? url;

  Model({
    this.title,
    this.name,
    this.address,
    this.phone,
    this.openhours,
    this.prices,
    this.url,
  });
  Model.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    name = json['name'];
    address = json['address'];
    phone = json['phone'];
    openhours = json['openhours'];
    prices = json['prices'];
    url = json['url'];
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'name': name,
      'address': address,
      'phone': phone,
      'openhours': openhours,
      'prices': prices,
      'url': url,
      
   
    };
  }
}


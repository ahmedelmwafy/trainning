class HomeModel {
  int status;
  Data data;
  String messages;

  HomeModel({this.status, this.data, this.messages});

  HomeModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    messages = json['messages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['messages'] = this.messages;
    return data;
  }
}

class Data {
  List<Restaurants> restaurants;
  Paginate paginate;

  Data({this.restaurants, this.paginate});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['restaurants'] != null) {
      restaurants = new List<Restaurants>();
      json['restaurants'].forEach((v) {
        restaurants.add(new Restaurants.fromJson(v));
      });
    }
    paginate = json['paginate'] != null
        ? new Paginate.fromJson(json['paginate'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.restaurants != null) {
      data['restaurants'] = this.restaurants.map((v) => v.toJson()).toList();
    }
    if (this.paginate != null) {
      data['paginate'] = this.paginate.toJson();
    }
    return data;
  }
}

class Restaurants {
  int id;
  String name;
  String mainImage;
  String lat;
  String lng;
  String address;
  int categoryId;
  String category;

  Restaurants(
      {this.id,
      this.name,
      this.mainImage,
      this.lat,
      this.lng,
      this.address,
      this.categoryId,
      this.category});

  Restaurants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    mainImage = json['main_image'];
    lat = json['lat'];
    lng = json['lng'];
    address = json['address'];
    categoryId = json['category_id'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['main_image'] = this.mainImage;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    data['address'] = this.address;
    data['category_id'] = this.categoryId;
    data['category'] = this.category;
    return data;
  }
}

class Paginate {
  int total;
  int count;
  int perPage;
  Null nextPageUrl;
  Null prevPageUrl;
  int currentPage;
  int totalPages;

  Paginate(
      {this.total,
      this.count,
      this.perPage,
      this.nextPageUrl,
      this.prevPageUrl,
      this.currentPage,
      this.totalPages});

  Paginate.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    count = json['count'];
    perPage = json['per_page'];
    nextPageUrl = json['next_page_url'];
    prevPageUrl = json['prev_page_url'];
    currentPage = json['current_page'];
    totalPages = json['total_pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['count'] = this.count;
    data['per_page'] = this.perPage;
    data['next_page_url'] = this.nextPageUrl;
    data['prev_page_url'] = this.prevPageUrl;
    data['current_page'] = this.currentPage;
    data['total_pages'] = this.totalPages;
    return data;
  }
}

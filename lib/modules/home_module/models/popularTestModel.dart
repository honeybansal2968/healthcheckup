class PopularTestModel {
  int? cancelledPrice;
  String? id;
  int? price;
  int? testCount;
  String? title;

  PopularTestModel(
      {this.cancelledPrice, this.id, this.price, this.testCount, this.title});

  PopularTestModel.fromJson(Map<String, dynamic> json) {
    cancelledPrice = json['cancelled_price'];
    id = json['id'];
    price = json['price'];
    testCount = json['test_count'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cancelled_price'] = this.cancelledPrice;
    data['id'] = this.id;
    data['price'] = this.price;
    data['test_count'] = this.testCount;
    data['title'] = this.title;
    return data;
  }
}

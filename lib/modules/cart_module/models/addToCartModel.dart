class AddToCartModel {
  List<String>? popularTestId;

  AddToCartModel({this.popularTestId});

  AddToCartModel.fromJson(Map<String, dynamic> json) {
    popularTestId = json['popular_test_id'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['popular_test_id'] = this.popularTestId;
    return data;
  }
}

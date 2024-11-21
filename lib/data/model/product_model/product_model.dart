class ProductModel {
  int? id;
  String? name;
  String? image;
  int? price;
  int? evaluation;
  int? discount;

  ProductModel({
    this.id,
    this.name,
    this.image,
    this.price,
    this.evaluation,
    this.discount,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        image: json['image'] as String?,
        price: json['price'] as int?,
        evaluation: json['evaluation'] as int?,
        discount: json['discount'] as int?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'image': image,
        'price': price,
        'evaluation': evaluation,
        'discount': discount,
      };
}

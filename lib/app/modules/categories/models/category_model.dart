import 'dart:convert';

class CategoryModel {
  final String name;
  final String photoURL;
  final String views;
  final bool isOnline;
  CategoryModel({
    this.name,
    this.photoURL,
    this.views,
    this.isOnline = false,
  });

  CategoryModel copyWith({
    String name,
    String photoURL,
    String views,
    bool isOnline,
  }) {
    return CategoryModel(
      name: name ?? this.name,
      photoURL: photoURL ?? this.photoURL,
      views: views ?? this.views,
      isOnline: isOnline ?? this.isOnline,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'photoURL': photoURL,
      'views': views,
      'isOnline': isOnline,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return CategoryModel(
      name: map['name'],
      photoURL: map['photoURL'],
      views: map['views'],
      isOnline: map['isOnline'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) =>
      CategoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CategoryModel(name: $name, photoURL: $photoURL, views: $views, isOnline: $isOnline)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is CategoryModel &&
        o.name == name &&
        o.photoURL == photoURL &&
        o.views == views &&
        o.isOnline == isOnline;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        photoURL.hashCode ^
        views.hashCode ^
        isOnline.hashCode;
  }
}

import 'package:json_annotation/json_annotation.dart';

part 'Items.g.dart';

@JsonSerializable()
class Items {
  late String? id;
  late String? name;
  late String? description;

  Items({ this.id,  this.name, this.description});


  factory Items.fromJson(Map<String, dynamic> map) => _$ItemsFromJson(map);

  Map<String, dynamic> toJson() => _$ItemsToJson(this);

}
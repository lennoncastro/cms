import 'package:json_annotation/json_annotation.dart';

part 'post_category.dto.g.dart';

@JsonSerializable()
class PostCategoryDTO {
  PostCategoryDTO({
    this.id,
    this.label,
  });

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'label')
  final String? label;

  factory PostCategoryDTO.fromJson(Map<String, dynamic> json) =>
      _$PostCategoryDTOFromJson(json);
  Map<String, dynamic> toJson() => _$PostCategoryDTOToJson(this);
}

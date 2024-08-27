import 'package:json_annotation/json_annotation.dart';

import 'post_category.dto.dart';

part 'post.dto.g.dart';

@JsonSerializable()
class PostDTO {
  PostDTO({
    this.id,
    this.title,
    this.content,
    this.createdAt,
    this.updatedAt,
    this.categories,
  });

  @JsonKey(name: 'id')
  final String? id;

  @JsonKey(name: 'title')
  final String? title;

  @JsonKey(name: 'content')
  final String? content;

  @JsonKey(name: 'created_at')
  final String? createdAt;

  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @JsonKey(name: 'categories')
  final List<PostCategoryDTO>? categories;

  factory PostDTO.fromJson(Map<String, dynamic> json) =>
      _$PostDTOFromJson(json);

  Map<String, dynamic> toJson() => _$PostDTOToJson(this);
}

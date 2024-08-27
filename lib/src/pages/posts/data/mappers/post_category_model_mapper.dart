import 'package:cms/src/pages/posts/data/dtos/post_category.dto.dart';
import 'package:cms/src/pages/posts/data/models/post_category.model.dart';

extension PostCategoryModelMapper on PostCategoryDTO {
  PostCategory toModel() {
    return PostCategory(
      id: id ?? '',
      label: label ?? '',
    );
  }
}

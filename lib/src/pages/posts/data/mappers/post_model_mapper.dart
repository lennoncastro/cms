import 'package:cms/src/pages/posts/data/dtos/post.dto.dart';
import 'package:cms/src/pages/posts/data/dtos/post_category.dto.dart';
import 'package:cms/src/pages/posts/data/mappers/post_category_model_mapper.dart';
import 'package:cms/src/pages/posts/data/models/post.model.dart';
import 'package:cms/src/pages/posts/data/models/post_category.model.dart';

extension PostModelMapper on PostDTO {
  Post toModel() {
    return Post(
      id: id ?? '',
      title: title ?? '',
      content: content ?? '',
      categories: getCategories(),
    );
  }

  List<PostCategory> getCategories() {
    if (categories == null) return <PostCategory>[];
    return categories!.map((PostCategoryDTO e) => e.toModel()).toList();
  }
}

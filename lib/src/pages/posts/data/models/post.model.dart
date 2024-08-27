import 'post_category.model.dart';

class Post {
  Post({
    this.id = '',
    this.title = '',
    this.content = '',
    this.createdAt = '',
    this.updatedAt = '',
    this.categories = const <PostCategory>[],
  });

  factory Post.empty() => Post();

  final String id;

  final String title;

  final String content;

  final String createdAt;

  final String updatedAt;

  final List<PostCategory> categories;
}

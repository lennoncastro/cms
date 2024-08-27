class PostCategory {
  PostCategory({
    this.id = '',
    this.label = '',
  });

  factory PostCategory.empty() => PostCategory();

  final String id;

  final String label;
}

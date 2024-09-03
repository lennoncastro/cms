import 'package:cms_core/src/di.dart';

import 'presentation/posts.viewmodel.dart';

final LocatorModule postsModule = (DI di) {
  if (!di.has<PostsViewModel>()) {
    di.registerFactory<PostsViewModel>(PostsViewModel());
  }
};

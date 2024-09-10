import 'package:cms/src/pages/posts/presentation/posts.page.dart';
import 'package:cms/src/pages/src.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/posts',
        builder: (context, state) => const PostsPage(),
      ),
    ],
  );
}

import 'package:cms_configs/src/di.dart';
import 'package:flutter/material.dart';

import 'posts.viewmodel.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  late final PostsViewModel viewModel;

  @override
  void initState() {
    super.initState();
    viewModel = Locator.inject<PostsViewModel>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
    );
  }
}

import 'package:cms/src/pages/posts/data/dtos/post.dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'posts.service.g.dart';

@RestApi()
abstract class PostsService {
  factory PostsService(Dio dio, {String baseUrl}) = _PostsService;

  @GET('/posts')
  Future<List<PostDTO>> getPosts();
}

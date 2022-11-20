import 'package:http/http.dart' as http;

import '../model/contents.dart';
import '../model/post.dart';

class RemoteService {
  Future<List<Post>?> getPosts() async {
    var client = http.Client();

    var uri = Uri.parse('http://localhost:8080/getUsers');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}

class ContentService {
  Future<List<Content>?> getContents() async {
    var client = http.Client();

    var uri = Uri.parse('http://localhost:8080/contents');
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return contentFromJson(json);
    }
  }
}

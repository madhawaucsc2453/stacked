import 'package:http/http.dart' as http;
class ApiService {
static const String baseUrl = 'www.googleapis.com';

static const String books='/books/v1/volumes';

Future<List<Book>> getBooks({String genreType='computers'}) async{

}

}

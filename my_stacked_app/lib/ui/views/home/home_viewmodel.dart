import 'package:my_stacked_app/app/app.bottomsheets.dart';
import 'package:my_stacked_app/app/app.dialogs.dart';
import 'package:my_stacked_app/app/app.locator.dart';
import 'package:my_stacked_app/models/book.dart';
import 'package:my_stacked_app/services/api_service.dart';
import 'package:my_stacked_app/ui/common/app_strings.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends FutureViewModel<List<Book>> {
 
  final _apiService = locator<ApiService>();
  @override
  Future<List<Book>> futureToRun()=>_apiService.getBooks();


  

}

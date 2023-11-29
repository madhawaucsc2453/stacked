import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_stacked_app/models/image_links.dart';
part 'book.g.dart';
part 'book.freezed.dart';
@freezed

class  Book with _$Book {
  factory Book({
    required String title,
    required List<String> authors,
    String? description,
    ImageLinks? imageLinks,
  })= _Book;
  factory Book.fromJson(Map<String,dynamic> json)=>_$BookFromJson(json);
}
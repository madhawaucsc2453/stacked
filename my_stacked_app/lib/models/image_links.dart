import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class ImageLinks with _$ImageLinks {

  factory ImageLinks(
    {
      required String smallThumbnail,
      required String thumbnail, 
    }
  ) = _ImageLinks;

  factory ImageLinks.fromJson(Map<String, dynamic> json) => _$ImageLinksFromJson(json);
  
}
// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'name.freezed.dart';
part 'name.g.dart';

@freezed
class Name with _$Name {

  factory Name({
    required String name,
    required String username,
    required String email
  }
  ) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}
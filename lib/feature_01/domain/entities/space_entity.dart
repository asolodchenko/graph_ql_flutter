import 'package:freezed_annotation/freezed_annotation.dart';
part 'space_entity.freezed.dart';

@freezed
class LaunchInfoEntity with _$LaunchInfoEntity {
  factory LaunchInfoEntity({String? title, String? info}) = _LaunchInfoEntity;
}

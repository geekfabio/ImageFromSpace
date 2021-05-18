import 'package:clean_tdd/features/domain/entities/space_media_entity.dart';

class SpaceMediaModel extends SpaceMediaEntity {
  SpaceMediaModel(
      {required String title,
      required String description,
      required String mediaType,
      required String mediaUrl})
      : super(
            title: title,
            description: description,
            mediaType: mediaType,
            mediaUrl: mediaUrl);

  factory SpaceMediaModel.fromJson(Map<String, dynamic> json) =>
      SpaceMediaModel(
          title: json['title'],
          description: json['explanation'],
          mediaType: json['media_type'],
          mediaUrl: json['url']);

  Map<String, dynamic> toJson() => {
        'title': title,
        'explanation': description,
        'media_type': mediaType,
        'mediaUrl': mediaUrl
      };
}

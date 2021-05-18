import 'package:equatable/equatable.dart';

class SpaceMediaEntity extends Equatable {
  final String title;
  final String description;
  final String mediaType;
  final String mediaUrl;

  SpaceMediaEntity(
      {required this.title,
      required this.description,
      required this.mediaType,
      required this.mediaUrl});

  @override
  List<Object?> get props => [title, description, mediaType, mediaUrl];
}

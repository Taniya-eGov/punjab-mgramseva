// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_handler.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuccessHandler _$SuccessHandlerFromJson(Map<String, dynamic> json) {
  return SuccessHandler(
    json['header'] as String,
    json['subtitle'] as String,
    json['backButtonText'] as String,
    json['routeParentPath'] as String,
    subHeader: json['subHeader'] as String?,
    whatsAppShare: json['whatsAppShare'] as String?,
    downloadLink: json['downloadLink'] as String?,
    downloadLinkLabel: json['downloadLinkLabel'] as String?,
  );
}

Map<String, dynamic> _$SuccessHandlerToJson(SuccessHandler instance) =>
    <String, dynamic>{
      'header': instance.header,
      'subHeader': instance.subHeader,
      'subtitle': instance.subtitle,
      'backButtonText': instance.backButtonText,
      'routeParentPath': instance.routeParentPath,
      'whatsAppShare': instance.whatsAppShare,
      'downloadLink': instance.downloadLink,
      'downloadLinkLabel': instance.downloadLinkLabel,
    };

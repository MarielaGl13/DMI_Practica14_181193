import 'package:flutter/foundation.dart';
import 'package:movieapp_181193/common/Util.dart';
import 'package:movieapp_181193/common/MediaProvider.dart';
import 'package:movieapp_181193/model/Media.dart';

class Cast{
  int id;
  String name;
  String profilePath;

  factory Cast(Map jsonMap, MediaType mediaType){
    try{
      return new Cast.deserialize(jsonMap, mediaType);
    }catch(ex){
      throw ex;
    }

    }
      Cast.deserialize(Map jsonMap, MediaType mediaType):
      id=jsonMap["cast_id"].toInto(),
      name=jsonMap["cast_id"],
      profilePath=jsonMap["profile_path"];

  }

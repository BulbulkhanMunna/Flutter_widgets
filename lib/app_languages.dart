import 'package:get/get.dart';
import 'package:navigationrail/languages/ban.dart';
import 'package:navigationrail/languages/eng.dart';

class AppLanguages extends Translations{
  Map<String,Map<String,String>>get keys=>{
    'en_US':eng,
    'bn_BD':ban,

  };
}
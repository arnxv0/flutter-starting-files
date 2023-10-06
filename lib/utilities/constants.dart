import 'package:flutter/material.dart';

const Color mainButtonColor = Color(0xff3FD963);

const String defaultProfileUrl =
    'https://i.pinimg.com/564x/9b/47/a0/9b47a023caf29f113237d61170f34ad9.jpg';

const userSharedPrefsKey = 'user';

const appVersionNumber = 1;
const appVersion = '1.0.0';

const iOSBundleId = 'com.katkode.starter_app';
const androidPackageName = 'com.katkode.starter_app';

bool calculateIsProdApp() {
  final versionNumberSplit =
      appVersion.split('.').map((e) => e.trim()).toList();
  final majorVersion = int.parse(versionNumberSplit[0]);
  final minorVersion = int.parse(versionNumberSplit[1]);
  final patchVersion = int.parse(versionNumberSplit[2]);

  if (patchVersion == 0) {
    return true;
  } else {
    return false;
  }
}

final bool isProdApp = calculateIsProdApp();

// GENERATED CODE - DO NOT MODIFY BY HAND

// import 'package:collection/collection.dart' show IterableExtension;
part of 'secverify_UIConfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SecVerifyUIConfig _$SecVerifyUIConfigFromJson(Map<String, dynamic> json) {
  return SecVerifyUIConfig()
    ..iOSConfig = json['iOSConfig'] == null
        ? null
        : SecVerifyUIConfigIOS.fromJson(
            json['iOSConfig'] as Map<String, dynamic>)
    ..androidPortraitConfig = json['androidPortraitConfig'] == null
        ? null
        : SecVerifyUIConfigAndroid.fromJson(
            json['androidPortraitConfig'] as Map<String, dynamic>)
    ..androidLandscapeConfig = json['androidLandscapeConfig'] == null
        ? null
        : SecVerifyUIConfigAndroid.fromJson(
            json['androidLandscapeConfig'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SecVerifyUIConfigToJson(SecVerifyUIConfig instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('iOSConfig', instance.iOSConfig?.toJson());
  writeNotNull(
      'androidPortraitConfig', instance.androidPortraitConfig?.toJson());
  writeNotNull(
      'androidLandscapeConfig', instance.androidLandscapeConfig?.toJson());
  return val;
}

SecVerifyUIConfigIOS _$SecVerifyUIConfigIOSFromJson(Map<String, dynamic> json) {
  return SecVerifyUIConfigIOS()
    ..navBarHidden = json['navBarHidden'] as bool?
    ..manualDismiss = json['manualDismiss'] as bool?
    ..prefersStatusBarHidden = json['prefersStatusBarHidden'] as bool?
    ..preferredStatusBarStyle = _$enumDecodeNullable(
        _$iOSStatusBarStyleEnumMap, json['preferredStatusBarStyle'])
    ..shouldAutorotate = json['shouldAutorotate'] as bool?
    ..supportedInterfaceOrientations = _$enumDecodeNullable(
        _$iOSInterfaceOrientationMaskEnumMap,
        json['supportedInterfaceOrientations'])
    ..preferredInterfaceOrientationForPresentation = _$enumDecodeNullable(
        _$iOSInterfaceOrientationEnumMap,
        json['preferredInterfaceOrientationForPresentation'])
    ..presentingWithAnimate = json['presentingWithAnimate'] as bool?
    ..modalTransitionStyle = _$enumDecodeNullable(
        _$iOSModalTransitionStyleEnumMap, json['modalTransitionStyle'])
    ..modalPresentationStyle = _$enumDecodeNullable(
        _$iOSModalPresentationStyleEnumMap, json['modalPresentationStyle'])
    ..showPrivacyWebVCByPresent = json['showPrivacyWebVCByPresent'] as bool?
    ..privacyWebVCPreferredStatusBarStyle = _$enumDecodeNullable(
        _$iOSStatusBarStyleEnumMap, json['privacyWebVCPreferredStatusBarStyle'])
    ..privacyWebVCModalPresentationStyle = _$enumDecodeNullable(
        _$iOSModalPresentationStyleEnumMap,
        json['privacyWebVCModalPresentationStyle'])
    ..overrideUserInterfaceStyle = _$enumDecodeNullable(
        _$iOSUserInterfaceStyleEnumMap, json['overrideUserInterfaceStyle'])
    ..backBtnImageName = json['backBtnImageName'] as String?
    ..loginBtnText = json['loginBtnText'] as String?
    ..loginBtnBgColor = json['loginBtnBgColor'] as String?
    ..loginBtnTextColor = json['loginBtnTextColor'] as String?
    ..loginBtnBorderWidth = json['loginBtnBorderWidth'] as num?
    ..loginBtnCornerRadius = json['loginBtnCornerRadius'] as num?
    ..loginBtnBorderColor = json['loginBtnBorderColor'] as String?
    ..loginBtnBgImgNames =
        (json['loginBtnBgImgNames'] as List?)?.map((e) => e as String).toList()
    ..logoHidden = json['logoHidden'] as bool?
    ..logoImageName = json['logoImageName'] as String?
    ..logoCornerRadius = json['logoCornerRadius'] as num?
    ..phoneHidden = json['phoneHidden'] as bool?
    ..numberColor = json['numberColor'] as String?
    ..numberBgColor = json['numberBgColor'] as String?
    ..numberTextAlignment = _$enumDecodeNullable(
        _$iOSTextAlignmentEnumMap, json['numberTextAlignment'])
    ..phoneCorner = json['phoneCorner'] as num?
    ..phoneBorderWidth = json['phoneBorderWidth'] as num?
    ..phoneBorderColor = json['phoneBorderColor'] as String?
    ..checkHidden = json['checkHidden'] as bool?
    ..checkDefaultState = json['checkDefaultState'] as bool?
    ..checkedImgName = json['checkedImgName'] as String?
    ..uncheckedImgName = json['uncheckedImgName'] as String?
    ..privacyLineSpacing = json['privacyLineSpacing'] as num?
    ..privacyTextAlignment = _$enumDecodeNullable(
        _$iOSTextAlignmentEnumMap, json['privacyTextAlignment'])
    ..privacySettings = (json['privacySettings'] as List?)?.map((e) => e == null ? null : SecVerifyUIConfigIOSPrivacyText.fromJson(e as Map<String, dynamic>)).toList() as List<SecVerifyUIConfigIOSPrivacyText>?
    ..sloganHidden = json['sloganHidden'] as bool?
    ..sloganText = json['sloganText'] as String?
    ..sloganBgColor = json['sloganBgColor'] as String?
    ..sloganTextColor = json['sloganTextColor'] as String?
    ..sloganTextAlignment = _$enumDecodeNullable(_$iOSTextAlignmentEnumMap, json['sloganTextAlignment'])
    ..sloganCorner = json['sloganCorner'] as num?
    ..sloganBorderWidth = json['sloganBorderWidth'] as num?
    ..sloganBorderColor = json['sloganBorderColor'] as String?
    ..widgets = (json['widgets'] as List?)?.map((e) => e == null ? null : SecVerifyUIConfigIOSCustomView.fromJson(e as Map<String, dynamic>))?.toList() as List<SecVerifyUIConfigIOSCustomView>?
    ..portraitLayouts = json['portraitLayouts'] == null ? null : SecVerifyUIConfigIOSCustomLayouts.fromJson(json['portraitLayouts'] as Map<String, dynamic>)
    ..landscapeLayouts = json['landscapeLayouts'] == null ? null : SecVerifyUIConfigIOSCustomLayouts.fromJson(json['landscapeLayouts'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SecVerifyUIConfigIOSToJson(
    SecVerifyUIConfigIOS instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('navBarHidden', instance.navBarHidden);
  writeNotNull('manualDismiss', instance.manualDismiss);
  writeNotNull('prefersStatusBarHidden', instance.prefersStatusBarHidden);
  writeNotNull('preferredStatusBarStyle',
      _$iOSStatusBarStyleEnumMap[instance.preferredStatusBarStyle!]);
  writeNotNull('shouldAutorotate', instance.shouldAutorotate);
  writeNotNull(
      'supportedInterfaceOrientations',
      _$iOSInterfaceOrientationMaskEnumMap[
          instance.supportedInterfaceOrientations!]);
  writeNotNull(
      'preferredInterfaceOrientationForPresentation',
      _$iOSInterfaceOrientationEnumMap[
          instance.preferredInterfaceOrientationForPresentation!]);
  writeNotNull('presentingWithAnimate', instance.presentingWithAnimate);
  writeNotNull('modalTransitionStyle',
      _$iOSModalTransitionStyleEnumMap[instance.modalTransitionStyle!]);
  writeNotNull('modalPresentationStyle',
      _$iOSModalPresentationStyleEnumMap[instance.modalPresentationStyle!]);
  writeNotNull('showPrivacyWebVCByPresent', instance.showPrivacyWebVCByPresent);
  writeNotNull('privacyWebVCPreferredStatusBarStyle',
      _$iOSStatusBarStyleEnumMap[instance.privacyWebVCPreferredStatusBarStyle!]);
  writeNotNull(
      'privacyWebVCModalPresentationStyle',
      _$iOSModalPresentationStyleEnumMap[
          instance.privacyWebVCModalPresentationStyle!]);
  writeNotNull('overrideUserInterfaceStyle',
      _$iOSUserInterfaceStyleEnumMap[instance.overrideUserInterfaceStyle!]);
  writeNotNull('backBtnImageName', instance.backBtnImageName);
  writeNotNull('loginBtnText', instance.loginBtnText);
  writeNotNull('loginBtnBgColor', instance.loginBtnBgColor);
  writeNotNull('loginBtnTextColor', instance.loginBtnTextColor);
  writeNotNull('loginBtnBorderWidth', instance.loginBtnBorderWidth);
  writeNotNull('loginBtnCornerRadius', instance.loginBtnCornerRadius);
  writeNotNull('loginBtnBorderColor', instance.loginBtnBorderColor);
  writeNotNull('loginBtnBgImgNames', instance.loginBtnBgImgNames);
  writeNotNull('logoHidden', instance.logoHidden);
  writeNotNull('logoImageName', instance.logoImageName);
  writeNotNull('logoCornerRadius', instance.logoCornerRadius);
  writeNotNull('phoneHidden', instance.phoneHidden);
  writeNotNull('numberColor', instance.numberColor);
  writeNotNull('numberBgColor', instance.numberBgColor);
  writeNotNull('numberTextAlignment',
      _$iOSTextAlignmentEnumMap[instance.numberTextAlignment!]);
  writeNotNull('phoneCorner', instance.phoneCorner);
  writeNotNull('phoneBorderWidth', instance.phoneBorderWidth);
  writeNotNull('phoneBorderColor', instance.phoneBorderColor);
  writeNotNull('checkHidden', instance.checkHidden);
  writeNotNull('checkDefaultState', instance.checkDefaultState);
  writeNotNull('checkedImgName', instance.checkedImgName);
  writeNotNull('uncheckedImgName', instance.uncheckedImgName);
  writeNotNull('privacyLineSpacing', instance.privacyLineSpacing);
  writeNotNull('privacyTextAlignment',
      _$iOSTextAlignmentEnumMap[instance.privacyTextAlignment!]);
  writeNotNull('privacySettings',
      instance.privacySettings?.map((e) => e.toJson()).toList());
  writeNotNull('sloganHidden', instance.sloganHidden);
  writeNotNull('sloganText', instance.sloganText);
  writeNotNull('sloganBgColor', instance.sloganBgColor);
  writeNotNull('sloganTextColor', instance.sloganTextColor);
  writeNotNull('sloganTextAlignment',
      _$iOSTextAlignmentEnumMap[instance.sloganTextAlignment!]);
  writeNotNull('sloganCorner', instance.sloganCorner);
  writeNotNull('sloganBorderWidth', instance.sloganBorderWidth);
  writeNotNull('sloganBorderColor', instance.sloganBorderColor);
  writeNotNull('widgets', instance.widgets?.map((e) => e.toJson()).toList());
  writeNotNull('portraitLayouts', instance.portraitLayouts?.toJson());
  writeNotNull('landscapeLayouts', instance.landscapeLayouts?.toJson());
  return val;
}

T? _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source)
      .key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T? _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$iOSStatusBarStyleEnumMap = {
  iOSStatusBarStyle.styleDefault: 0,
  iOSStatusBarStyle.styleLightContent: 1,
  iOSStatusBarStyle.styleDarkContent: 3,
};

const _$iOSInterfaceOrientationMaskEnumMap = {
  iOSInterfaceOrientationMask.portrait: 2,
  iOSInterfaceOrientationMask.landscapeLeft: 16,
  iOSInterfaceOrientationMask.landscapeRight: 8,
  iOSInterfaceOrientationMask.portraitUpsideDown: 4,
  iOSInterfaceOrientationMask.landscape: 24,
  iOSInterfaceOrientationMask.all: 30,
  iOSInterfaceOrientationMask.allButUpsideDown: 26,
};

const _$iOSInterfaceOrientationEnumMap = {
  iOSInterfaceOrientation.portrait: 1,
  iOSInterfaceOrientation.portraitUpsideDown: 2,
  iOSInterfaceOrientation.landscapeLeft: 4,
  iOSInterfaceOrientation.landscapeRight: 3,
  iOSInterfaceOrientation.unknown: 0,
};

const _$iOSModalTransitionStyleEnumMap = {
  iOSModalTransitionStyle.coverVertical: 0,
  iOSModalTransitionStyle.flipHorizontal: 1,
  iOSModalTransitionStyle.crossDissolve: 2,
  iOSModalTransitionStyle.partialCurl: 3,
};

const _$iOSModalPresentationStyleEnumMap = {
  iOSModalPresentationStyle.fullScreen: 0,
  iOSModalPresentationStyle.pageSheet: 1,
  iOSModalPresentationStyle.forSheet: 2,
  iOSModalPresentationStyle.currentContext: 3,
  iOSModalPresentationStyle.custom: 4,
  iOSModalPresentationStyle.overFullScreen: 5,
  iOSModalPresentationStyle.overCurrentContext: 6,
  iOSModalPresentationStyle.popOver: 7,
  iOSModalPresentationStyle.blurOverFullScreen: 8,
  iOSModalPresentationStyle.none: -1,
  iOSModalPresentationStyle.automatic: -2,
};

const _$iOSUserInterfaceStyleEnumMap = {
  iOSUserInterfaceStyle.unspecified: 0,
  iOSUserInterfaceStyle.light: 1,
  iOSUserInterfaceStyle.dark: 2,
};

const _$iOSTextAlignmentEnumMap = {
  iOSTextAlignment.center: 1,
  iOSTextAlignment.left: 0,
  iOSTextAlignment.right: 2,
  iOSTextAlignment.justified: 3,
  iOSTextAlignment.natural: 4,
};

SecVerifyUIConfigIOSPrivacyText _$SecVerifyUIConfigIOSPrivacyTextFromJson(
    Map<String, dynamic> json) {
  return SecVerifyUIConfigIOSPrivacyText()
    ..text = json['text'] as String?
    ..textFont = json['textFont'] as num?
    ..textFontName = json['textFontName'] as String?
    ..textColor = json['textColor'] as String?
    ..webTitleText = json['webTitleText'] as String?
    ..textLinkString = json['textLinkString'] as String?
    ..isOperatorPlaceHolder = json['isOperatorPlaceHolder'] as bool?
    ..textAttribute = json['textAttribute'] as Map<String, dynamic>?;
}

Map<String, dynamic> _$SecVerifyUIConfigIOSPrivacyTextToJson(
    SecVerifyUIConfigIOSPrivacyText instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('text', instance.text);
  writeNotNull('textFont', instance.textFont);
  writeNotNull('textFontName', instance.textFontName);
  writeNotNull('textColor', instance.textColor);
  writeNotNull('webTitleText', instance.webTitleText);
  writeNotNull('textLinkString', instance.textLinkString);
  writeNotNull('isOperatorPlaceHolder', instance.isOperatorPlaceHolder);
  writeNotNull('textAttribute', instance.textAttribute);
  return val;
}

SecVerifyUIConfigIOSCustomView _$SecVerifyUIConfigIOSCustomViewFromJson(
    Map<String, dynamic> json) {
  return SecVerifyUIConfigIOSCustomView(
    widgetID: json['widgetID'] as num?, type: _$enumDecodeNullable(_$iOSCustomWidgetTypeEnumMap, json['widgetType']) as iOSCustomWidgetType
  )
    ..isTopSubView = json['isTopSubView'] as bool?
    ..widgetType =
        _$enumDecodeNullable(_$iOSCustomWidgetTypeEnumMap, json['widgetType'])
    ..navPosition = _$enumDecodeNullable(
        _$iOSCustomWidgetNavPositionEnumMap, json['navPosition'])
    ..imaName = json['imaName'] as String?
    ..ivCornerRadius = json['ivCornerRadius'] as num?
    ..btnTitle = json['btnTitle'] as String?
    ..btnBgColor = json['btnBgColor'] as String?
    ..btnTitleColor = json['btnTitleColor'] as String?
    ..btnTitleFont = json['btnTitleFont'] as num?
    ..btnImages = (json['btnImages'] as List?)?.map((e) => e as String)?.toList()
    ..btnBorderWidth = json['btnBorderWidth'] as num?
    ..btnBorderColor = json['btnBorderColor'] as String?
    ..btnBorderCornerRadius = json['btnBorderCornerRadius'] as num?
    ..labelText = json['labelText'] as String?
    ..labelTextColor = json['labelTextColor'] as String?
    ..labelFont = json['labelFont'] as num?
    ..labelBgColor = json['labelBgColor'] as String?
    ..labelTextAlignment = _$enumDecodeNullable(
        _$iOSTextAlignmentEnumMap, json['labelTextAlignment'])
    ..portraitLayout = json['portraitLayout'] == null
        ? null
        : SecVerifyUIConfigIOSLayout.fromJson(
            json['portraitLayout'] as Map<String, dynamic>)
    ..landscapeLayout = json['landscapeLayout'] == null
        ? null
        : SecVerifyUIConfigIOSLayout.fromJson(
            json['landscapeLayout'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SecVerifyUIConfigIOSCustomViewToJson(
    SecVerifyUIConfigIOSCustomView instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('widgetID', instance.widgetID);
  writeNotNull('isTopSubView', instance.isTopSubView);
  writeNotNull('widgetType', _$iOSCustomWidgetTypeEnumMap[instance.widgetType!]);
  writeNotNull(
      'navPosition', _$iOSCustomWidgetNavPositionEnumMap[instance.navPosition!]);
  writeNotNull('imaName', instance.imaName);
  writeNotNull('ivCornerRadius', instance.ivCornerRadius);
  writeNotNull('btnTitle', instance.btnTitle);
  writeNotNull('btnBgColor', instance.btnBgColor);
  writeNotNull('btnTitleColor', instance.btnTitleColor);
  writeNotNull('btnTitleFont', instance.btnTitleFont);
  writeNotNull('btnImages', instance.btnImages);
  writeNotNull('btnBorderWidth', instance.btnBorderWidth);
  writeNotNull('btnBorderColor', instance.btnBorderColor);
  writeNotNull('btnBorderCornerRadius', instance.btnBorderCornerRadius);
  writeNotNull('labelText', instance.labelText);
  writeNotNull('labelTextColor', instance.labelTextColor);
  writeNotNull('labelFont', instance.labelFont);
  writeNotNull('labelBgColor', instance.labelBgColor);
  writeNotNull('labelTextAlignment',
      _$iOSTextAlignmentEnumMap[instance.labelTextAlignment!]);
  writeNotNull('portraitLayout', instance.portraitLayout?.toJson());
  writeNotNull('landscapeLayout', instance.landscapeLayout?.toJson());
  return val;
}

const _$iOSCustomWidgetTypeEnumMap = {
  iOSCustomWidgetType.label: 'label',
  iOSCustomWidgetType.button: 'button',
  iOSCustomWidgetType.imageView: 'imageView',
};

const _$iOSCustomWidgetNavPositionEnumMap = {
  iOSCustomWidgetNavPosition.navLeft: 'navLeft',
  iOSCustomWidgetNavPosition.navRight: 'navRight',
};

SecVerifyUIConfigIOSCustomLayouts _$SecVerifyUIConfigIOSCustomLayoutsFromJson(
    Map<String, dynamic> json) {
  return SecVerifyUIConfigIOSCustomLayouts()
    ..loginBtnLayout = json['loginBtnLayout'] == null
        ? null
        : SecVerifyUIConfigIOSLayout.fromJson(
            json['loginBtnLayout'] as Map<String, dynamic>)
    ..phoneLabelLayout = json['phoneLabelLayout'] == null
        ? null
        : SecVerifyUIConfigIOSLayout.fromJson(
            json['phoneLabelLayout'] as Map<String, dynamic>)
    ..sloganLabelLayout = json['sloganLabelLayout'] == null
        ? null
        : SecVerifyUIConfigIOSLayout.fromJson(
            json['sloganLabelLayout'] as Map<String, dynamic>)
    ..logoImageViewLayout = json['logoImageViewLayout'] == null
        ? null
        : SecVerifyUIConfigIOSLayout.fromJson(
            json['logoImageViewLayout'] as Map<String, dynamic>)
    ..privacyTextViewLayout = json['privacyTextViewLayout'] == null
        ? null
        : SecVerifyUIConfigIOSLayout.fromJson(
            json['privacyTextViewLayout'] as Map<String, dynamic>)
    ..checkBoxLayout = json['checkBoxLayout'] == null
        ? null
        : SecVerifyUIConfigIOSPrivacyCheckBoxLayout.fromJson(
            json['checkBoxLayout'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SecVerifyUIConfigIOSCustomLayoutsToJson(
    SecVerifyUIConfigIOSCustomLayouts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('loginBtnLayout', instance.loginBtnLayout?.toJson());
  writeNotNull('phoneLabelLayout', instance.phoneLabelLayout?.toJson());
  writeNotNull('sloganLabelLayout', instance.sloganLabelLayout?.toJson());
  writeNotNull('logoImageViewLayout', instance.logoImageViewLayout?.toJson());
  writeNotNull(
      'privacyTextViewLayout', instance.privacyTextViewLayout?.toJson());
  writeNotNull('checkBoxLayout', instance.checkBoxLayout?.toJson());
  return val;
}

SecVerifyUIConfigIOSLayout _$SecVerifyUIConfigIOSLayoutFromJson(
    Map<String, dynamic> json) {
  return SecVerifyUIConfigIOSLayout()
    ..layoutTop = json['layoutTop'] as num?
    ..layoutLeading = json['layoutLeading'] as num?
    ..layoutBottom = json['layoutBottom'] as num?
    ..layoutTrailing = json['layoutTrailing'] as num?
    ..layoutCenterX = json['layoutCenterX'] as num?
    ..layoutCenterY = json['layoutCenterY'] as num?
    ..layoutWidth = json['layoutWidth'] as num?
    ..layoutHeight = json['layoutHeight'] as num?;
}

Map<String, dynamic> _$SecVerifyUIConfigIOSLayoutToJson(
    SecVerifyUIConfigIOSLayout instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('layoutTop', instance.layoutTop);
  writeNotNull('layoutLeading', instance.layoutLeading);
  writeNotNull('layoutBottom', instance.layoutBottom);
  writeNotNull('layoutTrailing', instance.layoutTrailing);
  writeNotNull('layoutCenterX', instance.layoutCenterX);
  writeNotNull('layoutCenterY', instance.layoutCenterY);
  writeNotNull('layoutWidth', instance.layoutWidth);
  writeNotNull('layoutHeight', instance.layoutHeight);
  return val;
}

SecVerifyUIConfigIOSPrivacyCheckBoxLayout
    _$SecVerifyUIConfigIOSPrivacyCheckBoxLayoutFromJson(
        Map<String, dynamic> json) {
  return SecVerifyUIConfigIOSPrivacyCheckBoxLayout()
    ..layoutTop = json['layoutTop'] as num?
    ..layoutRight = json['layoutRight'] as num?
    ..layoutCenterY = json['layoutCenterY'] as num?
    ..layoutWidth = json['layoutWidth'] as num?
    ..layoutHeight = json['layoutHeight'] as num?;
}

Map<String, dynamic> _$SecVerifyUIConfigIOSPrivacyCheckBoxLayoutToJson(
    SecVerifyUIConfigIOSPrivacyCheckBoxLayout instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('layoutTop', instance.layoutTop);
  writeNotNull('layoutRight', instance.layoutRight);
  writeNotNull('layoutCenterY', instance.layoutCenterY);
  writeNotNull('layoutWidth', instance.layoutWidth);
  writeNotNull('layoutHeight', instance.layoutHeight);
  return val;
}

SecVerifyUIConfigAndroid _$SecVerifyUIConfigAndroidFromJson(
    Map<String, dynamic> json) {
  return SecVerifyUIConfigAndroid()
    ..loginBtnImgIdName = json['loginBtnImgIdName'] as String?
    ..loginImgPressedName = json['loginImgPressedName'] as String?
    ..loginImgNormalName = json['loginImgNormalName'] as String?
    ..loginBtnTextIdName = json['loginBtnTextIdName'] as String?
    ..loginBtnTextColorIdName = json['loginBtnTextColorIdName'] as String?
    ..loginBtnTextSize = json['loginBtnTextSize'] as int?
    ..loginBtnWidth = json['loginBtnWidth'] as int?
    ..loginBtnHeight = json['loginBtnHeight'] as int?
    ..loginBtnOffsetX = json['loginBtnOffsetX'] as int?
    ..loginBtnOffsetY = json['loginBtnOffsetY'] as int?
    ..loginBtnOffsetBottomY = json['loginBtnOffsetBottomY'] as int?
    ..loginBtnOffsetRightX = json['loginBtnOffsetRightX'] as int?
    ..loginBtnAlignParentRight = json['loginBtnAlignParentRight'] as bool?
    ..loginBtnHidden = json['loginBtnHidden'] as bool?
    ..loginBtnTextStringName = json['loginBtnTextStringName'] as String?
    ..loginBtnTextBold = json['loginBtnTextBold'] as bool?
    ..backgroundImgPath = json['backgroundImgPath'] as String?
    ..backgroundClickClose = json['backgroundClickClose'] as bool?
    ..fullScreen = json['fullScreen'] as bool?
    ..virtualButtonTransparent = json['virtualButtonTransparent'] as bool?
    ..immersiveTheme = json['immersiveTheme'] as bool?
    ..immersiveStatusTextColorBlack =
        json['immersiveStatusTextColorBlack'] as bool?
    ..navColorIdName = json['navColorIdName'] as String?
    ..navTextIdName = json['navTextIdName'] as String?
    ..navTextColorIdName = json['navTextColorIdName'] as String?
    ..navHidden = json['navHidden'] as bool?
    ..navTransparent = json['navTransparent'] as bool?
    ..navCloseImgHidden = json['navCloseImgHidden'] as bool?
    ..navTextSize = json['navTextSize'] as int?
    ..navCloseImgPath = json['navCloseImgPath'] as String?
    ..navCloseImgWidth = json['navCloseImgWidth'] as int?
    ..navCloseImgHeight = json['navCloseImgHeight'] as int?
    ..navCloseImgOffsetX = json['navCloseImgOffsetX'] as int?
    ..navCloseImgOffsetRightX = json['navCloseImgOffsetRightX'] as int?
    ..navCloseImgOffsetY = json['navCloseImgOffsetY'] as int?
    ..navTextBold = json['navTextBold'] as bool?
    ..navCloseImgScaleType = _$enumDecodeNullable(
        _$ImageScaleTypeEnumMap, json['navCloseImgScaleType'])
    ..numberColorIdName = json['numberColorIdName'] as String?
    ..numberSize = json['numberSize'] as int?
    ..numberOffsetX = json['numberOffsetX'] as int?
    ..numberOffsetY = json['numberOffsetY'] as int?
    ..numberOffsetBottomY = json['numberOffsetBottomY'] as int?
    ..numberOffsetRightX = json['numberOffsetRightX'] as int?
    ..numberAlignParentRight = json['numberAlignParentRight'] as bool?
    ..numberHidden = json['numberHidden'] as bool?
    ..numberBold = json['numberBold'] as bool?
    ..switchAccColorIdName = json['switchAccColorIdName'] as String?
    ..switchAccTextSize = json['switchAccTextSize'] as int?
    ..switchAccHidden = json['switchAccHidden'] as bool?
    ..switchAccOffsetX = json['switchAccOffsetX'] as int?
    ..switchAccOffsetY = json['switchAccOffsetY'] as int?
    ..switchAccOffsetBottomY = json['switchAccOffsetBottomY'] as int?
    ..switchAccOffsetRightX = json['switchAccOffsetRightX'] as int?
    ..switchAccAlignParentRight = json['switchAccAlignParentRight'] as bool?
    ..switchAccText = json['switchAccText'] as String?
    ..switchAccTextBold = json['switchAccTextBold'] as bool?
    ..checkboxDefaultState = json['checkboxDefaultState'] as bool?
    ..checkboxHidden = json['checkboxHidden'] as bool?
    ..checkboxOffsetX = json['checkboxOffsetX'] as int?
    ..checkboxOffsetRightX = json['checkboxOffsetRightX'] as int?
    ..checkboxOffsetY = json['checkboxOffsetY'] as int?
    ..checkboxOffsetBottomY = json['checkboxOffsetBottomY'] as int?
    ..checkboxScaleX = (json['checkboxScaleX'] as num?)?.toDouble()
    ..checkboxScaleY = (json['checkboxScaleY'] as num?)?.toDouble()
    ..checkedImgName = json['checkedImgName'] as String?
    ..uncheckedImgName = json['uncheckedImgName'] as String?
    ..checkboxWidth = json['checkboxWidth'] as int?
    ..checkboxHeight = json['checkboxHeight'] as int?
    ..agreementColor = json['agreementColor'] as String?
    ..agreementOffsetX = json['agreementOffsetX'] as int?
    ..agreementOffsetRightX = json['agreementOffsetRightX'] as int?
    ..agreementOffsetY = json['agreementOffsetY'] as int?
    ..agreementOffsetBottomY = json['agreementOffsetBottomY'] as int?
    ..agreementGravityLeft = json['agreementGravityLeft'] as bool?
    ..agreementBaseTextColor = json['agreementBaseTextColor'] as String?
    ..agreementTextSize = json['agreementTextSize'] as int?
    ..agreementTextStartIdName = json['agreementTextStartIdName'] as String?
    ..agreementTextEndIdName = json['agreementTextEndIdName'] as String?
    ..agreementAlignParentRight = json['agreementAlignParentRight'] as bool?
    ..agreementHidden = json['agreementHidden'] as bool?
    ..agreementCmccTextString = json['agreementCmccTextString'] as String?
    ..agreementCuccTextString = json['agreementCuccTextString'] as String?
    ..agreementCtccTextString = json['agreementCtccTextString'] as String?
    ..agreementCtccTextId = json['agreementCtccTextId'] as String?
    ..agreementTextStartString = json['agreementTextStartString'] as String?
    ..agreementTextAndString1 = json['agreementTextAndString1'] as String?
    ..agreementTextAndString2 = json['agreementTextAndString2'] as String?
    ..agreementTextAndString3 = json['agreementTextAndString3'] as String?
    ..agreementTextEndString = json['agreementTextEndString'] as String?
    ..agreementTextBold = json['agreementTextBold'] as bool?
    ..agreementTextWithUnderLine = json['agreementTextWithUnderLine'] as bool?
    ..cusAgreementNameId1 = json['cusAgreementNameId1'] as String?
    ..cusAgreementUrl1 = json['cusAgreementUrl1'] as String?
    ..cusAgreementColor1 = json['cusAgreementColor1'] as String?
    ..cusAgreementNameId2 = json['cusAgreementNameId2'] as String?
    ..cusAgreementUrl2 = json['cusAgreementUrl2'] as String?
    ..cusAgreementColor2 = json['cusAgreementColor2'] as String?
    ..cusAgreementNameId3 = json['cusAgreementNameId3'] as String?
    ..cusAgreementUrl3 = json['cusAgreementUrl3'] as String?
    ..cusAgreementColor3 = json['cusAgreementColor3'] as String?
    ..cusAgreementNameText1 = json['cusAgreementNameText1'] as String?
    ..cusAgreementNameText2 = json['cusAgreementNameText2'] as String?
    ..cusAgreementNameText3 = json['cusAgreementNameText3'] as String?
    ..agreementUncheckHintType = json['agreementUncheckHintType'] as int?
    ..agreementUncheckHintText = json['agreementUncheckHintText'] as String?
    ..agreementPageTitleString = json['agreementPageTitleString'] as String?
    ..cusAgreementPageOneTitleString =
        json['cusAgreementPageOneTitleString'] as String?
    ..cusAgreementPageTwoTitleString =
        json['cusAgreementPageTwoTitleString'] as String?
    ..cusAgreementPageThreeTitleString =
        json['cusAgreementPageThreeTitleString'] as String?
    ..agreementPageTitleStringId = json['agreementPageTitleStringId'] as String?
    ..cusAgreementPageOneTitleNameId =
        json['cusAgreementPageOneTitleNameId'] as String?
    ..cusAgreementPageTwoTitleNameId =
        json['cusAgreementPageTwoTitleNameId'] as String?
    ..cusAgreementPageThreeTitleNameId =
        json['cusAgreementPageThreeTitleNameId'] as String?
    ..agreementPageCloseImg = json['agreementPageCloseImg'] as String?
    ..agreementPageCloseImgHidden = json['agreementPageCloseImgHidden'] as bool?
    ..agreementPageCloseImgWidth = json['agreementPageCloseImgWidth'] as int?
    ..agreementPageCloseImgHeight = json['agreementPageCloseImgHeight'] as int?
    ..agreementPageTitleTextSize = json['agreementPageTitleTextSize'] as int?
    ..agreementPageTitleTextColor =
        json['agreementPageTitleTextColor'] as String?
    ..agreementPageTitleTextBold = json['agreementPageTitleTextBold'] as bool?
    ..agreementPageTitleHidden = json['agreementPageTitleHidden'] as bool?
    ..sloganOffsetX = json['sloganOffsetX'] as int?
    ..sloganOffsetY = json['sloganOffsetY'] as int?
    ..sloganOffsetBottomY = json['sloganOffsetBottomY'] as int?
    ..sloganTextSize = json['sloganTextSize'] as int?
    ..sloganTextColor = json['sloganTextColor'] as String?
    ..sloganOffsetRightX = json['sloganOffsetRightX'] as int?
    ..sloganAlignParentRight = json['sloganAlignParentRight'] as bool?
    ..sloganHidden = json['sloganHidden'] as bool?
    ..sloganTextBold = json['sloganTextBold'] as bool?
    ..dialogTheme = json['dialogTheme'] as bool?
    ..dialogAlignBottom = json['dialogAlignBottom'] as bool?
    ..dialogOffsetX = json['dialogOffsetX'] as int?
    ..dialogOffsetY = json['dialogOffsetY'] as int?
    ..dialogWidth = json['dialogWidth'] as int?
    ..dialogHeight = json['dialogHeight'] as int?
    ..dialogBackground = json['dialogBackground'] as String?
    ..dialogBackgroundClickClose = json['dialogBackgroundClickClose'] as bool?
    ..customView = (json['customView'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k,
          (e as List)
              .map((e) => e == null
                  ? null
                  : AndroidCustomView.fromJson(e as Map<String, dynamic>))
              .toList()),
    ) as Map<String,List<AndroidCustomView>>?
    ..logoImgPath = json['logoImgPath'] as String?
    ..logoWidth = json['logoWidth'] as int?
    ..logoHeight = json['logoHeight'] as int?
    ..logoOffsetX = json['logoOffsetX'] as int?
    ..logoOffsetY = json['logoOffsetY'] as int?
    ..logoOffsetBottomY = json['logoOffsetBottomY'] as int?
    ..logoOffsetRightX = json['logoOffsetRightX'] as int?
    ..logoAlignParentRight = json['logoAlignParentRight'] as bool?
    ..logoHidden = json['logoHidden'] as bool?;
}

Map<String, dynamic> _$SecVerifyUIConfigAndroidToJson(
    SecVerifyUIConfigAndroid instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('loginBtnImgIdName', instance.loginBtnImgIdName);
  writeNotNull('loginImgPressedName', instance.loginImgPressedName);
  writeNotNull('loginImgNormalName', instance.loginImgNormalName);
  writeNotNull('loginBtnTextIdName', instance.loginBtnTextIdName);
  writeNotNull('loginBtnTextColorIdName', instance.loginBtnTextColorIdName);
  writeNotNull('loginBtnTextSize', instance.loginBtnTextSize);
  writeNotNull('loginBtnWidth', instance.loginBtnWidth);
  writeNotNull('loginBtnHeight', instance.loginBtnHeight);
  writeNotNull('loginBtnOffsetX', instance.loginBtnOffsetX);
  writeNotNull('loginBtnOffsetY', instance.loginBtnOffsetY);
  writeNotNull('loginBtnOffsetBottomY', instance.loginBtnOffsetBottomY);
  writeNotNull('loginBtnOffsetRightX', instance.loginBtnOffsetRightX);
  writeNotNull('loginBtnAlignParentRight', instance.loginBtnAlignParentRight);
  writeNotNull('loginBtnHidden', instance.loginBtnHidden);
  writeNotNull('loginBtnTextStringName', instance.loginBtnTextStringName);
  writeNotNull('loginBtnTextBold', instance.loginBtnTextBold);
  writeNotNull('backgroundImgPath', instance.backgroundImgPath);
  writeNotNull('backgroundClickClose', instance.backgroundClickClose);
  writeNotNull('fullScreen', instance.fullScreen);
  writeNotNull('virtualButtonTransparent', instance.virtualButtonTransparent);
  writeNotNull('immersiveTheme', instance.immersiveTheme);
  writeNotNull(
      'immersiveStatusTextColorBlack', instance.immersiveStatusTextColorBlack);
  writeNotNull('navColorIdName', instance.navColorIdName);
  writeNotNull('navTextIdName', instance.navTextIdName);
  writeNotNull('navTextColorIdName', instance.navTextColorIdName);
  writeNotNull('navHidden', instance.navHidden);
  writeNotNull('navTransparent', instance.navTransparent);
  writeNotNull('navCloseImgHidden', instance.navCloseImgHidden);
  writeNotNull('navTextSize', instance.navTextSize);
  writeNotNull('navCloseImgPath', instance.navCloseImgPath);
  writeNotNull('navCloseImgWidth', instance.navCloseImgWidth);
  writeNotNull('navCloseImgHeight', instance.navCloseImgHeight);
  writeNotNull('navCloseImgOffsetX', instance.navCloseImgOffsetX);
  writeNotNull('navCloseImgOffsetRightX', instance.navCloseImgOffsetRightX);
  writeNotNull('navCloseImgOffsetY', instance.navCloseImgOffsetY);
  writeNotNull('navTextBold', instance.navTextBold);
  writeNotNull('navCloseImgScaleType',
      _$ImageScaleTypeEnumMap[instance.navCloseImgScaleType!]);
  writeNotNull('numberColorIdName', instance.numberColorIdName);
  writeNotNull('numberSize', instance.numberSize);
  writeNotNull('numberOffsetX', instance.numberOffsetX);
  writeNotNull('numberOffsetY', instance.numberOffsetY);
  writeNotNull('numberOffsetBottomY', instance.numberOffsetBottomY);
  writeNotNull('numberOffsetRightX', instance.numberOffsetRightX);
  writeNotNull('numberAlignParentRight', instance.numberAlignParentRight);
  writeNotNull('numberHidden', instance.numberHidden);
  writeNotNull('numberBold', instance.numberBold);
  writeNotNull('switchAccColorIdName', instance.switchAccColorIdName);
  writeNotNull('switchAccTextSize', instance.switchAccTextSize);
  writeNotNull('switchAccHidden', instance.switchAccHidden);
  writeNotNull('switchAccOffsetX', instance.switchAccOffsetX);
  writeNotNull('switchAccOffsetY', instance.switchAccOffsetY);
  writeNotNull('switchAccOffsetBottomY', instance.switchAccOffsetBottomY);
  writeNotNull('switchAccOffsetRightX', instance.switchAccOffsetRightX);
  writeNotNull('switchAccAlignParentRight', instance.switchAccAlignParentRight);
  writeNotNull('switchAccText', instance.switchAccText);
  writeNotNull('switchAccTextBold', instance.switchAccTextBold);
  writeNotNull('checkboxDefaultState', instance.checkboxDefaultState);
  writeNotNull('checkboxHidden', instance.checkboxHidden);
  writeNotNull('checkboxOffsetX', instance.checkboxOffsetX);
  writeNotNull('checkboxOffsetRightX', instance.checkboxOffsetRightX);
  writeNotNull('checkboxOffsetY', instance.checkboxOffsetY);
  writeNotNull('checkboxOffsetBottomY', instance.checkboxOffsetBottomY);
  writeNotNull('checkboxScaleX', instance.checkboxScaleX);
  writeNotNull('checkboxScaleY', instance.checkboxScaleY);
  writeNotNull('checkedImgName', instance.checkedImgName);
  writeNotNull('uncheckedImgName', instance.uncheckedImgName);
  writeNotNull('checkboxWidth', instance.checkboxWidth);
  writeNotNull('checkboxHeight', instance.checkboxHeight);
  writeNotNull('agreementColor', instance.agreementColor);
  writeNotNull('agreementOffsetX', instance.agreementOffsetX);
  writeNotNull('agreementOffsetRightX', instance.agreementOffsetRightX);
  writeNotNull('agreementOffsetY', instance.agreementOffsetY);
  writeNotNull('agreementOffsetBottomY', instance.agreementOffsetBottomY);
  writeNotNull('agreementGravityLeft', instance.agreementGravityLeft);
  writeNotNull('agreementBaseTextColor', instance.agreementBaseTextColor);
  writeNotNull('agreementTextSize', instance.agreementTextSize);
  writeNotNull('agreementTextStartIdName', instance.agreementTextStartIdName);
  writeNotNull('agreementTextEndIdName', instance.agreementTextEndIdName);
  writeNotNull('agreementAlignParentRight', instance.agreementAlignParentRight);
  writeNotNull('agreementHidden', instance.agreementHidden);
  writeNotNull('agreementCmccTextString', instance.agreementCmccTextString);
  writeNotNull('agreementCuccTextString', instance.agreementCuccTextString);
  writeNotNull('agreementCtccTextString', instance.agreementCtccTextString);
  writeNotNull('agreementCtccTextId', instance.agreementCtccTextId);
  writeNotNull('agreementTextStartString', instance.agreementTextStartString);
  writeNotNull('agreementTextAndString1', instance.agreementTextAndString1);
  writeNotNull('agreementTextAndString2', instance.agreementTextAndString2);
  writeNotNull('agreementTextAndString3', instance.agreementTextAndString3);
  writeNotNull('agreementTextEndString', instance.agreementTextEndString);
  writeNotNull('agreementTextBold', instance.agreementTextBold);
  writeNotNull(
      'agreementTextWithUnderLine', instance.agreementTextWithUnderLine);
  writeNotNull('cusAgreementNameId1', instance.cusAgreementNameId1);
  writeNotNull('cusAgreementUrl1', instance.cusAgreementUrl1);
  writeNotNull('cusAgreementColor1', instance.cusAgreementColor1);
  writeNotNull('cusAgreementNameId2', instance.cusAgreementNameId2);
  writeNotNull('cusAgreementUrl2', instance.cusAgreementUrl2);
  writeNotNull('cusAgreementColor2', instance.cusAgreementColor2);
  writeNotNull('cusAgreementNameId3', instance.cusAgreementNameId3);
  writeNotNull('cusAgreementUrl3', instance.cusAgreementUrl3);
  writeNotNull('cusAgreementColor3', instance.cusAgreementColor3);
  writeNotNull('cusAgreementNameText1', instance.cusAgreementNameText1);
  writeNotNull('cusAgreementNameText2', instance.cusAgreementNameText2);
  writeNotNull('cusAgreementNameText3', instance.cusAgreementNameText3);
  writeNotNull('agreementUncheckHintType', instance.agreementUncheckHintType);
  writeNotNull('agreementUncheckHintText', instance.agreementUncheckHintText);
  writeNotNull('agreementPageTitleString', instance.agreementPageTitleString);
  writeNotNull('cusAgreementPageOneTitleString',
      instance.cusAgreementPageOneTitleString);
  writeNotNull('cusAgreementPageTwoTitleString',
      instance.cusAgreementPageTwoTitleString);
  writeNotNull('cusAgreementPageThreeTitleString',
      instance.cusAgreementPageThreeTitleString);
  writeNotNull(
      'agreementPageTitleStringId', instance.agreementPageTitleStringId);
  writeNotNull('cusAgreementPageOneTitleNameId',
      instance.cusAgreementPageOneTitleNameId);
  writeNotNull('cusAgreementPageTwoTitleNameId',
      instance.cusAgreementPageTwoTitleNameId);
  writeNotNull('cusAgreementPageThreeTitleNameId',
      instance.cusAgreementPageThreeTitleNameId);
  writeNotNull('agreementPageCloseImg', instance.agreementPageCloseImg);
  writeNotNull(
      'agreementPageCloseImgHidden', instance.agreementPageCloseImgHidden);
  writeNotNull(
      'agreementPageCloseImgWidth', instance.agreementPageCloseImgWidth);
  writeNotNull(
      'agreementPageCloseImgHeight', instance.agreementPageCloseImgHeight);
  writeNotNull(
      'agreementPageTitleTextSize', instance.agreementPageTitleTextSize);
  writeNotNull(
      'agreementPageTitleTextColor', instance.agreementPageTitleTextColor);
  writeNotNull(
      'agreementPageTitleTextBold', instance.agreementPageTitleTextBold);
  writeNotNull('agreementPageTitleHidden', instance.agreementPageTitleHidden);
  writeNotNull('sloganOffsetX', instance.sloganOffsetX);
  writeNotNull('sloganOffsetY', instance.sloganOffsetY);
  writeNotNull('sloganOffsetBottomY', instance.sloganOffsetBottomY);
  writeNotNull('sloganTextSize', instance.sloganTextSize);
  writeNotNull('sloganTextColor', instance.sloganTextColor);
  writeNotNull('sloganOffsetRightX', instance.sloganOffsetRightX);
  writeNotNull('sloganAlignParentRight', instance.sloganAlignParentRight);
  writeNotNull('sloganHidden', instance.sloganHidden);
  writeNotNull('sloganTextBold', instance.sloganTextBold);
  writeNotNull('dialogTheme', instance.dialogTheme);
  writeNotNull('dialogAlignBottom', instance.dialogAlignBottom);
  writeNotNull('dialogOffsetX', instance.dialogOffsetX);
  writeNotNull('dialogOffsetY', instance.dialogOffsetY);
  writeNotNull('dialogWidth', instance.dialogWidth);
  writeNotNull('dialogHeight', instance.dialogHeight);
  writeNotNull('dialogBackground', instance.dialogBackground);
  writeNotNull(
      'dialogBackgroundClickClose', instance.dialogBackgroundClickClose);
  writeNotNull(
      'customView',
      instance.customView
          ?.map((k, e) => MapEntry(k, e.map((e) => e.toJson()).toList())));
  writeNotNull('logoImgPath', instance.logoImgPath);
  writeNotNull('logoWidth', instance.logoWidth);
  writeNotNull('logoHeight', instance.logoHeight);
  writeNotNull('logoOffsetX', instance.logoOffsetX);
  writeNotNull('logoOffsetY', instance.logoOffsetY);
  writeNotNull('logoOffsetBottomY', instance.logoOffsetBottomY);
  writeNotNull('logoOffsetRightX', instance.logoOffsetRightX);
  writeNotNull('logoAlignParentRight', instance.logoAlignParentRight);
  writeNotNull('logoHidden', instance.logoHidden);
  return val;
}

const _$ImageScaleTypeEnumMap = {
  ImageScaleType.MATRIX: 'MATRIX',
  ImageScaleType.FIT_XY: 'FIT_XY',
  ImageScaleType.FIT_START: 'FIT_START',
  ImageScaleType.FIT_CENTER: 'FIT_CENTER',
  ImageScaleType.FIT_END: 'FIT_END',
  ImageScaleType.CENTER: 'CENTER',
  ImageScaleType.CENTER_CROP: 'CENTER_CROP',
  ImageScaleType.CENTER_INSIDE: 'CENTER_INSIDE',
};

AndroidCustomLoginBtn _$AndroidCustomLoginBtnFromJson(
    Map<String, dynamic> json) {
  return AndroidCustomLoginBtn()
    ..loginBtnImgIdName = json['loginBtnImgIdName'] as String?
    ..loginImgPressedName = json['loginImgPressedName'] as String?
    ..loginImgNormalName = json['loginImgNormalName'] as String?
    ..loginBtnTextIdName = json['loginBtnTextIdName'] as String?
    ..loginBtnTextColorIdName = json['loginBtnTextColorIdName'] as String?
    ..loginBtnTextSize = json['loginBtnTextSize'] as int?
    ..loginBtnWidth = json['loginBtnWidth'] as int?
    ..loginBtnHeight = json['loginBtnHeight'] as int?
    ..loginBtnOffsetX = json['loginBtnOffsetX'] as int?
    ..loginBtnOffsetY = json['loginBtnOffsetY'] as int?
    ..loginBtnOffsetBottomY = json['loginBtnOffsetBottomY'] as int?
    ..loginBtnOffsetRightX = json['loginBtnOffsetRightX'] as int?
    ..loginBtnAlignParentRight = json['loginBtnAlignParentRight'] as bool?
    ..loginBtnHidden = json['loginBtnHidden'] as bool?
    ..loginBtnText = json['loginBtnText'] as String?
    ..loginBtnTextBold = json['loginBtnTextBold'] as bool?;
}

Map<String, dynamic> _$AndroidCustomLoginBtnToJson(
    AndroidCustomLoginBtn instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('loginBtnImgIdName', instance.loginBtnImgIdName);
  writeNotNull('loginImgPressedName', instance.loginImgPressedName);
  writeNotNull('loginImgNormalName', instance.loginImgNormalName);
  writeNotNull('loginBtnTextIdName', instance.loginBtnTextIdName);
  writeNotNull('loginBtnTextColorIdName', instance.loginBtnTextColorIdName);
  writeNotNull('loginBtnTextSize', instance.loginBtnTextSize);
  writeNotNull('loginBtnWidth', instance.loginBtnWidth);
  writeNotNull('loginBtnHeight', instance.loginBtnHeight);
  writeNotNull('loginBtnOffsetX', instance.loginBtnOffsetX);
  writeNotNull('loginBtnOffsetY', instance.loginBtnOffsetY);
  writeNotNull('loginBtnOffsetBottomY', instance.loginBtnOffsetBottomY);
  writeNotNull('loginBtnOffsetRightX', instance.loginBtnOffsetRightX);
  writeNotNull('loginBtnAlignParentRight', instance.loginBtnAlignParentRight);
  writeNotNull('loginBtnHidden', instance.loginBtnHidden);
  writeNotNull('loginBtnText', instance.loginBtnText);
  writeNotNull('loginBtnTextBold', instance.loginBtnTextBold);
  return val;
}

AndroidCustomNav _$AndroidCustomNavFromJson(Map<String, dynamic> json) {
  return AndroidCustomNav()
    ..navColorIdName = json['navColorIdName'] as String?
    ..navTextIdName = json['navTextIdName'] as String?
    ..navTextColorIdName = json['navTextColorIdName'] as String?
    ..navHidden = json['navHidden'] as bool?
    ..navTransparent = json['navTransparent'] as bool?
    ..navCloseImgHidden = json['navCloseImgHidden'] as bool?
    ..navTextSize = json['navTextSize'] as int?
    ..navCloseImgPath = json['navCloseImgPath'] as String?
    ..navCloseImgWidth = json['navCloseImgWidth'] as int?
    ..navCloseImgHeight = json['navCloseImgHeight'] as int?
    ..navCloseImgOffsetX = json['navCloseImgOffsetX'] as int?
    ..navCloseImgOffsetRightX = json['navCloseImgOffsetRightX'] as int?
    ..navCloseImgOffsetY = json['navCloseImgOffsetY'] as int?
    ..navTextBold = json['navTextBold'] as bool?
    ..navCloseImgScaleType = _$enumDecodeNullable(
        _$ImageScaleTypeEnumMap, json['navCloseImgScaleType']);
}

Map<String, dynamic> _$AndroidCustomNavToJson(AndroidCustomNav instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('navColorIdName', instance.navColorIdName);
  writeNotNull('navTextIdName', instance.navTextIdName);
  writeNotNull('navTextColorIdName', instance.navTextColorIdName);
  writeNotNull('navHidden', instance.navHidden);
  writeNotNull('navTransparent', instance.navTransparent);
  writeNotNull('navCloseImgHidden', instance.navCloseImgHidden);
  writeNotNull('navTextSize', instance.navTextSize);
  writeNotNull('navCloseImgPath', instance.navCloseImgPath);
  writeNotNull('navCloseImgWidth', instance.navCloseImgWidth);
  writeNotNull('navCloseImgHeight', instance.navCloseImgHeight);
  writeNotNull('navCloseImgOffsetX', instance.navCloseImgOffsetX);
  writeNotNull('navCloseImgOffsetRightX', instance.navCloseImgOffsetRightX);
  writeNotNull('navCloseImgOffsetY', instance.navCloseImgOffsetY);
  writeNotNull('navTextBold', instance.navTextBold);
  writeNotNull('navCloseImgScaleType',
      _$ImageScaleTypeEnumMap[instance.navCloseImgScaleType!]);
  return val;
}

AndroidCustomAuthPage _$AndroidCustomAuthPageFromJson(
    Map<String, dynamic> json) {
  return AndroidCustomAuthPage()
    ..backgroundImgPath = json['backgroundImgPath'] as String?
    ..backgroundClickClose = json['backgroundClickClose'] as bool?
    ..fullScreen = json['fullScreen'] as bool?
    ..virtualButtonTransparent = json['virtualButtonTransparent'] as bool?
    ..immersiveTheme = json['immersiveTheme'] as bool?
    ..immersiveStatusTextColorBlack =
        json['immersiveStatusTextColorBlack'] as bool?;
}

Map<String, dynamic> _$AndroidCustomAuthPageToJson(
    AndroidCustomAuthPage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('backgroundImgPath', instance.backgroundImgPath);
  writeNotNull('backgroundClickClose', instance.backgroundClickClose);
  writeNotNull('fullScreen', instance.fullScreen);
  writeNotNull('virtualButtonTransparent', instance.virtualButtonTransparent);
  writeNotNull('immersiveTheme', instance.immersiveTheme);
  writeNotNull(
      'immersiveStatusTextColorBlack', instance.immersiveStatusTextColorBlack);
  return val;
}

AndroidCustomAuthPageLogo _$AndroidCustomAuthPageLogoFromJson(
    Map<String, dynamic> json) {
  return AndroidCustomAuthPageLogo()
    ..logoImgPath = json['logoImgPath'] as String?
    ..logoWidth = json['logoWidth'] as int?
    ..logoHeight = json['logoHeight'] as int?
    ..logoOffsetX = json['logoOffsetX'] as int?
    ..logoOffsetY = json['logoOffsetY'] as int?
    ..logoOffsetBottomY = json['logoOffsetBottomY'] as int?
    ..logoOffsetRightX = json['logoOffsetRightX'] as int?
    ..logoAlignParentRight = json['logoAlignParentRight'] as bool?
    ..logoHidden = json['logoHidden'] as bool?;
}

Map<String, dynamic> _$AndroidCustomAuthPageLogoToJson(
    AndroidCustomAuthPageLogo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('logoImgPath', instance.logoImgPath);
  writeNotNull('logoWidth', instance.logoWidth);
  writeNotNull('logoHeight', instance.logoHeight);
  writeNotNull('logoOffsetX', instance.logoOffsetX);
  writeNotNull('logoOffsetY', instance.logoOffsetY);
  writeNotNull('logoOffsetBottomY', instance.logoOffsetBottomY);
  writeNotNull('logoOffsetRightX', instance.logoOffsetRightX);
  writeNotNull('logoAlignParentRight', instance.logoAlignParentRight);
  writeNotNull('logoHidden', instance.logoHidden);
  return val;
}

AndroidCustomPhoneNumber _$AndroidCustomPhoneNumberFromJson(
    Map<String, dynamic> json) {
  return AndroidCustomPhoneNumber()
    ..numberColorIdName = json['numberColorIdName'] as String?
    ..numberSize = json['numberSize'] as int?
    ..numberOffsetX = json['numberOffsetX'] as int?
    ..numberOffsetY = json['numberOffsetY'] as int?
    ..numberOffsetBottomY = json['numberOffsetBottomY'] as int?
    ..numberOffsetRightX = json['numberOffsetRightX'] as int?
    ..numberAlignParentRight = json['numberAlignParentRight'] as bool?
    ..numberHidden = json['numberHidden'] as bool?
    ..numberBold = json['numberBold'] as bool?;
}

Map<String, dynamic> _$AndroidCustomPhoneNumberToJson(
    AndroidCustomPhoneNumber instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('numberColorIdName', instance.numberColorIdName);
  writeNotNull('numberSize', instance.numberSize);
  writeNotNull('numberOffsetX', instance.numberOffsetX);
  writeNotNull('numberOffsetY', instance.numberOffsetY);
  writeNotNull('numberOffsetBottomY', instance.numberOffsetBottomY);
  writeNotNull('numberOffsetRightX', instance.numberOffsetRightX);
  writeNotNull('numberAlignParentRight', instance.numberAlignParentRight);
  writeNotNull('numberHidden', instance.numberHidden);
  writeNotNull('numberBold', instance.numberBold);
  return val;
}

AndroidCustomSwitchNumber _$AndroidCustomSwitchNumberFromJson(
    Map<String, dynamic> json) {
  return AndroidCustomSwitchNumber()
    ..switchAccColorIdName = json['switchAccColorIdName'] as String?
    ..switchAccTextSize = json['switchAccTextSize'] as int?
    ..switchAccHidden = json['switchAccHidden'] as bool?
    ..switchAccOffsetX = json['switchAccOffsetX'] as int?
    ..switchAccOffsetY = json['switchAccOffsetY'] as int?
    ..switchAccOffsetBottomY = json['switchAccOffsetBottomY'] as int?
    ..switchAccOffsetRightX = json['switchAccOffsetRightX'] as int?
    ..switchAccAlignParentRight = json['switchAccAlignParentRight'] as bool?
    ..switchAccText = json['switchAccText'] as String?
    ..switchAccTextBold = json['switchAccTextBold'] as bool?;
}

Map<String, dynamic> _$AndroidCustomSwitchNumberToJson(
    AndroidCustomSwitchNumber instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('switchAccColorIdName', instance.switchAccColorIdName);
  writeNotNull('switchAccTextSize', instance.switchAccTextSize);
  writeNotNull('switchAccHidden', instance.switchAccHidden);
  writeNotNull('switchAccOffsetX', instance.switchAccOffsetX);
  writeNotNull('switchAccOffsetY', instance.switchAccOffsetY);
  writeNotNull('switchAccOffsetBottomY', instance.switchAccOffsetBottomY);
  writeNotNull('switchAccOffsetRightX', instance.switchAccOffsetRightX);
  writeNotNull('switchAccAlignParentRight', instance.switchAccAlignParentRight);
  writeNotNull('switchAccText', instance.switchAccText);
  writeNotNull('switchAccTextBold', instance.switchAccTextBold);
  return val;
}

AndroidCustomCheckBox _$AndroidCustomCheckBoxFromJson(
    Map<String, dynamic> json) {
  return AndroidCustomCheckBox()
    ..checkboxImgIdName = json['checkboxImgIdName'] as String?
    ..checkboxDefaultState = json['checkboxDefaultState'] as bool?
    ..checkboxHidden = json['checkboxHidden'] as bool?
    ..checkboxOffsetX = json['checkboxOffsetX'] as int?
    ..checkboxOffsetRightX = json['checkboxOffsetRightX'] as int?
    ..checkboxOffsetY = json['checkboxOffsetY'] as int?
    ..checkboxOffsetBottomY = json['checkboxOffsetBottomY'] as int?
    ..checkboxScaleX = (json['checkboxScaleX'] as num?)?.toDouble()
    ..checkboxScaleY = (json['checkboxScaleY'] as num?)?.toDouble()
    ..checkedImgName = json['checkedImgName'] as String?
    ..uncheckedImgName = json['uncheckedImgName'] as String?
    ..checkboxWidth = json['checkboxWidth'] as int?
    ..checkboxHeight = json['checkboxHeight'] as int?;
}

Map<String, dynamic> _$AndroidCustomCheckBoxToJson(
    AndroidCustomCheckBox instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('checkboxImgIdName', instance.checkboxImgIdName);
  writeNotNull('checkboxDefaultState', instance.checkboxDefaultState);
  writeNotNull('checkboxHidden', instance.checkboxHidden);
  writeNotNull('checkboxOffsetX', instance.checkboxOffsetX);
  writeNotNull('checkboxOffsetRightX', instance.checkboxOffsetRightX);
  writeNotNull('checkboxOffsetY', instance.checkboxOffsetY);
  writeNotNull('checkboxOffsetBottomY', instance.checkboxOffsetBottomY);
  writeNotNull('checkboxScaleX', instance.checkboxScaleX);
  writeNotNull('checkboxScaleY', instance.checkboxScaleY);
  writeNotNull('checkedImgName', instance.checkedImgName);
  writeNotNull('uncheckedImgName', instance.uncheckedImgName);
  writeNotNull('checkboxWidth', instance.checkboxWidth);
  writeNotNull('checkboxHeight', instance.checkboxHeight);
  return val;
}

AndroidCustomPrivacy _$AndroidCustomPrivacyFromJson(Map<String, dynamic> json) {
  return AndroidCustomPrivacy()
    ..agreementColor = json['agreementColor'] as String?
    ..agreementOffsetX = json['agreementOffsetX'] as int?
    ..agreementOffsetRightX = json['agreementOffsetRightX'] as int?
    ..agreementOffsetY = json['agreementOffsetY'] as int?
    ..agreementOffsetBottomY = json['agreementOffsetBottomY'] as int?
    ..agreementGravityLeft = json['agreementGravityLeft'] as bool?
    ..agreementBaseTextColor = json['agreementBaseTextColor'] as String?
    ..agreementTextSize = json['agreementTextSize'] as int?
    ..agreementTextStartIdName = json['agreementTextStartIdName'] as String?
    ..agreementTextEndIdName = json['agreementTextEndIdName'] as String?
    ..agreementAlignParentRight = json['agreementAlignParentRight'] as bool?
    ..agreementHidden = json['agreementHidden'] as bool?
    ..agreementCmccTextString = json['agreementCmccTextString'] as String?
    ..agreementCuccTextString = json['agreementCuccTextString'] as String?
    ..agreementCtccTextString = json['agreementCtccTextString'] as String?
    ..agreementTextStartString = json['agreementTextStartString'] as String?
    ..agreementTextAndString1 = json['agreementTextAndString1'] as String?
    ..agreementTextAndString2 = json['agreementTextAndString2'] as String?
    ..agreementTextAndString3 = json['agreementTextAndString3'] as String?
    ..agreementTextEndString = json['agreementTextEndString'] as String?
    ..agreementTextBold = json['agreementTextBold'] as bool?
    ..agreementTextWithUnderLine = json['agreementTextWithUnderLine'] as bool?
    ..cusAgreementNameId1 = json['cusAgreementNameId1'] as String?
    ..cusAgreementUrl1 = json['cusAgreementUrl1'] as String?
    ..cusAgreementColor1 = json['cusAgreementColor1'] as String?
    ..cusAgreementNameId2 = json['cusAgreementNameId2'] as String?
    ..cusAgreementUrl2 = json['cusAgreementUrl2'] as String?
    ..cusAgreementColor2 = json['cusAgreementColor2'] as String?
    ..cusAgreementNameId3 = json['cusAgreementNameId3'] as String?
    ..cusAgreementUrl3 = json['cusAgreementUrl3'] as String?
    ..cusAgreementColor3 = json['cusAgreementColor3'] as String?
    ..cusAgreementNameText1 = json['cusAgreementNameText1'] as String?
    ..cusAgreementNameText2 = json['cusAgreementNameText2'] as String?
    ..cusAgreementNameText3 = json['cusAgreementNameText3'] as String?
    ..agreementUncheckHintType = json['agreementUncheckHintType'] as int?
    ..agreementUncheckHintText = json['agreementUncheckHintText'] as String?;
}

Map<String, dynamic> _$AndroidCustomPrivacyToJson(
    AndroidCustomPrivacy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('agreementColor', instance.agreementColor);
  writeNotNull('agreementOffsetX', instance.agreementOffsetX);
  writeNotNull('agreementOffsetRightX', instance.agreementOffsetRightX);
  writeNotNull('agreementOffsetY', instance.agreementOffsetY);
  writeNotNull('agreementOffsetBottomY', instance.agreementOffsetBottomY);
  writeNotNull('agreementGravityLeft', instance.agreementGravityLeft);
  writeNotNull('agreementBaseTextColor', instance.agreementBaseTextColor);
  writeNotNull('agreementTextSize', instance.agreementTextSize);
  writeNotNull('agreementTextStartIdName', instance.agreementTextStartIdName);
  writeNotNull('agreementTextEndIdName', instance.agreementTextEndIdName);
  writeNotNull('agreementAlignParentRight', instance.agreementAlignParentRight);
  writeNotNull('agreementHidden', instance.agreementHidden);
  writeNotNull('agreementCmccTextString', instance.agreementCmccTextString);
  writeNotNull('agreementCuccTextString', instance.agreementCuccTextString);
  writeNotNull('agreementCtccTextString', instance.agreementCtccTextString);
  writeNotNull('agreementTextStartString', instance.agreementTextStartString);
  writeNotNull('agreementTextAndString1', instance.agreementTextAndString1);
  writeNotNull('agreementTextAndString2', instance.agreementTextAndString2);
  writeNotNull('agreementTextAndString3', instance.agreementTextAndString3);
  writeNotNull('agreementTextEndString', instance.agreementTextEndString);
  writeNotNull('agreementTextBold', instance.agreementTextBold);
  writeNotNull(
      'agreementTextWithUnderLine', instance.agreementTextWithUnderLine);
  writeNotNull('cusAgreementNameId1', instance.cusAgreementNameId1);
  writeNotNull('cusAgreementUrl1', instance.cusAgreementUrl1);
  writeNotNull('cusAgreementColor1', instance.cusAgreementColor1);
  writeNotNull('cusAgreementNameId2', instance.cusAgreementNameId2);
  writeNotNull('cusAgreementUrl2', instance.cusAgreementUrl2);
  writeNotNull('cusAgreementColor2', instance.cusAgreementColor2);
  writeNotNull('cusAgreementNameId3', instance.cusAgreementNameId3);
  writeNotNull('cusAgreementUrl3', instance.cusAgreementUrl3);
  writeNotNull('cusAgreementColor3', instance.cusAgreementColor3);
  writeNotNull('cusAgreementNameText1', instance.cusAgreementNameText1);
  writeNotNull('cusAgreementNameText2', instance.cusAgreementNameText2);
  writeNotNull('cusAgreementNameText3', instance.cusAgreementNameText3);
  writeNotNull('agreementUncheckHintType', instance.agreementUncheckHintType);
  writeNotNull('agreementUncheckHintText', instance.agreementUncheckHintText);
  return val;
}

AndroidCustomPrivacyContentPage _$AndroidCustomPrivacyContentPageFromJson(
    Map<String, dynamic> json) {
  return AndroidCustomPrivacyContentPage()
    ..agreementPageTitleString = json['agreementPageTitleString'] as String?
    ..cusAgreementPageOneTitleString =
        json['cusAgreementPageOneTitleString'] as String?
    ..cusAgreementPageTwoTitleString =
        json['cusAgreementPageTwoTitleString'] as String?
    ..cusAgreementPageThreeTitleString =
        json['cusAgreementPageThreeTitleString'] as String?
    ..agreementPageTitleStringId = json['agreementPageTitleStringId'] as String?
    ..cusAgreementPageOneTitleNameId =
        json['cusAgreementPageOneTitleNameId'] as String?
    ..cusAgreementPageTwoTitleNameId =
        json['cusAgreementPageTwoTitleNameId'] as String?
    ..cusAgreementPageThreeTitleNameId =
        json['cusAgreementPageThreeTitleNameId'] as String?
    ..agreementPageCloseImg = json['agreementPageCloseImg'] as String?
    ..agreementPageCloseImgHidden = json['agreementPageCloseImgHidden'] as bool?
    ..agreementPageCloseImgWidth = json['agreementPageCloseImgWidth'] as int?
    ..agreementPageCloseImgHeight = json['agreementPageCloseImgHeight'] as int?
    ..agreementPageTitleTextSize = json['agreementPageTitleTextSize'] as int?
    ..agreementPageTitleTextColor =
        json['agreementPageTitleTextColor'] as String?
    ..agreementPageTitleTextBold = json['agreementPageTitleTextBold'] as bool?
    ..agreementPageTitleHidden = json['agreementPageTitleHidden'] as bool?;
}

Map<String, dynamic> _$AndroidCustomPrivacyContentPageToJson(
    AndroidCustomPrivacyContentPage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('agreementPageTitleString', instance.agreementPageTitleString);
  writeNotNull('cusAgreementPageOneTitleString',
      instance.cusAgreementPageOneTitleString);
  writeNotNull('cusAgreementPageTwoTitleString',
      instance.cusAgreementPageTwoTitleString);
  writeNotNull('cusAgreementPageThreeTitleString',
      instance.cusAgreementPageThreeTitleString);
  writeNotNull(
      'agreementPageTitleStringId', instance.agreementPageTitleStringId);
  writeNotNull('cusAgreementPageOneTitleNameId',
      instance.cusAgreementPageOneTitleNameId);
  writeNotNull('cusAgreementPageTwoTitleNameId',
      instance.cusAgreementPageTwoTitleNameId);
  writeNotNull('cusAgreementPageThreeTitleNameId',
      instance.cusAgreementPageThreeTitleNameId);
  writeNotNull('agreementPageCloseImg', instance.agreementPageCloseImg);
  writeNotNull(
      'agreementPageCloseImgHidden', instance.agreementPageCloseImgHidden);
  writeNotNull(
      'agreementPageCloseImgWidth', instance.agreementPageCloseImgWidth);
  writeNotNull(
      'agreementPageCloseImgHeight', instance.agreementPageCloseImgHeight);
  writeNotNull(
      'agreementPageTitleTextSize', instance.agreementPageTitleTextSize);
  writeNotNull(
      'agreementPageTitleTextColor', instance.agreementPageTitleTextColor);
  writeNotNull(
      'agreementPageTitleTextBold', instance.agreementPageTitleTextBold);
  writeNotNull('agreementPageTitleHidden', instance.agreementPageTitleHidden);
  return val;
}

AndroidCustomOperatorSlogan _$AndroidCustomOperatorSloganFromJson(
    Map<String, dynamic> json) {
  return AndroidCustomOperatorSlogan()
    ..sloganOffsetX = json['sloganOffsetX'] as int?
    ..sloganOffsetY = json['sloganOffsetY'] as int?
    ..sloganOffsetBottomY = json['sloganOffsetBottomY'] as int?
    ..sloganTextSize = json['sloganTextSize'] as int?
    ..sloganTextColor = json['sloganTextColor'] as String?
    ..sloganOffsetRightX = json['sloganOffsetRightX'] as int?
    ..sloganAlignParentRight = json['sloganAlignParentRight'] as bool?
    ..sloganHidden = json['sloganHidden'] as bool?
    ..sloganTextBold = json['sloganTextBold'] as bool?;
}

Map<String, dynamic> _$AndroidCustomOperatorSloganToJson(
    AndroidCustomOperatorSlogan instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sloganOffsetX', instance.sloganOffsetX);
  writeNotNull('sloganOffsetY', instance.sloganOffsetY);
  writeNotNull('sloganOffsetBottomY', instance.sloganOffsetBottomY);
  writeNotNull('sloganTextSize', instance.sloganTextSize);
  writeNotNull('sloganTextColor', instance.sloganTextColor);
  writeNotNull('sloganOffsetRightX', instance.sloganOffsetRightX);
  writeNotNull('sloganAlignParentRight', instance.sloganAlignParentRight);
  writeNotNull('sloganHidden', instance.sloganHidden);
  writeNotNull('sloganTextBold', instance.sloganTextBold);
  return val;
}

AndroidCustomDialog _$AndroidCustomDialogFromJson(Map<String, dynamic> json) {
  return AndroidCustomDialog()
    ..dialogTheme = json['dialogTheme'] as bool?
    ..dialogAlignBottom = json['dialogAlignBottom'] as bool?
    ..dialogOffsetX = json['dialogOffsetX'] as int?
    ..dialogOffsetY = json['dialogOffsetY'] as int?
    ..dialogWidth = json['dialogWidth'] as int?
    ..dialogHeight = json['dialogHeight'] as int?
    ..dialogBackground = json['dialogBackground'] as String?
    ..dialogBackgroundClickClose = json['dialogBackgroundClickClose'] as bool?;
}

Map<String, dynamic> _$AndroidCustomDialogToJson(AndroidCustomDialog instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dialogTheme', instance.dialogTheme);
  writeNotNull('dialogAlignBottom', instance.dialogAlignBottom);
  writeNotNull('dialogOffsetX', instance.dialogOffsetX);
  writeNotNull('dialogOffsetY', instance.dialogOffsetY);
  writeNotNull('dialogWidth', instance.dialogWidth);
  writeNotNull('dialogHeight', instance.dialogHeight);
  writeNotNull('dialogBackground', instance.dialogBackground);
  writeNotNull(
      'dialogBackgroundClickClose', instance.dialogBackgroundClickClose);
  return val;
}

AndroidCustomView _$AndroidCustomViewFromJson(Map<String, dynamic> json) {
  return AndroidCustomView()
    ..viewClass = json['viewClass'] as String?
    ..viewText = json['viewText'] as String?
    ..viewTextColor = json['viewTextColor'] as String?
    ..viewTextFont = json['viewTextFont'] as int?
    ..viewTextBold = json['viewTextBold'] as bool?
    ..viewAlignParentRight = json['viewAlignParentRight'] as bool?
    ..viewHorizontalCenter = json['viewHorizontalCenter'] as bool?
    ..viewHorizontalCenterVertical =
        json['viewHorizontalCenterVertical'] as bool?
    ..viewOffsetX = json['viewOffsetX'] as int?
    ..viewOffsetY = json['viewOffsetY'] as int?
    ..viewOffsetRightX = json['viewOffsetRightX'] as int?
    ..viewOffsetBottomY = json['viewOffsetBottomY'] as int?
    ..viewWidth = json['viewWidth'] as int?
    ..viewHeight = json['viewHeight'] as int?
    ..viewImg = json['viewImg'] as String?;
}

Map<String, dynamic> _$AndroidCustomViewToJson(AndroidCustomView instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('viewClass', instance.viewClass);
  writeNotNull('viewText', instance.viewText);
  writeNotNull('viewTextColor', instance.viewTextColor);
  writeNotNull('viewTextFont', instance.viewTextFont);
  writeNotNull('viewTextBold', instance.viewTextBold);
  writeNotNull('viewAlignParentRight', instance.viewAlignParentRight);
  writeNotNull('viewHorizontalCenter', instance.viewHorizontalCenter);
  writeNotNull(
      'viewHorizontalCenterVertical', instance.viewHorizontalCenterVertical);
  writeNotNull('viewOffsetX', instance.viewOffsetX);
  writeNotNull('viewOffsetY', instance.viewOffsetY);
  writeNotNull('viewOffsetRightX', instance.viewOffsetRightX);
  writeNotNull('viewOffsetBottomY', instance.viewOffsetBottomY);
  writeNotNull('viewWidth', instance.viewWidth);
  writeNotNull('viewHeight', instance.viewHeight);
  writeNotNull('viewImg', instance.viewImg);
  return val;
}

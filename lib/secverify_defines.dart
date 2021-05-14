import 'package:flutter/foundation.dart';

typedef SecVerifyResultListener = void Function(Map? rt, Map? err);

enum verifyListenerType {
  openAuthPage, // 拉起授权页面回调
  cancelAuth, // 取消授权页面回调
  onLoginEvent, // 一键登录点击取token回调, 不包含checkBox未勾选事件
  customBtnEvent //自定义事件回调
}

class SecVerifySDKMethod {
  final num id;
  final String name;

  SecVerifySDKMethod({required this.name, required this.id}): assert(name != null), assert(id != null), super();
}

class SecVerifySDKMethods {
  // Basic Info 方法
  static final SecVerifySDKMethod getVersion            = SecVerifySDKMethod(name: 'getVersion', id: 0);
    static final SecVerifySDKMethod secVerifyEnable       = SecVerifySDKMethod(name: 'secVerifyEnable', id: 1);
  static final SecVerifySDKMethod currentOperatorType   = SecVerifySDKMethod(name: 'currentOperatorType', id: 2);
  // Cache
  static final SecVerifySDKMethod clearPhoneScripCache  = SecVerifySDKMethod(name: 'clearPhoneScripCache', id: 3);
  // Debug 方法
  static final SecVerifySDKMethod enableDebug         = SecVerifySDKMethod(name: 'enableDebug', id: 4);
  // 协议
  static final SecVerifySDKMethod uploadPrivacyStatus = SecVerifySDKMethod(name: 'uploadPrivacyStatus', id: 5);
  // 手动关闭
  static final SecVerifySDKMethod finishLoginVC       = SecVerifySDKMethod(name: 'finishLoginVC', id: 6);
  static final SecVerifySDKMethod hideLoading         = SecVerifySDKMethod(name: 'hideLoading', id: 7);
  // 免密登录
  static final SecVerifySDKMethod preVerify           = SecVerifySDKMethod(name: 'preVerify', id: 8);
  static final SecVerifySDKMethod verify              = SecVerifySDKMethod(name: 'verify', id: 9);
  // 本机认证
  static final SecVerifySDKMethod mobileAuthToken     = SecVerifySDKMethod(name: 'mobileAuthToken', id: 10);
  static final SecVerifySDKMethod mobileVerify        = SecVerifySDKMethod(name: 'mobileVerify', id: 11);

  static final SecVerifySDKMethod platformVersion     = SecVerifySDKMethod(name: 'platformVersion', id: 12);

  //授权页面回调 Android
  static final SecVerifySDKMethod otherOAuthPage     = SecVerifySDKMethod(name: 'OtherOAuthPageCallBack', id: 13);

  //竖屏UI
  static final SecVerifySDKMethod setAndroidPortraitLayout     = SecVerifySDKMethod(name: 'setAndroidPortraitLayout', id: 14);

  //横屏UI
  static final SecVerifySDKMethod setAndroidLandscapeLayout     = SecVerifySDKMethod(name: 'setAndroidLandscapeLayout', id: 15);

  //关闭授权页面 Android
  static final SecVerifySDKMethod finishOAuthPage     = SecVerifySDKMethod(name: 'finishOAuthPage', id: 16);

  //登录成功或失败是否自动关闭授权页面 Android
  static final SecVerifySDKMethod autoFinishOAuthPage     = SecVerifySDKMethod(name: 'autoFinishOAuthPage', id: 17);
}
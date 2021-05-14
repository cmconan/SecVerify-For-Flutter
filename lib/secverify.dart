import 'dart:async';
import 'dart:io';

import 'secverify_defines.dart';
import 'secverify_UIConfig.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

class Secverify {
  static const MethodChannel _channel = const MethodChannel('com.mob.secverify.methodChannel');
  static const EventChannel _channelReceiver = const EventChannel('com.mob.secverify.verifyEventChannel');

  /*
  * 获取SDK版本号
  * */
  static Future<String?> get getVersion async {
    final String? version = await _channel.invokeMethod(SecVerifySDKMethods.getVersion.name);
    return version;
  }

  /*
   * 获取设备版本号
   */
  static Future<String?> get platformVersion async {
    final String? platformVersion = await _channel.invokeMethod(SecVerifySDKMethods.platformVersion.name);
    return platformVersion;
  }

  static Future<dynamic> submitPrivacyGrantResult([bool? status, Function(bool)? result]) {
    final Map<String, bool?> params = {'status': status};
    Future<dynamic> callBack = _channel.invokeMethod(SecVerifySDKMethods.uploadPrivacyStatus.name, params);
    callBack.then((dynamic response) {
      // if (response != null && response is bool) {
      //   result(response);
      // }
    });

    return callBack;
  }

  /*
  * 当前的移动网络类型
  * CMCC:Mobile CUCC:Union CTCC:Telecom UNKNOW:Unknow
  * */
  static Future<dynamic> get currentOperatorType async {
    final String? operator = await _channel.invokeMethod(SecVerifySDKMethods.currentOperatorType.name);
    return operator;
  }

  /*
  * enableDebug
  * To Enable Debug Mode To Print More Detail Information
  * */
  static Future<dynamic> enableDebug([bool enable = false]) {
    final Map args = {'enable': enable};
    return _channel.invokeMethod(SecVerifySDKMethods.enableDebug.name, args);
  }

  /*
  * clearPhoneScripCache
  * To clear the sdk cache
  * */
  static Future<dynamic> clearPhoneScripCache() {
    return _channel.invokeMethod(SecVerifySDKMethods.clearPhoneScripCache.name);
  }

  /*
  * isVerifySupport
  * */
  static Future<bool?> get isVerifySupport async {
    final bool? isSupport = await _channel.invokeMethod(SecVerifySDKMethods.secVerifyEnable.name);
    return isSupport;
  }

  /*
  * preVerify
  *
  * @params timeout optional double value
  * */
  static Future<dynamic> preVerify({double timeout = 4.0, required SecVerifyResultListener result}) {
    final Map<String, dynamic> params = {'timeout': timeout};
    Future<dynamic> callBack = _channel.invokeMethod(SecVerifySDKMethods.preVerify.name, params);

    callBack.then((dynamic response) {
      if (result != null && response != null && response is Map) {
        result(response['ret'], response['err']);
      } else {
        result(null, null);
      }
    });

    return callBack;
  }

  ///android 授权页面按钮点击回调
  static Future<dynamic> otherOAuthPageCallBack(SecVerifyResultListener result){
    Future<dynamic> callBack = _channel.invokeMethod(SecVerifySDKMethods.otherOAuthPage.name);
    _channelReceiver.receiveBroadcastStream().listen((event) {
      if (result != null && event != null &&  event is Map) {
        result(event, null);
      } else {
        result(null, null);
      }
    });

    return callBack;
  }
  
  static Future<dynamic> setAndroidPortraitLayout(Map<String,Object> uiSettings){
    final Map<String,Object> params  = {'androidPortraitConfig' : uiSettings};
    Future<dynamic> callback = _channel.invokeMethod(SecVerifySDKMethods.setAndroidPortraitLayout.name,params);

    return callback;
  }


  static Future<dynamic> setAndroidLandscapeLayout(Map<String,Object> landUiSettings){
    final Map<String,Object> params  = {'androidLandscapeConfig' : landUiSettings};
    Future<dynamic> callback = _channel.invokeMethod(SecVerifySDKMethods.setAndroidLandscapeLayout.name,params);

    return callback;
  }


  /*
  * verify
  *
  * @params timeout optional double value
  * @params result Function(Map dict, Map err)
  * */
  static Future<dynamic>? verify(
      SecVerifyUIConfig config,
      {SecVerifyResultListener? openAuthListener,
        SecVerifyResultListener? cancelAuthPageListener,
        SecVerifyResultListener? oneKeyLoginListener,
        SecVerifyResultListener? customEventListener,
        SecVerifyResultListener? androidEventListener}) {
    final Map<String, dynamic> params = config.toJson();
    Future<dynamic>? callBack;
    if (Platform.isIOS) {
      callBack = _channel.invokeMethod(
          SecVerifySDKMethods.verify.name, params);
      _channelReceiver.receiveBroadcastStream().listen((event) {
        if (event != null && event is Map) {
          verifyListenerType type = verifyListenerType
              .values[event['ListenerType']];
          switch (type) {
            case verifyListenerType.openAuthPage:
              if (openAuthListener != null) {
                openAuthListener(event['ret'], event['err']);
              }
              break;
            case verifyListenerType.cancelAuth:
              if (cancelAuthPageListener != null) {
                cancelAuthPageListener(event['ret'], event['err']);
              }
              break;
            case verifyListenerType.onLoginEvent:
              if (oneKeyLoginListener != null) {
                oneKeyLoginListener(event['ret'], event['err']);
              }
              break;
            case verifyListenerType.customBtnEvent:
              if (customEventListener != null) {
                customEventListener(event['ret'], event['err']);
              }
              break;
          }
        }
      }, onError: (event) {
        if (oneKeyLoginListener != null) {
          oneKeyLoginListener(null, null);
        }
      });
    }else if(Platform.isAndroid){
      _channel.invokeMethod(SecVerifySDKMethods.setAndroidLandscapeLayout.name,params);
      _channel.invokeMethod(SecVerifySDKMethods.setAndroidPortraitLayout.name,params);
      Future<dynamic> callBack = _channel.invokeMethod(SecVerifySDKMethods.verify.name);
      _channelReceiver.receiveBroadcastStream().listen((event) {
        if (androidEventListener != null && event != null &&  event is Map) {
          if (event['ret'] != null){
            androidEventListener(event, null);
          } else if (event['err'] != null){
            androidEventListener(null, event);
          }
        }
      });
    }
    return callBack;
  }

  /*
  * mobileAuthToken
  *
  * @params timeout optional double value
  * @params result Function(Map dict, Map err)
  * */
  static Future<dynamic> mobileAuthToken({double? timeout, required SecVerifyResultListener result}) {
    final Map<String, dynamic> args = {'timeout': timeout};
    Future<dynamic> callBack = _channel.invokeMethod(SecVerifySDKMethods.mobileAuthToken.name, args);
    if(Platform.isAndroid) {
      _channelReceiver.receiveBroadcastStream().listen((event) {
        print('flutter:dart:received mobileAuthToken');
        if (event != null && event is Map) {
          if (event['ret'] != null) {
            result(event['ret'], null);
          } else if (event['err'] != null) {
            result(null, event);
          }
        }
      });
    }else if(Platform.isIOS){
      if (result != null) {
        callBack.then((dynamic response) {
          if (response != null && response is Map) {
            result(response['ret'], response['err']);
          } else {
            result(null, null);
          }
        });
      }
    }
    return callBack;
  }

  /*
  * mobileVerify
  * */
  static Future<dynamic> mobileVerify({
    required String phoneNum,
    required Map<String, dynamic> tokenInfo,
    double? timeout,
    required SecVerifyResultListener result
  }) {
    final Map<String, dynamic> args = {'phoneNum': phoneNum, 'tokenInfo': tokenInfo, 'timeout': timeout};
    Future<dynamic> callBack = _channel.invokeMethod(SecVerifySDKMethods.mobileVerify.name, args);

    if (result != null) {
      callBack.then((dynamic response) {
        if (response != null && response is Map) {
          result(response['ret'], response['err']);
        } else {
          result(null, null);
        }
      });
    }

    return callBack;
  }

  /*
  * 手动关闭授权页面
  * */
  static Future<dynamic> manualDismissLoginVC({bool flag = false}) async {
    final Map<String, bool> args = {'flag': flag};
    return await _channel.invokeMethod(SecVerifySDKMethods.finishLoginVC.name, args);
  }

  /*
  * 手动关闭授权页面 Android
  * */
  static Future<dynamic> finishOAuthPage(){
    return _channel.invokeMethod(SecVerifySDKMethods.finishOAuthPage.name);
  }

  /*
  * 登录成功或失败是否自动关闭授权页面 Android
  * */
  static Future<dynamic> autoFinishOAuthPage({bool flag = false}){
    final Map<String, bool> args = {'autoFinish': flag};
    return _channel.invokeMethod(SecVerifySDKMethods.autoFinishOAuthPage.name,args);
  }

  /*
  * 手动关闭授权页面的Loading
  * */
  static Future<dynamic> manualDismissLoading() {
    return _channel.invokeMethod(SecVerifySDKMethods.hideLoading.name);
  }

  /*
  *
  * */
  static addListener(SecVerifyResultListener result) {
    _channelReceiver.receiveBroadcastStream().listen((event) {
    }, onError: (event) {
    });
  }
}

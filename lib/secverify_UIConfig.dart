import 'dart:collection';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'secverify_UIConfig.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SecVerifyUIConfig {
  SecVerifyUIConfigIOS _iOSConfig;

  SecVerifyUIConfigAndroid _androidPortraitConfig;
  SecVerifyUIConfigAndroid _androidLandscapeConfig;

  // iOS Config
  set iOSConfig(SecVerifyUIConfigIOS config) => _iOSConfig;

  SecVerifyUIConfigIOS get iOSConfig {
    if (_iOSConfig == null) {
      _iOSConfig = new SecVerifyUIConfigIOS();
    }

    return _iOSConfig;
  }

  // Android Portrait Config
  set androidPortraitConfig(SecVerifyUIConfigAndroid androidPortrait) => _androidPortraitConfig;

  SecVerifyUIConfigAndroid get androidPortraitConfig {
    if (_androidPortraitConfig == null) {
      _androidPortraitConfig = new SecVerifyUIConfigAndroid();
    }

    return _androidPortraitConfig;
  }

  // Android Landscape Config
  set androidLandscapeConfig(SecVerifyUIConfigAndroid androidLandscape) => _androidLandscapeConfig;

  SecVerifyUIConfigAndroid get androidLandscapeConfig {
    if (_androidLandscapeConfig == null) {
      _androidLandscapeConfig = new SecVerifyUIConfigAndroid();
    }
    return _androidLandscapeConfig;
  }

  SecVerifyUIConfig();

  // 序列化
  Map<String, dynamic> toJson() => _$SecVerifyUIConfigToJson(this);

  // 反序列化
  factory SecVerifyUIConfig.fromJson(Map<String, dynamic> json) =>
      _$SecVerifyUIConfigFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SecVerifyUIConfigIOS {
  //导航栏隐藏(例:@(YES))
  bool navBarHidden;

  /* 外部手动管理关闭授权页
   * 默认为NO，点击一键登录按钮后成功或失败，授权页均自动关闭。(例:@(NO))
   * 可通过[SVSDKHyVerify finishLoginVcAnimated:Completion:]手动关闭
   */
  bool manualDismiss;

  // StatusBar
  /*状态栏隐藏 eg.@(NO)*/
  bool prefersStatusBarHidden;

  /* 需先设置Info.plist: View controller-based status bar appearance = YES 方可生效
  * UIStatusBarStyleDefault：状态栏显示 黑
  * UIStatusBarStyleLightContent：状态栏显示 白
  * UIStatusBarStyleDarkContent：状态栏显示 黑 API_AVAILABLE(ios(13.0)) = 3
  * eg. @(UIStatusBarStyleLightContent)
  */
  iOSStatusBarStyle preferredStatusBarStyle;

  // 横竖屏
  //横竖屏 是否支持自动转屏 (例:@(NO))
  bool shouldAutorotate;

  //横竖屏 设备支持方向 (例:@(UIInterfaceOrientationMaskAll))
  iOSInterfaceOrientationMask supportedInterfaceOrientations;

  //横竖屏 偏好方向方向（需和支持方向匹配） (例:@(UIInterfaceOrientationPortrait))
  iOSInterfaceOrientation preferredInterfaceOrientationForPresentation;

  //Present方法的animate参数
  bool presentingWithAnimate;

  /* UIModalPresentationStyle
  * 设置为UIModalPresentationOverFullScreen，可使模态背景透明，可实现弹窗授权页
  * 默认UIModalPresentationFullScreen
  * eg. @(UIModalPresentationOverFullScreen)
  */
  /*授权页 ModalPresentationStyle*/
  iOSModalTransitionStyle modalTransitionStyle;

  /* modalTransitionStyle系统自带的弹出方式 仅支持以下三种
   * UIModalTransitionStyleCoverVertical 底部弹出
   * UIModalTransitionStyleCrossDissolve 淡入
   * UIModalTransitionStyleFlipHorizontal 翻转显示
   */
  iOSModalPresentationStyle modalPresentationStyle;

  //隐私协议web页vc
  /*协议页状态栏样式 默认：UIStatusBarStyleDefault*/
  bool showPrivacyWebVCByPresent;

  /*协议页使用模态弹出（默认使用Push)*/
  iOSStatusBarStyle privacyWebVCPreferredStatusBarStyle;

  /*协议页 ModalPresentationStyle （协议页使用模态弹出时生效）*/
  iOSModalPresentationStyle privacyWebVCModalPresentationStyle;

  // 暗黑模式设置
  /* UIUserInterfaceStyle
  * UIUserInterfaceStyleUnspecified - 不指定样式，跟随系统设置进行展示
  * UIUserInterfaceStyleLight       - 明亮
  * UIUserInterfaceStyleDark,       - 暗黑 仅对iOS13+系统有效
  */
  /*授权页 UIUserInterfaceStyle,默认:UIUserInterfaceStyleLight,eg. @(UIUserInterfaceStyleLight)*/
  iOSUserInterfaceStyle overrideUserInterfaceStyle;

  // Back Btn
  String backBtnImageName;

  // LoginBtn
  // Notice: Login Btn Couldn't Be Hidden
  String loginBtnText;
  String loginBtnBgColor;
  String loginBtnTextColor;

  num loginBtnBorderWidth;
  num loginBtnCornerRadius;
  String loginBtnBorderColor;

  List<String> loginBtnBgImgNames; // 登录按钮背景图片数组 (例:@[激活状态的图片,失效状态的图片,高亮状态的图片])

  // Logo
  bool logoHidden;
  String logoImageName;
  num logoCornerRadius;

  // PhoneLabel
  bool phoneHidden;

  String numberColor;
  String numberBgColor;
  iOSTextAlignment numberTextAlignment;

  num phoneCorner;
  num phoneBorderWidth;
  String phoneBorderColor;

  // CheckBox
  bool checkHidden;
  bool checkDefaultState;

  String checkedImgName;
  String uncheckedImgName;

  // Privacy
  // Notice Privacy Couldn't Be Hidden
  num privacyLineSpacing;
  iOSTextAlignment privacyTextAlignment;
  List<SecVerifyUIConfigIOSPrivacyText> privacySettings;

  // Slogan
  bool sloganHidden;
  String sloganText;
  String sloganBgColor;
  String sloganTextColor;
  iOSTextAlignment sloganTextAlignment;

  num sloganCorner;
  num sloganBorderWidth;
  String sloganBorderColor;

  List<SecVerifyUIConfigIOSCustomView> widgets;

  SecVerifyUIConfigIOSCustomLayouts portraitLayouts;
  SecVerifyUIConfigIOSCustomLayouts landscapeLayouts;

  SecVerifyUIConfigIOS();

  // 序列化
  Map<String, dynamic> toJson() => _$SecVerifyUIConfigIOSToJson(this);

  // 反序列化
  factory SecVerifyUIConfigIOS.fromJson(Map<String, dynamic> json) =>
      _$SecVerifyUIConfigIOSFromJson(json);
}

/* 协议文字拼接辅助
 * 拼接成完整隐私协议
 */
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SecVerifyUIConfigIOSPrivacyText {
  String text; //隐私协议显示名称
  num textFont; //文字大小
  String textFontName; // 文字字体，如果没有相应的字体则默认使用系统字体
  String textColor; //文字颜色
  String webTitleText; //隐私协议web页标题显示文字,默认取text
  String textLinkString; //跳转链接，如需跳转则比传，可设置本地html路径

  /* 运营商协议占位标记
   * YES表示用来显示运营商协议，sdk内部自动补充协议名称(text)和链接(textLinkString)
   * 此时，text、textLinkString无需设置
   */
  bool isOperatorPlaceHolder;

  Map<String, dynamic> textAttribute; //文字富文本样式，覆盖textColor、textFont

  SecVerifyUIConfigIOSPrivacyText();

  // 序列化
  Map<String, dynamic> toJson() =>
      _$SecVerifyUIConfigIOSPrivacyTextToJson(this);

  // 反序列化
  factory SecVerifyUIConfigIOSPrivacyText.fromJson(Map<String, dynamic> json) =>
      _$SecVerifyUIConfigIOSPrivacyTextFromJson(json);
}

/*
Custom View
 */
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SecVerifyUIConfigIOSCustomView {
  // Common Config
  num widgetID;
  // 是否是上层显示，默认是在上层显示
  bool isTopSubView = true;
  iOSCustomWidgetType widgetType;
  iOSCustomWidgetNavPosition navPosition;

  // ImageView
  String imaName;
  num ivCornerRadius;

  // Button
  String btnTitle;
  String btnBgColor;
  String btnTitleColor;
  num btnTitleFont;
  // [normalImage, highlightImage, disableImage]
  List<String> btnImages;
  num btnBorderWidth;
  String btnBorderColor;
  num btnBorderCornerRadius;

  // TextView
  String labelText;
  String labelTextColor;
  num labelFont;
  String labelBgColor;
  iOSTextAlignment labelTextAlignment;

  // layouts
  // 如果是导航栏自定义视图，则只需要设置portraitLayout的width和height就可以了
  SecVerifyUIConfigIOSLayout portraitLayout;
  SecVerifyUIConfigIOSLayout landscapeLayout;

  SecVerifyUIConfigIOSCustomView({@required num widgetID, @required iOSCustomWidgetType type}) {
    this.widgetID = widgetID;
    this.widgetType = type;
  }

  // 序列化
  Map<String, dynamic> toJson() =>
      _$SecVerifyUIConfigIOSCustomViewToJson(this);
  // 反序列化
  factory SecVerifyUIConfigIOSCustomView.fromJson(Map<String, dynamic> json) =>
      _$SecVerifyUIConfigIOSCustomViewFromJson(json);
}

/*
Custom Layouts
 */
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SecVerifyUIConfigIOSCustomLayouts {
  // Layout
  SecVerifyUIConfigIOSLayout loginBtnLayout;
  SecVerifyUIConfigIOSLayout phoneLabelLayout;
  SecVerifyUIConfigIOSLayout sloganLabelLayout;
  SecVerifyUIConfigIOSLayout logoImageViewLayout;
  SecVerifyUIConfigIOSLayout privacyTextViewLayout;
  SecVerifyUIConfigIOSPrivacyCheckBoxLayout checkBoxLayout;

  SecVerifyUIConfigIOSCustomLayouts();
  // 序列化
  Map<String, dynamic> toJson() =>
      _$SecVerifyUIConfigIOSCustomLayoutsToJson(this);
  // 反序列化
  factory SecVerifyUIConfigIOSCustomLayouts.fromJson(Map<String, dynamic> json) =>
      _$SecVerifyUIConfigIOSCustomLayoutsFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SecVerifyUIConfigIOSLayout {
  num layoutTop;
  num layoutLeading;
  num layoutBottom;
  num layoutTrailing;

  num layoutCenterX;
  num layoutCenterY;

  num layoutWidth;
  num layoutHeight;

  SecVerifyUIConfigIOSLayout();
  // 序列化
  Map<String, dynamic> toJson() =>
      _$SecVerifyUIConfigIOSLayoutToJson(this);
  // 反序列化
  factory SecVerifyUIConfigIOSLayout.fromJson(Map<String, dynamic> json) =>
      _$SecVerifyUIConfigIOSLayoutFromJson(json);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SecVerifyUIConfigIOSPrivacyCheckBoxLayout {
  num layoutTop;
  num layoutRight;
  num layoutCenterY;
  num layoutWidth;
  num layoutHeight;

  SecVerifyUIConfigIOSPrivacyCheckBoxLayout();
  // 序列化
  Map<String, dynamic> toJson() =>
      _$SecVerifyUIConfigIOSPrivacyCheckBoxLayoutToJson(this);
  // 反序列化
  factory SecVerifyUIConfigIOSPrivacyCheckBoxLayout.fromJson(Map<String, dynamic> json) =>
      _$SecVerifyUIConfigIOSPrivacyCheckBoxLayoutFromJson(json);
}

/// iOS 状态栏样式
/// Xcode工程内的Info.plist文件配置需设置为YES，即运行单个页面自行管理状态栏: View controller-based status bar appearance = YES
enum iOSStatusBarStyle {
  @JsonValue(0)
  styleDefault, // 状态栏显示 黑
  @JsonValue(1)
  styleLightContent, // 状态栏显示 白
  @JsonValue(3)
  styleDarkContent // 状态栏显示 黑 API_AVAILABLE(ios(13.0)) = 3
}

///iOS 文字对齐方式
enum iOSTextAlignment {
  @JsonValue(1)
  center, // Visually centered 居中
  @JsonValue(0)
  left, // Visually left aligned 居左
  @JsonValue(2)
  right, // Visually right aligned 居右
  @JsonValue(3)
  justified, // Fully-justified. The last line in a paragraph is natural-aligned. 自动
  @JsonValue(4)
  natural, // Indicates the default alignment for script 自然段落
}

/// iOS 支持的横竖屏方向
enum iOSInterfaceOrientationMask {
  @JsonValue(2)
  portrait, //竖屏
  @JsonValue(16)
  landscapeLeft, //横屏：左
  @JsonValue(8)
  landscapeRight, //横屏：右
  @JsonValue(4)
  portraitUpsideDown, //上下倒置
  @JsonValue(24)
  landscape, //横屏：左+右
  @JsonValue(30)
  all, //全部方向
  @JsonValue(26)
  allButUpsideDown //全部方向，除了上下倒置
}

/// iOS 屏幕方向
enum iOSInterfaceOrientation {
  @JsonValue(1)
  portrait, //竖屏
  @JsonValue(2)
  portraitUpsideDown, //上下倒置
  @JsonValue(4)
  landscapeLeft, //横屏：左
  @JsonValue(3)
  landscapeRight, //横屏：右
  @JsonValue(0)
  unknown,
}

/// iOS 系统自带的弹出方式
enum iOSModalTransitionStyle {
  @JsonValue(0)
  coverVertical, // 底部弹出
  @JsonValue(1)
  flipHorizontal, // 淡入
  @JsonValue(2)
  crossDissolve, // 翻转显示
  @JsonValue(3)
  partialCurl
}

/// iOS 系统的弹出样式
enum iOSModalPresentationStyle {
  @JsonValue(0)
  fullScreen,
  @JsonValue(1)
  pageSheet,
  @JsonValue(2)
  forSheet,
  @JsonValue(3)
  currentContext,
  @JsonValue(4)
  custom,
  @JsonValue(5)
  overFullScreen,
  @JsonValue(6)
  overCurrentContext,
  @JsonValue(7)
  popOver,
  @JsonValue(8)
  blurOverFullScreen,
  @JsonValue(-1)
  none,
  @JsonValue(-2)
  automatic
}

/// iOS 主题模式
enum iOSUserInterfaceStyle {
  @JsonValue(0)
  unspecified, //跟随系统
  @JsonValue(1)
  light, //亮
  @JsonValue(2)
  dark //暗黑 API_AVAILABLE(ios(13.0))
}

/// iOS支持的自定义视图
enum iOSCustomWidgetType {
  label,
  button,
  imageView
}

/// iOS 导航栏自定义方向
enum iOSCustomWidgetNavPosition {
  navLeft,
  navRight
}


@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SecVerifyUIConfigAndroid{

  SecVerifyUIConfigAndroid();
  // AndroidCustomLoginBtn customLoginBtn;
  String loginBtnImgIdName;//登录按钮背景图资源名，只需要传入名称，不传文件后缀类型。如R.drawable.bg 传bg即可
  String loginImgPressedName;//登陆按钮按下状态图片资源名称，需要在assets里配置，传入完整的后缀名称 或者传入颜色 #EEEEEE
  String loginImgNormalName;//登陆按钮正常状态图片资源名称，需要在assets里配置，传入完整的后缀名称
  String loginBtnTextIdName;//登录按钮文字资源ID名称 如R.string.onekey_login 传入onekey_login即可
  String loginBtnTextColorIdName;//登录按钮字体颜色 如R.color.text_color 传入text_color即可
  int loginBtnTextSize;//登录按钮文字大小
  int loginBtnWidth;//登录按钮宽度大小
  int loginBtnHeight;//登录按钮高度大小
  int loginBtnOffsetX;//登录按钮左偏移量
  int loginBtnOffsetY;//登录按钮上偏移量
  int loginBtnOffsetBottomY;//登录按钮下偏移量
  int loginBtnOffsetRightX;//登录按钮右偏移量
  bool loginBtnAlignParentRight;//登录按钮是否靠屏幕右边,
  bool loginBtnHidden;//登录按钮是否隐藏,默认false
  String loginBtnTextStringName;//登录按钮文字 例：“一键登录”
  bool loginBtnTextBold;//登录按钮文字是否加粗,默认false

  // AndroidCustomAuthPage customAuthPage;
  //背景
  String backgroundImgPath;//设置背景图片资源 需要在assets里配置，传入完整的后缀名称
  bool backgroundClickClose;//设置点击授权页面背景是否关闭页面
  bool fullScreen;//是否设置全屏
  bool virtualButtonTransparent;
  bool immersiveTheme;//设置状态栏为透明状态栏 5.0以上生效
  bool immersiveStatusTextColorBlack;//设置状态栏文字颜色为黑色，只在6.0以上生效

  // AndroidCustomNav customNav;

  //导航栏
  String navColorIdName;   //标题栏背景色资源 R.color.nav_bg  传入nav_bg
  String navTextIdName;    // 标题栏标题文字资源ID R.string.nav_text 传入nav_text
  String navTextColorIdName;//标题栏文字颜色资源ID R.color.nav_text 传入nav_text
  bool navHidden;    //标题栏是否隐藏
  bool navTransparent;//标题栏是否透明
  bool navCloseImgHidden;//标题栏左侧关闭按钮是否隐藏
  int navTextSize;//标题栏文字大小
  String navCloseImgPath; //标题栏左侧关闭按钮图片资源名称 需要在assets里配置，传入完整的后缀名称
  int navCloseImgWidth;//标题栏左侧关闭按钮图片宽度
  int navCloseImgHeight;//标题栏左侧关闭按钮图片高度
  int navCloseImgOffsetX;//标题栏左侧关闭按钮图片宽度（单位：dp）例：16
  int navCloseImgOffsetRightX;//标题栏左侧关闭按钮图片右偏移量
  int navCloseImgOffsetY;//标题栏左侧关闭按钮图片上偏移量
  bool navTextBold;//标题栏文字是否加粗
  ImageScaleType navCloseImgScaleType;//标题栏图片缩放类型"CENTER","MATRIX","FIT_XY","FIT_START","FIT_CENTER","FIT_END","CENTER_CROP","CENTER_INSIDE"

  // AndroidCustomPhoneNumber customPhoneNumber;
  //托敏手机号
  String numberColorIdName;//脱敏手机号文字颜色资源  R.color.phone_color  传入phone_color
  int numberSize;//脱敏手机号字体大小资源ID
  int numberOffsetX;//脱敏手机号 左偏移量
  int numberOffsetY;//脱敏手机号 上偏移量
  int numberOffsetBottomY;//脱敏手机号 下偏移量
  int numberOffsetRightX;//脱敏手机号 右偏移量
  bool numberAlignParentRight;//脱敏手机号是否靠屏幕右边
  bool numberHidden;//脱敏手机号隐藏
  bool numberBold;//脱敏手机号是否加粗

  // AndroidCustomSwitchNumber customSwitchNumber;
  //切换账号
  String switchAccColorIdName;//切换账号字体颜色 R.color.swicth_color  传入swicth_color
  int switchAccTextSize;//切换账号字体大小
  bool switchAccHidden;//切换账号是否隐藏
  int switchAccOffsetX;//切换账号左偏移量
  int switchAccOffsetY;//切换账号上偏移量
  int switchAccOffsetBottomY;//切换账号下偏移量
  int switchAccOffsetRightX;//切换账号右偏移量
  bool switchAccAlignParentRight;//切换账号 是否靠屏幕右边
  String switchAccText;//切换账号 文本内容
  bool switchAccTextBold;//切换账号 文本是否加粗

  // AndroidCustomCheckBox customCheckBox;
  //隐私协议栏复选框
  bool checkboxDefaultState;// 隐私协议checkbox默认状态
  bool checkboxHidden;//隐私协议复选框是否隐藏
  int checkboxOffsetX;//设置复选框左边间距
  int checkboxOffsetRightX;//设置复选框右边间距
  int checkboxOffsetY;//设置复选框顶部间距
  int checkboxOffsetBottomY;//设置复选框底部间距
  double checkboxScaleX;//设置复选框横向缩放
  double checkboxScaleY;//设置复选框纵向缩放
  String checkedImgName;//隐私协议选中时图片名称
  String uncheckedImgName;//隐私协议未选中时图片名称
  int checkboxWidth;//隐私协议复选框宽度
  int checkboxHeight;//隐私协议复选框高度

  // AndroidCustomPrivacy customPrivacy;
  String agreementColor;//隐私协议字体颜色
  int agreementOffsetX;//隐私协议左偏移量
  int agreementOffsetRightX;//隐私协议右偏移量
  int agreementOffsetY;//隐私协议上偏移量
  int agreementOffsetBottomY;//隐私协议下偏移量
  bool agreementGravityLeft;//隐私协议是否左对齐，默认居中
  String agreementBaseTextColor; //隐私协议其他文字的颜色
  int agreementTextSize;//隐私协议 文字大小
  String agreementTextStartIdName;//设置隐私协议文本开头资源

  String agreementTextEndIdName;//设置隐私协议结束文本资源ID
  bool agreementAlignParentRight;//设置隐私协议是否靠屏幕右边
  bool agreementHidden;//设置隐私协议隐藏

  String agreementCmccTextString;//移动隐私协议文本
  String agreementCuccTextString;//联通隐私协议文本
  String agreementCtccTextString;//电信隐私协议文本
  String agreementCtccTextId;//电信隐私协议文本

  String agreementTextStartString;//设置隐私协议文本

  String agreementTextAndString1;//设置隐私协议连接文本1
  String agreementTextAndString2;//设置隐私协议连接文本2
  String agreementTextAndString3;//设置隐私协议连接文本3
  String agreementTextEndString;//设置隐私协议结束文本
  bool agreementTextBold;//隐私协议是否加粗
  bool agreementTextWithUnderLine;//隐私协议是否带有下划线

  String cusAgreementNameId1;//自定义隐私协议一文字资源ID
  String cusAgreementUrl1;//自定义隐私协议二URL
  String cusAgreementColor1;//自定义隐私协议一颜色资源ID

  String cusAgreementNameId2;//自定义隐私协议二文字资源ID
  String cusAgreementUrl2;//自定义隐私协议二URL
  String cusAgreementColor2;//自定义隐私协议二颜色资源ID

  String cusAgreementNameId3;//自定义隐私协议三文字资源ID
  String cusAgreementUrl3;//自定义隐私协议三URL
  String cusAgreementColor3;//自定义隐私协议三颜色资源ID

  String cusAgreementNameText1;//自定义隐私协议一文字 例：“隐私协议一”
  String cusAgreementNameText2;//自定义隐私协议一文字 例：“隐私协议二”
  String cusAgreementNameText3;//自定义隐私协议一文字 例：“隐私协议三”
  // bool cusAgreementColor1Seted;
  // bool cusAgreementColor2Seted;
  // bool cusAgreementColor3Seted;

  //SpannableString agreementText;
  int agreementUncheckHintType; //设置隐私协议复选框未选中时提示类型
  String agreementUncheckHintText;//设置隐私协议复选框未选中时提示的文本 例: "请阅读并勾选隐私协议"

  // AndroidCustomPrivacyContentPage customPrivacyContentPage;
  //隐私协议页面
  String agreementPageTitleString;//设置运营商隐私协议页面标题文本
  String cusAgreementPageOneTitleString;//设置自定义隐私协议一页面标题文本
  String cusAgreementPageTwoTitleString;//设置自定义隐私协议二页面标题文本
  String cusAgreementPageThreeTitleString;//设置自定义隐私协议三页面标题文本

  String agreementPageTitleStringId;//设置运营商隐私协议页面标题文本ID名称
  String cusAgreementPageOneTitleNameId;//设置自定义隐私协议一页面文本ID名称
  String cusAgreementPageTwoTitleNameId;//设置自定义隐私协议一页面标题文本ID名称
  String cusAgreementPageThreeTitleNameId;//设置自定义隐私协议一页面标题文本ID名称

  String agreementPageCloseImg;//设置隐私协议页面关闭图标Drawable名称
  bool agreementPageCloseImgHidden;//设置隐私协议页面关闭图标是否隐藏
  int agreementPageCloseImgWidth;//设置隐私协议页面关闭图标宽度
  int agreementPageCloseImgHeight;//设置隐私协议页面关闭图标高度
  //ImageView.ScaleType agreementPageCloseImgScaleType;
  int agreementPageTitleTextSize;//设置隐私协议页面标题文本大小
  String agreementPageTitleTextColor;//设置隐私协议页面标题文本颜色 rgb 例 #FFBB86FC
  bool agreementPageTitleTextBold;//设置隐私协议页面标题文本是否加粗
  bool agreementPageTitleHidden;//设置隐私协议页面标题文本隐藏

  // AndroidCustomOperatorSlogan customOperatorSlogan;
  int sloganOffsetX;//Slogan左偏移量
  int sloganOffsetY;//Slogan上偏移量
  int sloganOffsetBottomY;//Slogan下偏移量
  int sloganTextSize;//Slogan文字大小 （单位：sp)
  String sloganTextColor;//Slogan文字颜色 例：#ffffffff
  int sloganOffsetRightX;//Slogan右偏移量 （单位：dp） 例：30
  bool sloganAlignParentRight;//Slogan是否靠屏幕右边
  bool sloganHidden;//Slogan隐藏
  bool sloganTextBold;//Slogan文字加粗,

  // AndroidCustomDialog customDialog;
  bool dialogTheme;//设置是否使用弹窗模式，默认false
  bool dialogAlignBottom;//设置弹窗是否靠屏幕底部
  int dialogOffsetX;//弹窗左右偏移量
  int dialogOffsetY;//弹窗上下偏移量
  int dialogWidth;//弹窗宽度（单位：dp）
  int dialogHeight;//弹窗高度（单位：dp）
  String dialogBackground;//设置弹窗蒙版背景
  bool dialogBackgroundClickClose;//设置点击弹窗蒙版是否关闭页面

  Map<String,List<AndroidCustomView>> customView;

  // AndroidCustomAuthPageLogo customAuthPageLogo;
  //logo
  String logoImgPath;//Logo图片资源名称  需要在assets里配置，传入完整的后缀名称
  int logoWidth;//logo宽度
  int logoHeight;//logo高度
  int logoOffsetX;//logo x轴偏移量
  int logoOffsetY;//logo y轴偏移量
  int logoOffsetBottomY;//Logo下偏移量
  int logoOffsetRightX;//Logo右偏移量
  bool logoAlignParentRight;//Logo是否靠屏幕右边
  bool logoHidden;//Logo是否隐藏


  //反序列化
  factory SecVerifyUIConfigAndroid.fromJson(Map<String, dynamic> json) => _$SecVerifyUIConfigAndroidFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$SecVerifyUIConfigAndroidToJson(this);
}


//图片缩放配置
enum ImageScaleType{
  MATRIX,
  FIT_XY,
  FIT_START,
  FIT_CENTER,
  FIT_END,
  CENTER,
  CENTER_CROP,
  CENTER_INSIDE
}


//登陆按钮
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AndroidCustomLoginBtn{

  AndroidCustomLoginBtn();

  String loginBtnImgIdName;//登录按钮背景图资源名，只需要传入名称，不传文件后缀类型。如R.drawable.bg 传bg即可
  String loginImgPressedName;//登陆按钮按下状态图片资源名称，需要在assets里配置，传入完整的后缀名称 或者传入颜色 #EEEEEE
  String loginImgNormalName;//登陆按钮正常状态图片资源名称，需要在assets里配置，传入完整的后缀名称
  String loginBtnTextIdName;//登录按钮文字资源ID名称 如R.string.onekey_login 传入onekey_login即可
  String loginBtnTextColorIdName;//登录按钮字体颜色 如R.color.text_color 传入text_color即可
  int loginBtnTextSize;//登录按钮文字大小
  int loginBtnWidth;//登录按钮宽度大小
  int loginBtnHeight;//登录按钮高度大小
  int loginBtnOffsetX;//登录按钮左偏移量
  int loginBtnOffsetY;//登录按钮上偏移量
  int loginBtnOffsetBottomY;//登录按钮下偏移量
  int loginBtnOffsetRightX;//登录按钮右偏移量
  bool loginBtnAlignParentRight;//登录按钮是否靠屏幕右边,
  bool loginBtnHidden;//登录按钮是否隐藏,默认false
  String loginBtnText;//登录按钮文字 例：“一键登录”
  bool loginBtnTextBold;//登录按钮文字是否加粗,默认false

  //反序列化
  factory AndroidCustomLoginBtn.fromJson(Map<String, dynamic> json) => _$AndroidCustomLoginBtnFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$AndroidCustomLoginBtnToJson(this);
}


//导航栏
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AndroidCustomNav{

  AndroidCustomNav();

  //导航栏
  String navColorIdName;   //标题栏背景色资源 R.color.nav_bg  传入nav_bg
  String navTextIdName;    // 标题栏标题文字资源ID R.string.nav_text 传入nav_text
  String navTextColorIdName;//标题栏文字颜色资源ID R.color.nav_text 传入nav_text
  bool navHidden;    //标题栏是否隐藏
  bool navTransparent;//标题栏是否透明
  bool navCloseImgHidden;//标题栏左侧关闭按钮是否隐藏
  int navTextSize;//标题栏文字大小
  String navCloseImgPath; //标题栏左侧关闭按钮图片资源名称 需要在assets里配置，传入完整的后缀名称
  int navCloseImgWidth;//标题栏左侧关闭按钮图片宽度
  int navCloseImgHeight;//标题栏左侧关闭按钮图片高度
  int navCloseImgOffsetX;//标题栏左侧关闭按钮图片宽度（单位：dp）例：16
  int navCloseImgOffsetRightX;//标题栏左侧关闭按钮图片右偏移量
  int navCloseImgOffsetY;//标题栏左侧关闭按钮图片上偏移量
  bool navTextBold;//标题栏文字是否加粗
  ImageScaleType navCloseImgScaleType;//标题栏图片缩放类型

  //反序列化
  factory AndroidCustomNav.fromJson(Map<String, dynamic> json) => _$AndroidCustomNavFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$AndroidCustomNavToJson(this);
}


//背景页面
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AndroidCustomAuthPage{

  AndroidCustomAuthPage();

  //背景
  String backgroundImgPath;//设置背景图片资源 需要在assets里配置，传入完整的后缀名称
  bool backgroundClickClose;//设置点击授权页面背景是否关闭页面
  bool fullScreen;//是否设置全屏
  bool virtualButtonTransparent;
  bool immersiveTheme;//设置状态栏为透明状态栏 5.0以上生效
  bool immersiveStatusTextColorBlack;//设置状态栏文字颜色为黑色，只在6.0以上生效

  //反序列化
  factory AndroidCustomAuthPage.fromJson(Map<String, dynamic> json) => _$AndroidCustomAuthPageFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$AndroidCustomAuthPageToJson(this);
}


//logo
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AndroidCustomAuthPageLogo{

  AndroidCustomAuthPageLogo();

  //logo
  String logoImgPath;//Logo图片资源名称  需要在assets里配置，传入完整的后缀名称
  int logoWidth;//logo宽度
  int logoHeight;//logo高度
  int logoOffsetX;//logo x轴偏移量
  int logoOffsetY;//logo y轴偏移量
  int logoOffsetBottomY;//Logo下偏移量
  int logoOffsetRightX;//Logo右偏移量
  bool logoAlignParentRight;//Logo是否靠屏幕右边
  bool logoHidden;//Logo是否隐藏

  //反序列化
  factory AndroidCustomAuthPageLogo.fromJson(Map<String, dynamic> json) => _$AndroidCustomAuthPageLogoFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$AndroidCustomAuthPageLogoToJson(this);
}


//脱敏号码
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AndroidCustomPhoneNumber{

  AndroidCustomPhoneNumber();

  //托敏手机号
  String numberColorIdName;//脱敏手机号文字颜色资源  R.color.phone_color  传入phone_color
  int numberSize;//脱敏手机号字体大小资源ID
  int numberOffsetX;//脱敏手机号 左偏移量
  int numberOffsetY;//脱敏手机号 上偏移量
  int numberOffsetBottomY;//脱敏手机号 下偏移量
  int numberOffsetRightX;//脱敏手机号 右偏移量
  bool numberAlignParentRight;//脱敏手机号是否靠屏幕右边
  bool numberHidden;//脱敏手机号隐藏
  bool numberBold;//脱敏手机号是否加粗

  //反序列化
  factory AndroidCustomPhoneNumber.fromJson(Map<String, dynamic> json) => _$AndroidCustomPhoneNumberFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$AndroidCustomPhoneNumberToJson(this);
}

//切换账号
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AndroidCustomSwitchNumber{

  AndroidCustomSwitchNumber();

  //切换账号
  String switchAccColorIdName;//切换账号字体颜色 R.color.swicth_color  传入swicth_color
  int switchAccTextSize;//切换账号字体大小
  bool switchAccHidden;//切换账号是否隐藏
  int switchAccOffsetX;//切换账号左偏移量
  int switchAccOffsetY;//切换账号上偏移量
  int switchAccOffsetBottomY;//切换账号下偏移量
  int switchAccOffsetRightX;//切换账号右偏移量
  bool switchAccAlignParentRight;//切换账号 是否靠屏幕右边
  String switchAccText;//切换账号 文本内容
  bool switchAccTextBold;//切换账号 文本是否加粗

  //反序列化
  factory AndroidCustomSwitchNumber.fromJson(Map<String, dynamic> json) => _$AndroidCustomSwitchNumberFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$AndroidCustomSwitchNumberToJson(this);

}


//隐私协议复选框
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AndroidCustomCheckBox{

  AndroidCustomCheckBox();

  //隐私协议栏
  String checkboxImgIdName;    // 隐私协议checkbox背景图片
  bool checkboxDefaultState;// 隐私协议checkbox默认状态
  bool checkboxHidden;//隐私协议复选框是否隐藏
  int checkboxOffsetX;//设置复选框左边间距
  int checkboxOffsetRightX;//设置复选框右边间距
  int checkboxOffsetY;//设置复选框顶部间距
  int checkboxOffsetBottomY;//设置复选框底部间距
  double checkboxScaleX;//设置复选框横向缩放
  double checkboxScaleY;//设置复选框纵向缩放
  String checkedImgName;//隐私协议选中时图片名称
  String uncheckedImgName;//隐私协议未选中时图片名称
  int checkboxWidth;//隐私协议复选框宽度
  int checkboxHeight;//隐私协议复选框高度

  //反序列化
  factory AndroidCustomCheckBox.fromJson(Map<String, dynamic> json) => _$AndroidCustomCheckBoxFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$AndroidCustomCheckBoxToJson(this);

}


//隐私协议
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AndroidCustomPrivacy{

  AndroidCustomPrivacy();

  String agreementColor;//隐私协议字体颜色
  int agreementOffsetX;//隐私协议左偏移量
  int agreementOffsetRightX;//隐私协议右偏移量
  int agreementOffsetY;//隐私协议上偏移量
  int agreementOffsetBottomY;//隐私协议下偏移量
  bool agreementGravityLeft;//隐私协议是否左对齐，默认居中
  String agreementBaseTextColor; //隐私协议其他文字的颜色
  int agreementTextSize;//隐私协议 文字大小
  String agreementTextStartIdName;//设置隐私协议文本开头资源

  String agreementTextEndIdName;//设置隐私协议结束文本资源ID
  bool agreementAlignParentRight;//设置隐私协议是否靠屏幕右边
  bool agreementHidden;//设置隐私协议隐藏

  String agreementCmccTextString;//移动隐私协议文本
  String agreementCuccTextString;//联通隐私协议文本
  String agreementCtccTextString;//电信隐私协议文本

  String agreementTextStartString;//设置隐私协议文本

  String agreementTextAndString1;//设置隐私协议连接文本1
  String agreementTextAndString2;//设置隐私协议连接文本2
  String agreementTextAndString3;//设置隐私协议连接文本3
  String agreementTextEndString;//设置隐私协议结束文本
  bool agreementTextBold;//隐私协议是否加粗
  bool agreementTextWithUnderLine;//隐私协议是否带有下划线

  String cusAgreementNameId1;//自定义隐私协议一文字资源ID
  String cusAgreementUrl1;//自定义隐私协议二URL
  String cusAgreementColor1;//自定义隐私协议一颜色资源ID

  String cusAgreementNameId2;//自定义隐私协议二文字资源ID
  String cusAgreementUrl2;//自定义隐私协议二URL
  String cusAgreementColor2;//自定义隐私协议二颜色资源ID

  String cusAgreementNameId3;//自定义隐私协议三文字资源ID
  String cusAgreementUrl3;//自定义隐私协议三URL
  String cusAgreementColor3;//自定义隐私协议三颜色资源ID

  String cusAgreementNameText1;//自定义隐私协议一文字 例：“隐私协议一”
  String cusAgreementNameText2;//自定义隐私协议一文字 例：“隐私协议二”
  String cusAgreementNameText3;//自定义隐私协议一文字 例：“隐私协议三”
  // bool cusAgreementColor1Seted;
  // bool cusAgreementColor2Seted;
  // bool cusAgreementColor3Seted;

  //SpannableString agreementText;
  int agreementUncheckHintType; //设置隐私协议复选框未选中时提示类型
  String agreementUncheckHintText;//设置隐私协议复选框未选中时提示的文本 例: "请阅读并勾选隐私协议"


  //反序列化
  factory AndroidCustomPrivacy.fromJson(Map<String, dynamic> json) => _$AndroidCustomPrivacyFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$AndroidCustomPrivacyToJson(this);

}


//隐私协议详细页面
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AndroidCustomPrivacyContentPage{

  AndroidCustomPrivacyContentPage();
  //隐私协议页面
  String agreementPageTitleString;//设置运营商隐私协议页面标题文本
  String cusAgreementPageOneTitleString;//设置自定义隐私协议一页面标题文本
  String cusAgreementPageTwoTitleString;//设置自定义隐私协议二页面标题文本
  String cusAgreementPageThreeTitleString;//设置自定义隐私协议三页面标题文本

  String agreementPageTitleStringId;//设置运营商隐私协议页面标题文本ID名称
  String cusAgreementPageOneTitleNameId;//设置自定义隐私协议一页面文本ID名称
  String cusAgreementPageTwoTitleNameId;//设置自定义隐私协议一页面标题文本ID名称
  String cusAgreementPageThreeTitleNameId;//设置自定义隐私协议一页面标题文本ID名称

  String agreementPageCloseImg;//设置隐私协议页面关闭图标Drawable名称
  bool agreementPageCloseImgHidden;//设置隐私协议页面关闭图标是否隐藏
  int agreementPageCloseImgWidth;//设置隐私协议页面关闭图标宽度
  int agreementPageCloseImgHeight;//设置隐私协议页面关闭图标高度
  //ImageView.ScaleType agreementPageCloseImgScaleType;
  int agreementPageTitleTextSize;//设置隐私协议页面标题文本大小
  String agreementPageTitleTextColor;//设置隐私协议页面标题文本颜色
  bool agreementPageTitleTextBold;//设置隐私协议页面标题文本是否加粗
  bool agreementPageTitleHidden;//设置隐私协议页面标题文本隐藏

  //反序列化
  factory AndroidCustomPrivacyContentPage.fromJson(Map<String, dynamic> json) => _$AndroidCustomPrivacyContentPageFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$AndroidCustomPrivacyContentPageToJson(this);
}


//slogan
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AndroidCustomOperatorSlogan{

  AndroidCustomOperatorSlogan();

  int sloganOffsetX;//Slogan左偏移量
  int sloganOffsetY;//Slogan上偏移量
  int sloganOffsetBottomY;//Slogan下偏移量
  int sloganTextSize;//Slogan文字大小 （单位：sp)
  String sloganTextColor;//Slogan文字颜色 例：#ffffffff
  int sloganOffsetRightX;//Slogan右偏移量 （单位：dp） 例：30
  bool sloganAlignParentRight;//Slogan是否靠屏幕右边
  bool sloganHidden;//Slogan隐藏
  bool sloganTextBold;//Slogan文字加粗,

  //反序列化
  factory AndroidCustomOperatorSlogan.fromJson(Map<String, dynamic> json) => _$AndroidCustomOperatorSloganFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$AndroidCustomOperatorSloganToJson(this);
}


//对话框配置
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AndroidCustomDialog{

  AndroidCustomDialog();

  bool dialogTheme;//设置是否使用弹窗模式，默认false
  bool dialogAlignBottom;//设置弹窗是否靠屏幕底部
  int dialogOffsetX;//弹窗左右偏移量
  int dialogOffsetY;//弹窗上下偏移量
  int dialogWidth;//弹窗宽度（单位：dp）
  int dialogHeight;//弹窗高度（单位：dp）
  String dialogBackground;//设置弹窗蒙版背景
  bool dialogBackgroundClickClose;//设置点击弹窗蒙版是否关闭页面

  //反序列化
  factory AndroidCustomDialog.fromJson(Map<String, dynamic> json) => _$AndroidCustomDialogFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$AndroidCustomDialogToJson(this);
}


//客户自定义view
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AndroidCustomView{

  AndroidCustomView();

  String viewClass;// 添加的view类别 目前只支持TextView ImageView
  String viewText;
  String viewTextColor;
  int viewTextFont;
  bool viewTextBold;
  bool viewAlignParentRight;
  bool viewHorizontalCenter;
  bool viewHorizontalCenterVertical;
  int viewOffsetX;
  int viewOffsetY;
  int viewOffsetRightX;
  int viewOffsetBottomY;
  int viewWidth;
  int viewHeight;
  String viewImg;

  //反序列化
  factory AndroidCustomView.fromJson(Map<String, dynamic> json) => _$AndroidCustomViewFromJson(json);
  //序列化
  Map<String, dynamic> toJson() => _$AndroidCustomViewToJson(this);
}

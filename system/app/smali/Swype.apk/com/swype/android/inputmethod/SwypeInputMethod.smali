.class public Lcom/swype/android/inputmethod/SwypeInputMethod;
.super Landroid/inputmethodservice/InputMethodService;
.source "SwypeInputMethod.java"

# interfaces
.implements Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;
.implements Lcom/swype/android/jni/SwypeCore$ChoiceWindowCallback;
.implements Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;
.implements Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;
.implements Lcom/swype/android/jni/SwypeCore$InputWindowCallback;
.implements Lcom/swype/android/jni/SwypeCore$PropertiesDialogCallback;
.implements Lcom/swype/android/widget/HorizontalViewClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;,
        Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;,
        Lcom/swype/android/inputmethod/SwypeInputMethod$PhoneStateChangeListener;
    }
.end annotation


# static fields
.field private static final APP_DOUBLE_TAP_MIN_TIME:I = 0x2

.field private static final DOUBLE_TAP_DELAY_MSEC:I = 0xfa

.field public static final EDITOR_PROP_COUNT:I = 0xe

.field public static final EDITOR_PROP_HAS_AUTOCOMPLETE:I = 0x9

.field public static final EDITOR_PROP_IS_EMAIL:I = 0x3

.field public static final EDITOR_PROP_IS_FILTERED:I = 0xb

.field public static final EDITOR_PROP_IS_MESSAGING:I = 0x4

.field public static final EDITOR_PROP_IS_MSG_BODY:I = 0x5

.field public static final EDITOR_PROP_IS_MULTILINE:I = 0x7

.field public static final EDITOR_PROP_IS_NUMERIC:I = 0x1

.field public static final EDITOR_PROP_IS_PASSWORD:I = 0x0

.field public static final EDITOR_PROP_IS_PERSONNAME:I = 0x6

.field public static final EDITOR_PROP_IS_PHONE:I = 0xd

.field public static final EDITOR_PROP_IS_TYPE_NULL:I = 0xa

.field public static final EDITOR_PROP_IS_URL:I = 0x2

.field public static final EDITOR_PROP_NO_MICROPHONE:I = 0x8

.field public static final EDITOR_PROP_NO_SUGGESTIONS:I = 0xc

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FACEBOOK_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.ShareLinkActivity"

.field private static final HWCL_AUTO_HIDE_DELAY:I = 0x3e8

.field public static final IME_ENGINE_CHINESECN:B = 0x1t

.field public static final IME_ENGINE_CHINESETW:B = 0x2t

.field public static final IME_ENGINE_JAPANESE:B = 0x3t

.field public static final IME_ENGINE_NONE:B = 0x0t

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field public static final IMM_PRIV_COMMAND_DOUBLETAP:Ljava/lang/String; = "com.swype.android.inputmethod/cmd_doubletap"

.field public static final IMM_PRIV_COMMAND_RELAUNCH_SWYPE:Ljava/lang/String; = "com.swype.android.inputmethod/relaunch"

.field public static final IMM_PRIV_COMMAND_SHOW_KEY_BOUNDARIES:Ljava/lang/String; = "com.swype.android.inputmethod.debug/show_key_bounds"

.field public static final IMM_PRIV_COMMAND_TAP:Ljava/lang/String; = "com.swype.android.inputmethod/cmd_tap"

.field public static final INTENT_KEY_FIRST_TIME_USE:Ljava/lang/String; = "INTENT_KEY_FIRST_TIME_USE"

.field private static final KEYTAP_BACKSP:I = 0x2

.field private static final KEYTAP_BACKSP_NAME:Ljava/lang/String; = "BackspSound.ogg"

.field private static final KEYTAP_NORMAL:I = 0x1

.field private static final KEYTAP_NORMAL_NAME:Ljava/lang/String; = "KeyPressSound.ogg"

.field private static final KEYTAP_SPACE:I = 0x3

.field private static final KEYTAP_SPACE_NAME:Ljava/lang/String; = "SpaceSound.ogg"

.field public static final MESSAGE_BROADCAST_CURRENT_LANGUAGE:I = 0x15

.field public static final MESSAGE_CHECK_LICENSE_AGAIN:I = 0x11

.field public static final MESSAGE_HELP_IS_CLOSING:I = 0x23

.field private static final MESSAGE_HIDE_CHOICE:I = 0x4

.field private static final MESSAGE_HIDE_HWCL:I = 0x20

.field public static final MESSAGE_KEYBOARD_MOVED:I = 0x1f

.field private static final MESSAGE_KEY_EVENT:I = 0x22

.field protected static final MESSAGE_LAST:I = 0x25

.field private static final MESSAGE_ON_SELECT_TEXT_REGION:I = 0x8

.field public static final MESSAGE_ON_VOICE_DICTATION_RESULTS:I = 0x14

.field private static final MESSAGE_PERFORM_DOUBLE_TAP:I = 0x1b

.field private static final MESSAGE_PERFORM_HAPTIC_FEEDBACK:I = 0x25

.field private static final MESSAGE_PERFORM_TAP:I = 0x1a

.field private static final MESSAGE_PLAY_BEEP:I = 0xc

.field private static final MESSAGE_PLAY_KEY_TAP_SOUND:I = 0xe

.field public static final MESSAGE_REGISTER_AIRPLANE_LISTENER:I = 0x21

.field public static final MESSAGE_REQUEST_HIDE_SELF:I = 0x10

.field public static final MESSAGE_REQUEST_SHOW_SELF:I = 0xf

.field public static final MESSAGE_REQUEST_VOICE_DICTATION:I = 0x18

.field public static final MESSAGE_RESUME_DRAWING:I = 0x1e

.field private static final MESSAGE_SECONDARY_INIT:I = 0x13

.field private static final MESSAGE_SEND_CONTROL_CHAR:I = 0x9

.field private static final MESSAGE_SEND_INPUT_CHAR:I = 0x0

.field private static final MESSAGE_SEND_INPUT_STR:I = 0x1

.field private static final MESSAGE_SEND_INPUT_VKC:I = 0x2

.field private static final MESSAGE_SET_NAV_BAR_VISIBILITY:I = 0x24

.field private static final MESSAGE_SHOW_CANDIDATES:I = 0x19

.field private static final MESSAGE_SHOW_CHOICE:I = 0x3

.field private static final MESSAGE_SHOW_HELP_DIALOG_CONTEXT:I = 0x7

.field public static final MESSAGE_SHOW_HELP_DIALOG_FULL_WITH_TEXT:I = 0x6

.field private static final MESSAGE_SHOW_LANGUAGE_LIST:I = 0xd

.field public static final MESSAGE_SHOW_LANG_SETTINGS_PROP_DIALOG:I = 0x1c

.field private static final MESSAGE_SHOW_MESSAGE:I = 0xb

.field private static final MESSAGE_SHOW_PROP_DIALOG:I = 0x5

.field public static final MESSAGE_SHOW_TIP:I = 0x16

.field private static final MESSAGE_SHOW_USER_QUERY:I = 0xa

.field private static final MESSAGE_SPELLING_TEXT_EDIT_TAP:I = 0x1d

.field public static final MESSAGE_UPDATE_ACTIVE_DISPLAY:I = 0x17

.field private static final MESSAGE_UPDATE_CANDIDATES:I = 0x12

.field private static final PERFORM_INPUT_SYNCHRONOUSLY:Z = true

.field private static final SMILEY_ICON:Ljava/lang/String; = ":-)"

.field private static final SPECIAL_APP_HANDLING_ANDROID_BROWSER:Ljava/lang/String; = "com.android.browser"

.field private static final SPECIAL_APP_HANDLING_ANDROID_CONTACTS:Ljava/lang/String; = "com.android.contacts"

.field private static final SPECIAL_APP_HANDLING_ANDROID_LAUNCHER:Ljava/lang/String; = "com.android.launcher"

.field private static final SPECIAL_APP_HANDLING_ANDROID_LOCK_SCREEN:Ljava/lang/String; = "android"

.field private static final SPECIAL_APP_HANDLING_ANDROID_MMS:Ljava/lang/String; = "com.android.mms"

.field private static final SPECIAL_APP_HANDLING_ANDROID_QUICKSEARCH:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final SPECIAL_APP_HANDLING_ANDROID_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final SPECIAL_APP_HANDLING_ANDROID_UNLOCK:Ljava/lang/String; = "android"

.field private static final SPECIAL_APP_HANDLING_BANDER_NOTEPAD:Ljava/lang/String; = "bander.notepad"

.field private static final SPECIAL_APP_HANDLING_FIREFOX:Ljava/lang/String; = "org.mozilla.firefox"

.field private static final SPECIAL_APP_HANDLING_GMAIL:Ljava/lang/String; = "com.google.android.gm"

.field private static final SPECIAL_APP_HANDLING_GPLUS:Ljava/lang/String; = "com.google.android.apps.plus"

.field private static final SPECIAL_APP_HANDLING_GTALK:Ljava/lang/String; = "com.google.android.talk"

.field private static final SPECIAL_APP_HANDLING_HTC_EMAIL:Ljava/lang/String; = "com.htc.android.mail"

.field private static final SPECIAL_APP_HANDLING_HTC_NOTES:Ljava/lang/String; = "com.htc.notes"

.field private static final SPECIAL_APP_HANDLING_INFRAWARE_DOCMASTER:Ljava/lang/String; = "com.infraware.docmaster"

.field private static final SPECIAL_APP_HANDLING_INFRAWARE_POLARIS_OFFICE:Ljava/lang/String; = "com.infraware.polarisoffice"

.field private static final SPECIAL_APP_HANDLING_INFRAWARE_POLARIS_OFFICE_TABLET:Ljava/lang/String; = "com.infraware.PolarisOfficeForTablet"

.field private static final SPECIAL_APP_HANDLING_LG_HOTSPOT:Ljava/lang/String; = "com.lge.mobilehotspot.ui"

.field private static final SPECIAL_APP_HANDLING_MOTO_BLUR_CONTACTS:Ljava/lang/String; = "com.motorola.blur.contacts"

.field private static final SPECIAL_APP_HANDLING_MOTO_BLUR_CONVERSATIONS:Ljava/lang/String; = "com.motorola.blur.conversations"

.field private static final SPECIAL_APP_HANDLING_MOTO_BLUR_HOME:Ljava/lang/String; = "com.motorola.blur.home"

.field private static final SPECIAL_APP_HANDLING_MOTO_BLUR_HOME_MESSAGING:Ljava/lang/String; = "com.motorola.blur.home.message"

.field private static final SPECIAL_APP_HANDLING_MOTO_MESSAGING:Ljava/lang/String; = "com.motorola.messaging"

.field private static final SPECIAL_APP_HANDLING_MUSIC:Ljava/lang/String; = "com.sec.android.app.music"

.field private static final SPECIAL_APP_HANDLING_MY_ATT:Ljava/lang/String; = "com.att.myWireless"

.field private static final SPECIAL_APP_HANDLING_NAVIGATION:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final SPECIAL_APP_HANDLING_OMS_MMS:Ljava/lang/String; = "oms.mms"

.field private static final SPECIAL_APP_HANDLING_QO_OEME:Ljava/lang/String; = "com.qo.android.oeme"

.field private static final SPECIAL_APP_HANDLING_QUICKOFFICE:Ljava/lang/String; = "com.qo.android"

.field private static final SPECIAL_APP_HANDLING_SAMSUNG_DIODICT:Ljava/lang/String; = "com.diotek.diodict3.phone.samsung.jpn"

.field private static final SPECIAL_APP_HANDLING_SAMSUNG_MEMO:Ljava/lang/String; = "com.sec.android.app.memo"

.field private static final SPECIAL_APP_HANDLING_SAMSUNG_NOTEBOOK:Ljava/lang/String; = "com.sec.android.app.snotebook"

.field private static final SPECIAL_APP_HANDLING_SAMSUNG_VIDEOEDITOR:Ljava/lang/String; = "com.sec.android.app.ve"

.field private static final SPECIAL_APP_HANDLING_URMUSIC:Ljava/lang/String; = "com.pv.android.rogers.urmusic"

.field private static final SPECIAL_APP_HANDLING_VCAST_VIDEO:Ljava/lang/String; = "com.pv.android.verizon.avod"

.field private static final SPECIAL_APP_HANDLING_WHATSAPP:Ljava/lang/String; = "com.whatsapp"

.field private static final SPECIAL_APP_SAMSUNG_CHATON:Ljava/lang/String; = "com.sec.chaton"

.field private static final SPECIAL_APP_SAMSUNG_CLOCK:Ljava/lang/String; = "com.sec.android.app.clockpackage"

.field public static final SPELLIGN_TEXT_STATE_HAS_ALTERNATIVES:B = 0x1t

.field public static final SPELLING_EDIT_APPEND_CHAR:B = 0x1t

.field public static final SPELLING_EDIT_DELETE:B = 0x0t

.field public static final SPELLING_TEXT_STATE_CONVERTED:B = 0x2t

.field public static final SPELLING_TEXT_STATE_NO_CHOICE:B = 0x0t

.field public static final SWYPE_PREF_KEY_LAST_LOCALE:Ljava/lang/String; = "LastLocale"

.field private static final TWITTER_ACTIVITY:Ljava/lang/String; = "com.twitter.android.PostActivity"

.field private static final WAIT_TIME_AFTER_DOUBLE_TAP:I = 0x96

.field private static final WAIT_TIME_AFTER_ON_SHOW_INPUT_REQUESTED:I = 0x1e

.field private static final WAIT_TIME_AFTER_ROTATION_STARTINPUT_OR_SELECTALL:I = 0x3e8

.field private static isImeCreatedFirstTime:Z

.field private static isSelected:Z

.field private static isToggled:Z


# instance fields
.field final DEBUG:Z

.field private final MAX_HEXIFY:I

.field private activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

.field private airplaneModeListener:Landroid/content/BroadcastReceiver;

.field private applicationId:I

.field private audioManager:Landroid/media/AudioManager;

.field private audioManagerStream:I

.field blackListManager:Lcom/swype/android/inputmethod/BlackListManager;

.field private callState:I

.field private candidateProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

.field private choicePopupWindow:Landroid/widget/PopupWindow;

.field private choiceView:Lcom/swype/android/widget/ChoiceWindow;

.field private choiceViewRect:Landroid/graphics/Rect;

.field private completionInfo:[Landroid/view/inputmethod/CompletionInfo;

.field private configKeyboardIsMovable:Z

.field private conversionCandidates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private core:Lcom/swype/android/jni/SwypeCore;

.field private currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

.field private cursorPosition:I

.field private fieldID:I

.field private hapticDuration:I

.field private hapticSettingListener:Landroid/database/ContentObserver;

.field private hasCandidates:Z

.field private hasWings:Z

.field private hasWingsDyn:Z

.field private hideKeyboardPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hwclSync:Ljava/lang/Object;

.field private inputView:Lcom/swype/android/widget/InputWindow;

.field private isChangingOrientation:Z

.field private isFullScreenModeEnabled:Z

.field private isHWCLAutoHideEnabled:Z

.field private isHWCLOff:Z

.field private isHelpShowing:Z

.field private isHwclVisibleBeforeMove:Z

.field private isImeShowing:Z

.field private isInEnglishInputMode:Z

.field private isShown:Z

.field private keyboardLayout:Landroid/widget/LinearLayout;

.field private keyboardResizing:Z

.field private keypressVolumeAdjustment:I

.field private landscape_popup_adjustment:I

.field private landscape_popup_adjustment_no_fullscreen:I

.field private mCurrConfig:Landroid/content/res/Configuration;

.field private mDebounceOnStart:Z

.field private mDoubleTapThreshold:I

.field private mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

.field private mImeEngineType:B

.field private mKeyPressSoundFileName:[Ljava/lang/String;

.field private mLanguageIMEActivator:Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;

.field private mNextAllowed:J

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolIds:[I

.field private mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

.field private mTimeStampLastCallOnTap:J

.field private mVibrator:Landroid/os/Vibrator;

.field private m_hexBuilder:Ljava/lang/StringBuilder;

.field private m_isSimulateFullscreen:Z

.field private m_toast:Landroid/widget/Toast;

.field private mlastSwitchInputField:J

.field private navBar:Lcom/swype/android/widget/NavigationBar;

.field private navBarVisibility:I

.field private oemAction:Lcom/swype/android/oem/OemAction;

.field private oldCandidateEnd:I

.field private oldCandidateStart:I

.field private pendingDeleteLength:I

.field private phoneState:Lcom/swype/android/inputmethod/SwypeInputMethod$PhoneStateChangeListener;

.field private portrait_popup_adjustment:I

.field private volatile propertyBitSet:Ljava/util/BitSet;

.field private screenStateListener:Landroid/content/BroadcastReceiver;

.field private showingChoice:Z

.field public speechRecognizer:Lcom/swype/android/voice/VoiceManager;

.field private spellingStringStates:[B

.field private spellingStrings:[Ljava/lang/String;

.field private swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

.field private timeStampStartInput:J

.field private touchtoneSettingListener:Landroid/database/ContentObserver;

.field private tsLastDoubleTap:J

.field private tsLastTapOnExtractedText:J

.field private whichApp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 211
    sput-boolean v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isImeCreatedFirstTime:Z

    .line 284
    sput-boolean v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isToggled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 101
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->DEBUG:Z

    .line 271
    iput-boolean v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHwclVisibleBeforeMove:Z

    .line 310
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    .line 335
    iput-wide v6, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->tsLastDoubleTap:J

    .line 340
    const/16 v0, 0x29b

    iput v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mDoubleTapThreshold:I

    .line 444
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isChangingOrientation:Z

    .line 478
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mKeyPressSoundFileName:[Ljava/lang/String;

    .line 493
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_isSimulateFullscreen:Z

    .line 529
    const/16 v0, 0x28

    iput v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hapticDuration:I

    .line 539
    iput v5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->audioManagerStream:I

    .line 554
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->showingChoice:Z

    .line 559
    iput v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->callState:I

    .line 563
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hasCandidates:Z

    .line 566
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->keyboardResizing:Z

    .line 571
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hwclSync:Ljava/lang/Object;

    .line 592
    iput-boolean v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isFullScreenModeEnabled:Z

    .line 594
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mDebounceOnStart:Z

    .line 595
    iput-wide v6, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mlastSwitchInputField:J

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hideKeyboardPackages:Ljava/util/List;

    .line 612
    const/16 v0, 0x8

    iput v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBarVisibility:I

    .line 614
    iput v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oldCandidateEnd:I

    .line 615
    iput v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oldCandidateStart:I

    .line 5052
    iput-byte v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    .line 5072
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;

    .line 5074
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidateProperties:Ljava/util/List;

    .line 5079
    new-instance v0, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;Lcom/swype/android/inputmethod/SwypeInputMethod$1;)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mLanguageIMEActivator:Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;

    .line 5084
    new-instance v0, Lcom/swype/android/inputmethod/SpellingTextManager;

    invoke-direct {v0}, Lcom/swype/android/inputmethod/SpellingTextManager;-><init>()V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

    .line 5181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_hexBuilder:Ljava/lang/StringBuilder;

    .line 5182
    iput v5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->MAX_HEXIFY:I

    return-void
.end method

.method static synthetic access$000(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/inputmethod/SwypeApplication;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->unRegisterAirplaneMode()V

    return-void
.end method

.method static synthetic access$1000(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateLanguageIMEConversionArea()V

    return-void
.end method

.method static synthetic access$200(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/jni/SwypeCore;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->cancelPredictionAndConversion()V

    return-void
.end method

.method static synthetic access$400(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/inputmethod/SwypeDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->dismissActiveDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->closeStaleDialogs()V

    return-void
.end method

.method static synthetic access$700(Lcom/swype/android/inputmethod/SwypeInputMethod;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->hideChoiceWindow()V

    return-void
.end method

.method static synthetic access$900(Lcom/swype/android/inputmethod/SwypeInputMethod;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;

    return-object v0
.end method

.method private adjustCursorDiacritic()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3717
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3718
    if-eqz v0, :cond_35

    .line 3719
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3720
    if-eqz v1, :cond_35

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_35

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Lcom/swype/android/jni/SwypeCore;->isDiacritic(I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 3721
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSelectedTextRegion()[I

    move-result-object v1

    .line 3722
    if-eqz v1, :cond_35

    .line 3723
    aget v2, v1, v3

    .line 3724
    aget v1, v1, v4

    .line 3726
    if-ne v2, v1, :cond_36

    if-ltz v2, :cond_36

    .line 3727
    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/swype/android/inputmethod/InputConnectionAdaptor;->setSelection(Landroid/view/inputmethod/InputConnection;II)Z

    .line 3737
    :cond_35
    :goto_35
    return-void

    .line 3729
    :cond_36
    if-ltz v2, :cond_35

    if-ltz v1, :cond_35

    .line 3730
    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v2, v1}, Lcom/swype/android/inputmethod/InputConnectionAdaptor;->setSelection(Landroid/view/inputmethod/InputConnection;II)Z

    goto :goto_35
.end method

.method private calcKeyPressVolume()F
    .registers 4

    .prologue
    .line 4389
    const/4 v0, 0x0

    .line 4390
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->isSilentMode()Z

    move-result v1

    if-nez v1, :cond_31

    .line 4391
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_17

    .line 4392
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->audioManager:Landroid/media/AudioManager;

    .line 4395
    :cond_17
    iget v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->keypressVolumeAdjustment:I

    int-to-float v0, v0

    .line 4396
    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    .line 4397
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->audioManagerStream:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->audioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->audioManagerStream:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 4400
    :cond_31
    return v0
.end method

.method private cancelPredictionAndConversion()V
    .registers 3

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->finishPendingConversion(Z)V

    .line 1684
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->notifyInsertionPointUpdate()V

    .line 1685
    return-void
.end method

.method private checkEditorShowsCompletions()V
    .registers 4

    .prologue
    .line 5644
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hwclSync:Ljava/lang/Object;

    monitor-enter v0

    .line 5645
    :try_start_3
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->editorShowsCompletions()Z

    move-result v1

    .line 5647
    if-eqz v1, :cond_24

    .line 5648
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hasCandidates:Z

    .line 5649
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5650
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidateProperties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5652
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->removeMessages(I)V

    .line 5653
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendEmptyMessage(I)Z

    .line 5655
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private clearCompletions()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4493
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->completionInfo:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v0, :cond_1c

    .line 4495
    iput-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->completionInfo:[Landroid/view/inputmethod/CompletionInfo;

    .line 4497
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.google.android.googlequicksearchbox"

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4503
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendEmptyMessage(I)Z

    .line 4510
    :cond_1c
    :goto_1c
    return-void

    .line 4506
    :cond_1d
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0, v2, v2}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setListOfWords(Ljava/util/List;Ljava/util/List;)V

    .line 4507
    invoke-virtual {p0, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCandidatesViewShown(Z)V

    goto :goto_1c
.end method

.method private closeStaleDialogs()V
    .registers 3

    .prologue
    .line 1370
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->dismissActiveDialog()V

    .line 1376
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->finishPendingConversion(Z)V

    .line 1377
    return-void
.end method

.method private computeTouchableRect()Landroid/graphics/Rect;
    .registers 12

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 1248
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getKeyboardBitmapSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v2

    .line 1249
    .local v2, keyboardSize:Lcom/swype/android/widget/ViewSize;
    new-array v1, v10, [I

    .line 1250
    .local v1, inputViewLocation:[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1251
    .local v3, rect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v4, :cond_5c

    if-eqz v2, :cond_5c

    .line 1252
    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v4, v1}, Lcom/swype/android/widget/InputWindow;->getLocationInWindow([I)V

    .line 1253
    new-instance v3, Landroid/graphics/Rect;

    .end local v3           #rect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v4}, Lcom/swype/android/widget/InputWindow;->getKeyboardOffsetX()I

    move-result v4

    iget-object v5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v5}, Lcom/swype/android/widget/InputWindow;->getWingWidth()I

    move-result v5

    sub-int/2addr v4, v5

    aget v5, v1, v9

    invoke-virtual {v2}, Lcom/swype/android/widget/ViewSize;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v7}, Lcom/swype/android/widget/InputWindow;->getKeyboardOffsetX()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v7}, Lcom/swype/android/widget/InputWindow;->getWingWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Lcom/swype/android/widget/ViewSize;->getHeight()I

    move-result v7

    aget v8, v1, v9

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1258
    .restart local v3       #rect:Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v4}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5c

    .line 1259
    new-array v0, v10, [I

    .line 1260
    .local v0, candidatesViewLocation:[I
    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v4, v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getLocationInWindow([I)V

    .line 1261
    aget v4, v0, v9

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 1265
    .end local v0           #candidatesViewLocation:[I
    :cond_5c
    return-object v3
.end method

.method private configureFontFakeBoldOption()V
    .registers 6

    .prologue
    .line 5010
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v2

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v1

    .line 5011
    .local v1, isFakeBoldOff:Z
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/ScreenDefinition;->getType()Lcom/swype/android/inputmethod/ScreenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/ScreenType;->getFontFlags()I

    move-result v0

    .line 5013
    .local v0, fontFlags:I
    if-eqz v1, :cond_1b

    .line 5014
    and-int/lit8 v0, v0, -0x2

    .line 5017
    :cond_1b
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v2, v0}, Lcom/swype/android/inputmethod/SwypeApplication;->setFontFlags(I)V

    .line 5018
    return-void
.end method

.method private createCandidateView()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 5368
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_4b

    .line 5370
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    .line 5372
    invoke-virtual {p0, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCandidatesViewShown(Z)V

    .line 5373
    invoke-virtual {p0, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->hideCandidateViewIfMoveable(Z)V

    .line 5375
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getScreenDefinition()Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenWidth()I

    move-result v0

    .line 5379
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v1, :cond_4c

    .line 5380
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v1}, Lcom/swype/android/widget/InputWindow;->getKbBoundingWidth()I

    move-result v1

    .line 5381
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v2}, Lcom/swype/android/widget/InputWindow;->getWingBackgroundTransparent()Z

    move-result v2

    if-eqz v2, :cond_3a

    move v0, v1

    .line 5384
    :cond_3a
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v2}, Lcom/swype/android/widget/InputWindow;->getKeyboardOffsetX()I

    move-result v2

    move v4, v2

    move v3, v0

    move v2, v1

    .line 5386
    :goto_43
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    iget-object v5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->initViews(Lcom/swype/android/inputmethod/SwypeInputMethod;IIILcom/swype/android/jni/SwypeCore;)V

    .line 5388
    :cond_4b
    return-void

    :cond_4c
    move v4, v3

    move v2, v0

    move v3, v0

    goto :goto_43
.end method

.method private createChoiceWindow()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x14

    const/4 v4, 0x1

    .line 3834
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 3835
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3839
    :cond_15
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceViewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_59

    .line 3840
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 3841
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    move v2, v0

    .line 3843
    :goto_26
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/high16 v3, 0x7f03

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/ChoiceWindow;

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    .line 3845
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, v2, v1, v3}, Lcom/swype/android/widget/ChoiceWindow;->init(IILcom/swype/android/jni/SwypeCore;)V

    .line 3846
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v0, v4}, Lcom/swype/android/widget/ChoiceWindow;->setClickable(Z)V

    .line 3848
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    .line 3849
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3850
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3851
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 3852
    return-void

    :cond_59
    move v2, v1

    goto :goto_26
.end method

.method private customizeOnInputModeChange(Landroid/view/inputmethod/EditorInfo;ZLjava/lang/String;)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x3

    const/high16 v9, 0x1

    const/16 v8, 0xc

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3990
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 3992
    iget v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->fieldID:I

    .line 3993
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    iput v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->fieldID:I

    .line 3995
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4005
    and-int v3, v2, v9

    if-gtz v3, :cond_39

    const v3, 0x8000

    and-int/2addr v3, v2

    if-gtz v3, :cond_39

    and-int/lit16 v3, v2, 0x1000

    if-gtz v3, :cond_39

    and-int/lit16 v3, v2, 0x4000

    if-gtz v3, :cond_39

    and-int/lit16 v3, v2, 0x2000

    if-gtz v3, :cond_39

    const/high16 v3, 0x4

    and-int/2addr v3, v2

    if-gtz v3, :cond_39

    const/high16 v3, 0x2

    and-int/2addr v3, v2

    if-gtz v3, :cond_39

    const/high16 v3, 0x8

    and-int/2addr v3, v2

    if-lez v3, :cond_47

    .line 4013
    :cond_39
    and-int/lit8 v3, v2, 0xf

    const/16 v4, 0xf

    if-ne v3, v4, :cond_41

    .line 4014
    and-int/lit8 v2, v2, 0x1

    .line 4016
    :cond_41
    and-int/lit8 v3, v2, 0xf

    if-nez v3, :cond_47

    .line 4017
    or-int/lit8 v2, v2, 0x1

    .line 4021
    :cond_47
    and-int/lit8 v3, v2, 0xf

    sparse-switch v3, :sswitch_data_288

    .line 4131
    :cond_4c
    :goto_4c
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v2, :cond_5f

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v3, "inputType=month_edittext"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 4132
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 4136
    :cond_5f
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.qo.android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 4137
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 4141
    :cond_6c
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.infraware.polarisoffice"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_80

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.infraware.PolarisOfficeForTablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 4142
    :cond_80
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 4146
    :cond_83
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.infraware.docmaster"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 4147
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 4150
    :cond_90
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.pv.android.verizon.avod"

    aput-object v3, v2, v7

    invoke-direct {p0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 4151
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 4153
    :cond_9f
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.htc.notes"

    aput-object v3, v2, v7

    invoke-direct {p0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 4154
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 4156
    :cond_ae
    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "com.pv.android.rogers.urmusic"

    aput-object v3, v2, v7

    invoke-direct {p0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 4157
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 4161
    :cond_bd
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.att.myWireless"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 4162
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 4165
    :cond_ca
    sget v2, Lcom/swype/android/inputmethod/ConfigSetting;->VOICE_DICTATION_PROVIDER:I

    if-eqz v2, :cond_df

    .line 4167
    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 4168
    if-eqz v2, :cond_df

    const-string v3, "nm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_df

    .line 4169
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 4176
    :cond_df
    const/4 v2, -0x1

    .line 4177
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    if-eqz v3, :cond_ea

    .line 4178
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    invoke-virtual {v2, p1}, Lcom/swype/android/oem/OemAction;->getCustomKeyboard(Landroid/view/inputmethod/EditorInfo;)I

    move-result v2

    .line 4180
    :cond_ea
    if-ne v2, v6, :cond_26f

    .line 4181
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->clear(I)V

    .line 4190
    :cond_ef
    :goto_ef
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    if-eqz v2, :cond_279

    iget v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->fieldID:I

    if-lez v2, :cond_279

    .line 4192
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10f

    iget v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->fieldID:I

    if-ne v1, v2, :cond_10f

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eq v1, v2, :cond_276

    :cond_10f
    move v1, v6

    .line 4203
    :goto_110
    if-eqz v1, :cond_11e

    .line 4204
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_285

    move v1, v6

    .line 4208
    :goto_119
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v2, v1}, Lcom/swype/android/jni/SwypeCore;->switchKeyboardLayout(I)V

    .line 4212
    :cond_11e
    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    .line 4214
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->customizeReturnKeyBasedOnAction()V

    .line 4215
    return-void

    .line 4023
    :sswitch_124
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 4028
    :sswitch_129
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    .line 4030
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 4032
    sget v2, Lcom/swype/android/inputmethod/ConfigSetting;->VOICE_DICTATION_PROVIDER:I

    if-eqz v2, :cond_13a

    .line 4033
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 4036
    :cond_13a
    invoke-static {p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isPasswordBitSet(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 4037
    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4c

    .line 4043
    :sswitch_145
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4c

    .line 4047
    :sswitch_14c
    and-int/lit16 v3, v2, 0xff0

    .line 4048
    invoke-static {p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isPasswordBitSet(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v4

    if-eqz v4, :cond_1aa

    .line 4049
    invoke-virtual {v0, v7}, Ljava/util/BitSet;->set(I)V

    .line 4051
    sget v4, Lcom/swype/android/inputmethod/ConfigSetting;->VOICE_DICTATION_PROVIDER:I

    if-eqz v4, :cond_160

    .line 4052
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 4079
    :cond_160
    :goto_160
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "com.android.mms"

    aput-object v5, v4, v7

    invoke-direct {p0, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_220

    .line 4080
    and-int/lit8 v4, v3, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_175

    .line 4081
    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 4083
    :cond_175
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 4104
    :cond_179
    :goto_179
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "org.mozilla.firefox"

    aput-object v5, v4, v7

    invoke-direct {p0, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18c

    const/16 v4, 0x10

    if-eq v3, v4, :cond_18c

    .line 4107
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 4110
    :cond_18c
    and-int v4, v2, v9

    if-ne v4, v9, :cond_195

    .line 4112
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 4114
    :cond_195
    const/high16 v4, 0x8

    and-int/2addr v2, v4

    const/high16 v4, 0x8

    if-ne v2, v4, :cond_19f

    .line 4116
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 4119
    :cond_19f
    const/16 v2, 0xb0

    if-ne v3, v2, :cond_4c

    .line 4120
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4c

    .line 4054
    :cond_1aa
    const/16 v4, 0x20

    if-eq v3, v4, :cond_1b2

    const/16 v4, 0xd0

    if-ne v3, v4, :cond_1cb

    .line 4056
    :cond_1b2
    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 4058
    sget v4, Lcom/swype/android/inputmethod/ConfigSetting;->VOICE_DICTATION_PROVIDER:I

    if-eqz v4, :cond_160

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "android"

    aput-object v5, v4, v7

    invoke-direct {p0, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_160

    .line 4060
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_160

    .line 4062
    :cond_1cb
    const/16 v4, 0x10

    if-ne v3, v4, :cond_1d9

    .line 4063
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 4064
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_160

    .line 4065
    :cond_1d9
    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v4

    if-eqz v4, :cond_1f4

    and-int/lit8 v4, v3, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_1f4

    and-int/lit16 v4, v3, 0x100

    const/16 v5, 0x100

    if-ne v4, v5, :cond_1f4

    .line 4068
    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_160

    .line 4069
    :cond_1f4
    const/16 v4, 0x40

    if-ne v3, v4, :cond_202

    .line 4070
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    .line 4071
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_160

    .line 4072
    :cond_202
    const/16 v4, 0x60

    if-ne v3, v4, :cond_20c

    .line 4073
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_160

    .line 4074
    :cond_20c
    const/high16 v4, 0x2

    and-int/2addr v4, v2

    const/high16 v5, 0x2

    if-eq v4, v5, :cond_21a

    const/high16 v4, 0x4

    and-int/2addr v4, v2

    const/high16 v5, 0x4

    if-ne v4, v5, :cond_160

    .line 4076
    :cond_21a
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_160

    .line 4086
    :cond_220
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "com.motorola.blur.conversations"

    aput-object v5, v4, v7

    const-string v5, "com.motorola.messaging"

    aput-object v5, v4, v6

    invoke-direct {p0, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23e

    .line 4089
    and-int v4, v2, v9

    if-ne v4, v9, :cond_238

    .line 4090
    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    .line 4092
    :cond_238
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_179

    .line 4093
    :cond_23e
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "com.lge.mobilehotspot.ui"

    aput-object v5, v4, v7

    invoke-direct {p0, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_253

    .line 4096
    and-int v4, v2, v9

    if-ne v4, v9, :cond_179

    .line 4097
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_179

    .line 4099
    :cond_253
    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "com.htc.android.mail"

    aput-object v5, v4, v7

    invoke-direct {p0, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_179

    and-int v4, v2, v9

    if-ne v4, v9, :cond_179

    .line 4101
    invoke-virtual {v0, v10}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_179

    .line 4126
    :sswitch_268
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4c

    .line 4183
    :cond_26f
    if-nez v2, :cond_ef

    .line 4184
    invoke-virtual {v0, v6}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_ef

    :cond_276
    move v1, v7

    .line 4192
    goto/16 :goto_110

    .line 4199
    :cond_279
    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isChangingOrientation:Z

    if-nez v1, :cond_282

    if-nez p2, :cond_282

    move v1, v6

    goto/16 :goto_110

    :cond_282
    move v1, v7

    goto/16 :goto_110

    :cond_285
    move v1, v7

    .line 4204
    goto/16 :goto_119

    .line 4021
    :sswitch_data_288
    .sparse-switch
        0x0 -> :sswitch_145
        0x1 -> :sswitch_14c
        0x2 -> :sswitch_129
        0x3 -> :sswitch_124
        0x4 -> :sswitch_129
        0xf -> :sswitch_268
    .end sparse-switch
.end method

.method private customizeReturnKeyBasedOnAction()V
    .registers 7

    .prologue
    const/high16 v5, 0x4000

    .line 4224
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isSelected:Z

    if-nez v0, :cond_b

    .line 4269
    :cond_a
    :goto_a
    return-void

    .line 4228
    :cond_b
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 4229
    if-eqz v0, :cond_a

    .line 4235
    const/4 v1, 0x0

    .line 4236
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isReturnKeyUsedAsEmoticon()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 4237
    const-string v0, ":-)"

    .line 4261
    :goto_1a
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isReturnKeyUsedAsHideKeyboard()Z

    move-result v1

    if-eqz v1, :cond_69

    .line 4262
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->setReturnKeyType(I)V

    goto :goto_a

    .line 4239
    :cond_27
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v2

    if-nez v2, :cond_82

    sget v2, Lcom/swype/android/inputmethod/ConfigSetting;->VOICE_DICTATION_PROVIDER:I

    if-eqz v2, :cond_40

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v3, 0x5c

    invoke-virtual {v2, v3}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v2

    if-eqz v2, :cond_82

    :cond_40
    iget-byte v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v3, 0x45

    invoke-virtual {v2, v3}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v2

    if-eqz v2, :cond_82

    :cond_4e
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v2, v5

    if-eq v2, v5, :cond_82

    .line 4254
    iget-object v1, v0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_62

    iget-object v1, v0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_62

    .line 4255
    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    goto :goto_1a

    .line 4257
    :cond_62
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1a

    .line 4263
    :cond_69
    if-eqz v0, :cond_7b

    .line 4264
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/swype/android/jni/SwypeCore;->setReturnKeyLabel(Ljava/lang/String;)V

    .line 4265
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->setReturnKeyType(I)V

    goto :goto_a

    .line 4267
    :cond_7b
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->setReturnKeyType(I)V

    goto :goto_a

    :cond_82
    move-object v0, v1

    goto :goto_1a
.end method

.method private deleteSelectedText(Landroid/view/inputmethod/InputConnection;)Z
    .registers 9
    .parameter "ic"

    .prologue
    const/4 v6, 0x0

    .line 3340
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 3341
    .local v2, request:Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-interface {p1, v2, v6}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 3342
    .local v0, eText:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_23

    .line 3343
    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v5, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v3, v4, v5

    .line 3344
    .local v3, start:I
    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v5, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v1, v4, v5

    .line 3345
    .local v1, end:I
    if-eq v3, v1, :cond_21

    .line 3346
    const/16 v4, 0x43

    invoke-virtual {p0, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendDownUpKeyEvents(I)V

    .line 3347
    const/4 v4, 0x1

    .line 3353
    .end local v1           #end:I
    .end local v3           #start:I
    :goto_20
    return v4

    .restart local v1       #end:I
    .restart local v3       #start:I
    :cond_21
    move v4, v6

    .line 3349
    goto :goto_20

    .end local v1           #end:I
    .end local v3           #start:I
    :cond_23
    move v4, v6

    .line 3353
    goto :goto_20
.end method

.method private dismissActiveDialog()V
    .registers 2

    .prologue
    .line 4932
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 4933
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeDialog;->dismiss()V

    .line 4935
    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    .line 4936
    return-void
.end method

.method private doPlayBeep()V
    .registers 2

    .prologue
    .line 4347
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isSilentMode()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 4348
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_16

    .line 4349
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->audioManager:Landroid/media/AudioManager;

    .line 4352
    :cond_16
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->playSoundEffect(I)V

    .line 4354
    :cond_1a
    return-void
.end method

.method private doPlayKeyTapSound(I)V
    .registers 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, -0x1

    .line 4360
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isSilentMode()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 4361
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1a

    .line 4362
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->audioManager:Landroid/media/AudioManager;

    .line 4364
    :cond_1a
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    if-eqz v0, :cond_41

    .line 4365
    add-int/lit8 v0, p1, 0x1

    .line 4367
    if-ne v0, v3, :cond_2f

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    aget v1, v1, v3

    if-eq v1, v2, :cond_2f

    move v0, v3

    .line 4374
    :goto_29
    if-eq v0, v2, :cond_41

    .line 4376
    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->playSoundEffect(I)V

    .line 4382
    :cond_2e
    :goto_2e
    return-void

    .line 4369
    :cond_2f
    if-ne v0, v4, :cond_39

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    aget v0, v0, v4

    if-eq v0, v2, :cond_39

    move v0, v4

    .line 4370
    goto :goto_29

    .line 4371
    :cond_39
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    aget v0, v0, v5

    if-eq v0, v2, :cond_4c

    move v0, v5

    .line 4372
    goto :goto_29

    .line 4380
    :cond_41
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->calcKeyPressVolume()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    goto :goto_2e

    :cond_4c
    move v0, v2

    goto :goto_29
.end method

.method private doShowMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "title"
    .parameter "msg"

    .prologue
    .line 2701
    new-instance v0, Lcom/swype/android/inputmethod/MessageBox;

    invoke-direct {v0, p2}, Lcom/swype/android/inputmethod/MessageBox;-><init>(Ljava/lang/String;)V

    .line 2702
    .local v0, msgBox:Lcom/swype/android/inputmethod/MessageBox;
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/MessageBox;->createDialog(Landroid/content/Context;)V

    .line 2703
    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->showDialog(Lcom/swype/android/inputmethod/SwypeDialog;)V

    .line 2704
    return-void
.end method

.method private doShowTipNotify(Ljava/lang/String;I)V
    .registers 7
    .parameter "tip"
    .parameter "duration"

    .prologue
    const/4 v3, 0x0

    .line 2717
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v1, :cond_28

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2718
    if-nez p2, :cond_29

    move v0, v3

    .line 2719
    .local v0, toastLength:I
    :goto_e
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_toast:Landroid/widget/Toast;

    if-nez v1, :cond_2c

    .line 2720
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_toast:Landroid/widget/Toast;

    .line 2721
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_toast:Landroid/widget/Toast;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 2726
    :goto_23
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2728
    .end local v0           #toastLength:I
    :cond_28
    return-void

    .line 2718
    :cond_29
    const/4 v1, 0x1

    move v0, v1

    goto :goto_e

    .line 2723
    .restart local v0       #toastLength:I
    :cond_2c
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_toast:Landroid/widget/Toast;

    invoke-virtual {v1, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 2724
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_toast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setDuration(I)V

    goto :goto_23
.end method

.method private editorNoPredictiveTap()Z
    .registers 3

    .prologue
    .line 5569
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_1e
    const/4 v0, 0x1

    .line 5573
    :goto_1f
    return v0

    .line 5569
    :cond_20
    const/4 v0, 0x0

    .line 5573
    goto :goto_1f
.end method

.method private editorShowsCompletions()Z
    .registers 6

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5580
    iget-byte v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-eqz v0, :cond_a

    move v0, v2

    .line 5593
    :goto_9
    return v0

    .line 5587
    :cond_a
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_isSimulateFullscreen:Z

    if-eqz v0, :cond_31

    :cond_14
    move v0, v3

    .line 5589
    :goto_15
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v1, :cond_35

    .line 5590
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    iget-boolean v0, v0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->isAddWordQuery:Z

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    iget-boolean v0, v0, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->isTipShownInHWCL:Z

    if-nez v0, :cond_33

    move v0, v3

    goto :goto_9

    :cond_31
    move v0, v2

    .line 5587
    goto :goto_15

    :cond_33
    move v0, v2

    .line 5590
    goto :goto_9

    .line 5593
    :cond_35
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_41

    if-eqz v0, :cond_41

    move v0, v3

    goto :goto_9

    :cond_41
    move v0, v2

    goto :goto_9
.end method

.method private fixCompletionInfo([Landroid/view/inputmethod/CompletionInfo;)[Landroid/view/inputmethod/CompletionInfo;
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 4531
    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_9

    :cond_7
    move-object v0, v4

    .line 4568
    :cond_8
    :goto_8
    return-object v0

    :cond_9
    move v0, v3

    move v1, v3

    .line 4542
    :goto_b
    array-length v2, p1

    if-ge v0, v2, :cond_1b

    .line 4543
    aget-object v2, p1, v0

    .line 4545
    invoke-direct {p0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCompletionText(Landroid/view/inputmethod/CompletionInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4546
    if-eqz v2, :cond_18

    .line 4547
    add-int/lit8 v1, v1, 0x1

    .line 4542
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 4551
    :cond_1b
    array-length v0, p1

    if-eq v1, v0, :cond_37

    .line 4553
    if-lez v1, :cond_39

    .line 4554
    new-array v0, v1, [Landroid/view/inputmethod/CompletionInfo;

    move v1, v3

    move v2, v3

    .line 4556
    :goto_24
    array-length v3, p1

    if-ge v1, v3, :cond_8

    .line 4557
    aget-object v3, p1, v1

    .line 4558
    invoke-direct {p0, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCompletionText(Landroid/view/inputmethod/CompletionInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_34

    .line 4559
    add-int/lit8 v4, v2, 0x1

    aput-object v3, v0, v2

    move v2, v4

    .line 4556
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_37
    move-object v0, p1

    .line 4566
    goto :goto_8

    :cond_39
    move-object v0, v4

    goto :goto_8
.end method

.method private getCandidateViewHeight()I
    .registers 2

    .prologue
    .line 5433
    iget-byte v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    packed-switch v0, :pswitch_data_16

    .line 5445
    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 5438
    :pswitch_7
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5439
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getHeight()I

    move-result v0

    goto :goto_6

    .line 5433
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private getCompletionText(Landroid/view/inputmethod/CompletionInfo;)Ljava/lang/CharSequence;
    .registers 3
    .parameter "ci"

    .prologue
    .line 4513
    if-eqz p1, :cond_17

    .line 4517
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 4518
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4521
    :goto_16
    return-object v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private static getComponentName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 5517
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 5518
    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5519
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5520
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5523
    :goto_23
    return-object v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method

.method private getCvInvisibleVal()I
    .registers 2

    .prologue
    .line 1672
    const/4 v0, 0x4

    return v0
.end method

.method private getFirstCandidateIndex()I
    .registers 2

    .prologue
    .line 5343
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getChoiceView()Lcom/swype/android/widget/HorizontalChoiceView;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 5344
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getChoiceView()Lcom/swype/android/widget/HorizontalChoiceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceView;->getDefaultIndex()I

    move-result v0

    .line 5347
    :goto_12
    return v0

    :cond_13
    const/4 v0, -0x1

    goto :goto_12
.end method

.method private getSelectedText()Ljava/lang/String;
    .registers 10

    .prologue
    .line 5449
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 5450
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_31

    .line 5451
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 5453
    .local v5, request:Landroid/view/inputmethod/ExtractedTextRequest;
    const/4 v7, 0x0

    invoke-interface {v2, v5, v7}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 5454
    .local v0, eText:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_31

    .line 5455
    iget v7, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v6, v7, v8

    .line 5456
    .local v6, start:I
    iget v7, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v1, v7, v8

    .line 5457
    .local v1, end:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 5458
    .local v4, real_start:I
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5460
    .local v3, real_end:I
    iget-object v7, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v7, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 5463
    .end local v0           #eText:Landroid/view/inputmethod/ExtractedText;
    .end local v1           #end:I
    .end local v3           #real_end:I
    .end local v4           #real_start:I
    .end local v5           #request:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #start:I
    :goto_30
    return-object v7

    :cond_31
    const/4 v7, 0x0

    goto :goto_30
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private handleControlChar(I)V
    .registers 9
    .parameter

    .prologue
    const/16 v6, 0x58

    const/16 v5, 0x56

    const/16 v4, 0x43

    .line 3922
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3923
    if-nez v1, :cond_d

    .line 3965
    :cond_c
    :goto_c
    return-void

    .line 3926
    :cond_d
    if-eq p1, v4, :cond_13

    if-eq p1, v6, :cond_13

    if-ne p1, v5, :cond_62

    .line 3927
    :cond_13
    new-instance v0, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 3928
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 3929
    if-eqz v0, :cond_c

    .line 3930
    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v2, v3

    .line 3931
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v0, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int/2addr v3, v0

    .line 3932
    if-ne p1, v4, :cond_3b

    .line 3933
    if-eq v2, v3, :cond_c

    if-ltz v2, :cond_c

    if-ltz v3, :cond_c

    .line 3935
    const v0, 0x1020021

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3938
    invoke-static {v1, v2, v3}, Lcom/swype/android/inputmethod/InputConnectionAdaptor;->setSelection(Landroid/view/inputmethod/InputConnection;II)Z

    goto :goto_c

    .line 3941
    :cond_3b
    if-ne p1, v6, :cond_46

    .line 3943
    if-eq v2, v3, :cond_c

    .line 3944
    const v0, 0x1020020

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    goto :goto_c

    .line 3947
    :cond_46
    if-ne p1, v5, :cond_c

    .line 3949
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 3950
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3951
    if-eq v2, v3, :cond_5b

    .line 3953
    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendDeleteKey(Landroid/view/inputmethod/InputConnection;)V

    .line 3955
    :cond_5b
    const v0, 0x1020022

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    goto :goto_c

    .line 3960
    :cond_62
    const/16 v0, 0x41

    if-ne p1, v0, :cond_c

    .line 3963
    const v0, 0x102001f

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    goto :goto_c
.end method

.method private hexify(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "text"

    .prologue
    .line 5185
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->hexify(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hexify(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 5189
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_hexBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5191
    :goto_e
    if-ge v1, v0, :cond_36

    .line 5192
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_hexBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1f

    .line 5193
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_hexBuilder:Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5195
    :cond_1f
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_hexBuilder:Ljava/lang/StringBuilder;

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5196
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_hexBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5191
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 5198
    :cond_36
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_hexBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideChoiceWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3909
    iput-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->showingChoice:Z

    .line 3910
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_11

    .line 3911
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/ChoiceWindow;->setWindowType(I)V

    .line 3912
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3914
    :cond_11
    return-void
.end method

.method private initNavBar(Landroid/widget/LinearLayout;)V
    .registers 6
    .parameter

    .prologue
    .line 1585
    new-instance v0, Lcom/swype/android/widget/NavigationBar;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/swype/android/widget/NavigationBar;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBar:Lcom/swype/android/widget/NavigationBar;

    .line 1586
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBar:Lcom/swype/android/widget/NavigationBar;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/NavigationBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1587
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBar:Lcom/swype/android/widget/NavigationBar;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1589
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBar:Lcom/swype/android/widget/NavigationBar;

    const-string v1, "nav_arrow_up"

    const/16 v2, 0x13

    invoke-static {v2}, Lcom/swype/android/inputmethod/VirtualKeyCode;->getVkcFromKeyEventCode(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/widget/NavigationBar;->addCommandWithImage(Ljava/lang/String;I)V

    .line 1590
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBar:Lcom/swype/android/widget/NavigationBar;

    const-string v1, "nav_arrow_down"

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/swype/android/inputmethod/VirtualKeyCode;->getVkcFromKeyEventCode(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/widget/NavigationBar;->addCommandWithImage(Ljava/lang/String;I)V

    .line 1591
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBar:Lcom/swype/android/widget/NavigationBar;

    const-string v1, "nav_arrow_left"

    const/16 v2, 0x15

    invoke-static {v2}, Lcom/swype/android/inputmethod/VirtualKeyCode;->getVkcFromKeyEventCode(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/widget/NavigationBar;->addCommandWithImage(Ljava/lang/String;I)V

    .line 1592
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBar:Lcom/swype/android/widget/NavigationBar;

    const-string v1, "nav_arrow_right"

    const/16 v2, 0x16

    invoke-static {v2}, Lcom/swype/android/inputmethod/VirtualKeyCode;->getVkcFromKeyEventCode(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/widget/NavigationBar;->addCommandWithImage(Ljava/lang/String;I)V

    .line 1593
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBar:Lcom/swype/android/widget/NavigationBar;

    iget v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBarVisibility:I

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/NavigationBar;->setVisibility(I)V

    .line 1594
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBar:Lcom/swype/android/widget/NavigationBar;

    invoke-virtual {v0}, Lcom/swype/android/widget/NavigationBar;->requestLayout()V

    .line 1595
    return-void
.end method

.method private isMaxSpellingReached()Z
    .registers 2

    .prologue
    .line 5339
    const/4 v0, 0x0

    return v0
.end method

.method private static isPasswordBitSet(Landroid/view/inputmethod/EditorInfo;)Z
    .registers 3
    .parameter

    .prologue
    .line 3973
    iget v0, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3974
    and-int/lit16 v0, v0, 0xff0

    .line 3975
    const/16 v1, 0x80

    if-eq v0, v1, :cond_10

    const/16 v1, 0x90

    if-eq v0, v1, :cond_10

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isSelected()Z
    .registers 1

    .prologue
    .line 1453
    sget-boolean v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isSelected:Z

    return v0
.end method

.method private isStrEmpty(Ljava/lang/CharSequence;)Z
    .registers 3
    .parameter

    .prologue
    .line 2051
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private varargs isWorkingWithApp([Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4332
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    .line 4333
    array-length v0, p1

    move v1, v4

    :goto_9
    if-ge v1, v0, :cond_1c

    aget-object v2, p1, v1

    .line 4334
    if-eqz v2, :cond_19

    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 4335
    const/4 v0, 0x1

    .line 4339
    :goto_18
    return v0

    .line 4333
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1c
    move v0, v4

    .line 4339
    goto :goto_18
.end method

.method private launchActivitySend(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 5499
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5500
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5501
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 5502
    invoke-static {v1, p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getComponentName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 5503
    if-eqz v1, :cond_2b

    .line 5504
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5505
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5506
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5508
    :try_start_28
    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->startActivity(Landroid/content/Intent;)V
    :try_end_2b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_28 .. :try_end_2b} :catch_2c

    .line 5513
    :cond_2b
    :goto_2b
    return-void

    .line 5509
    :catch_2c
    move-exception v0

    .line 5510
    const-string v2, "Swype"

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method private launchPkgActivityView(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 5470
    if-nez p1, :cond_3

    .line 5489
    :cond_2
    :goto_2
    return-void

    .line 5474
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5475
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 5477
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 5478
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5479
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5480
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5482
    :try_start_3a
    invoke-virtual {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->startActivity(Landroid/content/Intent;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3e

    goto :goto_2

    .line 5483
    :catch_3e
    move-exception v0

    .line 5484
    const-string v1, "Swype"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private loadSoundEffects()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v3, 0x1

    .line 4409
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x61

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingInt(I)I

    move-result v0

    iput v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->keypressVolumeAdjustment:I

    .line 4411
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mKeyPressSoundFileName:[Ljava/lang/String;

    const-string v1, "KeyPressSound.ogg"

    aput-object v1, v0, v3

    .line 4413
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mKeyPressSoundFileName:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "SpaceSound.ogg"

    aput-object v2, v0, v1

    .line 4414
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mKeyPressSoundFileName:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "BackspSound.ogg"

    aput-object v2, v0, v1

    .line 4416
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v5, v3, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPool:Landroid/media/SoundPool;

    .line 4417
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    .line 4419
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x7f06

    invoke-virtual {v1, p0, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    move v0, v3

    .line 4420
    :goto_39
    if-ge v0, v5, :cond_65

    .line 4422
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mKeyPressSoundFileName:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5b

    .line 4424
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 4426
    :try_start_45
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mKeyPressSoundFileName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 4427
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPool:Landroid/media/SoundPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v3

    aput v3, v2, v0

    .line 4428
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_5b} :catch_5e

    .line 4420
    :cond_5b
    :goto_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 4431
    :catch_5e
    move-exception v1

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    goto :goto_5b

    .line 4435
    :cond_65
    return-void
.end method

.method private logEditorInfo(Landroid/view/inputmethod/EditorInfo;)V
    .registers 2
    .parameter "ei"

    .prologue
    .line 2002
    return-void
.end method

.method public static logViewInfo(Landroid/view/View;)V
    .registers 6
    .parameter

    .prologue
    .line 5694
    const-string v0, "Swype"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logViewInfo(): view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5695
    const-string v0, "Swype"

    const-string v1, "logViewInfo(): tl (%d,%d); dims (%d,%d); vis: %d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5700
    return-void
.end method

.method public static logViews(Landroid/view/View;)V
    .registers 7
    .parameter

    .prologue
    .line 5707
    if-eqz p0, :cond_41

    .line 5708
    invoke-static {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->logViewInfo(Landroid/view/View;)V

    .line 5709
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 5710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5711
    :goto_e
    if-eqz v1, :cond_48

    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_48

    .line 5712
    const-string v3, "Swype"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "logViewInfo(): view parent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5713
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    invoke-static {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->logViewInfo(Landroid/view/View;)V

    .line 5714
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 5715
    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 5719
    :cond_41
    const-string v1, "Swype"

    const-string v2, "logViewInfo(): view null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5721
    :cond_48
    return-void
.end method

.method private onConverstionSelected()Z
    .registers 5

    .prologue
    const/16 v3, 0x1d

    const/4 v1, 0x0

    .line 4987
    iget-byte v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-nez v0, :cond_9

    move v0, v1

    .line 5000
    :goto_8
    return v0

    .line 4990
    :cond_9
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SpellingTextManager;->getTappedSegmentIndex()I

    move-result v0

    .line 4991
    if-ltz v0, :cond_1f

    .line 4995
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v0, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->removeMessages(I)V

    .line 4996
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v3, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4997
    const/4 v0, 0x1

    goto :goto_8

    :cond_1f
    move v0, v1

    .line 5000
    goto :goto_8
.end method

.method private performDoubleTap()V
    .registers 3

    .prologue
    .line 4970
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->onConverstionSelected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4980
    :cond_6
    :goto_6
    return-void

    .line 4973
    :cond_7
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isKeyboardShown()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4977
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->appDoubleTap()V

    .line 4979
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->tsLastDoubleTap:J

    goto :goto_6
.end method

.method private performSingleTap()V
    .registers 2

    .prologue
    .line 4957
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->onConverstionSelected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4963
    :goto_6
    return-void

    .line 4961
    :cond_7
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->appSingleTap()V

    goto :goto_6
.end method

.method private performSingleTapDelayed()V
    .registers 5

    .prologue
    const/16 v3, 0x1a

    .line 4950
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v0, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->removeMessages(I)V

    .line 4951
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4952
    return-void
.end method

.method private playSoundEffect(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 4443
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_16

    .line 4444
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->calcKeyPressVolume()F

    move-result v2

    .line 4445
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    aget v1, v1, p1

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 4447
    :cond_16
    return-void
.end method

.method private replaceTextSpan(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Ljava/lang/String;I)Z
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2424
    if-eqz p2, :cond_46

    instance-of v0, p2, Landroid/text/SpannableString;

    if-eqz v0, :cond_46

    .line 2428
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2431
    check-cast p2, Landroid/text/SpannableString;

    .line 2432
    invoke-virtual {p2}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p2, v4, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 2436
    array-length v2, v1

    if-lez v2, :cond_31

    .line 2442
    array-length v2, v1

    sub-int/2addr v2, v5

    aget-object v1, v1, v2

    .line 2444
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_3f

    invoke-virtual {p2, v1}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    .line 2445
    :goto_2a
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v4, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2450
    :cond_31
    if-gez p4, :cond_42

    .line 2451
    neg-int v1, p4

    invoke-interface {p1, v1, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2455
    :goto_37
    invoke-interface {p1, v0, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2456
    invoke-direct {p0, p3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->wasCommitSuccessful(Ljava/lang/String;)Z

    move-result v0

    .line 2469
    :goto_3e
    return v0

    .line 2444
    :cond_3f
    const/16 v2, 0x22

    goto :goto_2a

    .line 2453
    :cond_42
    invoke-interface {p1, v4, p4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_37

    .line 2461
    :cond_46
    if-gez p4, :cond_54

    .line 2462
    neg-int v0, p4

    invoke-interface {p1, v0, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2466
    :goto_4c
    invoke-interface {p1, p3, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2467
    invoke-direct {p0, p3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->wasCommitSuccessful(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3e

    .line 2464
    :cond_54
    invoke-interface {p1, v4, p4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_4c
.end method

.method private resizeInputView()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1618
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/InputWindow;->resizeCanvas()V

    .line 1619
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/InputWindow;->clearBuffer()V

    .line 1620
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/InputWindow;->reLoadWingGraphics()V

    .line 1621
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/InputWindow;->recalculateKeyboardOffsetX()V

    .line 1622
    invoke-virtual {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->haltDrawing(Z)V

    .line 1623
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/InputWindow;->forceRedraw()V

    .line 1624
    iput-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->keyboardResizing:Z

    .line 1625
    return-void
.end method

.method private secondaryInit()V
    .registers 4

    .prologue
    .line 1273
    sget-boolean v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isSelected:Z

    if-nez v0, :cond_5

    .line 1354
    :goto_4
    return-void

    .line 1278
    :cond_5
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->updateSilentMode()Z

    .line 1279
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->touchtoneSettingListener:Landroid/database/ContentObserver;

    if-nez v0, :cond_18

    .line 1281
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->registerTouchToneSettingsObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->touchtoneSettingListener:Landroid/database/ContentObserver;

    .line 1283
    :cond_18
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x63

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingInt(I)I

    move-result v0

    iput v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hapticDuration:I

    .line 1285
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->updateHapticSetting()Z

    .line 1286
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hapticSettingListener:Landroid/database/ContentObserver;

    if-nez v0, :cond_35

    .line 1288
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->registerHapticSettingsObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hapticSettingListener:Landroid/database/ContentObserver;

    .line 1291
    :cond_35
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1292
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1293
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1294
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1296
    new-instance v1, Lcom/swype/android/inputmethod/SwypeInputMethod$2;

    invoke-direct {v1, p0}, Lcom/swype/android/inputmethod/SwypeInputMethod$2;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    iput-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->screenStateListener:Landroid/content/BroadcastReceiver;

    .line 1344
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->screenStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1346
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1347
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    iput v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->callState:I

    .line 1348
    new-instance v1, Lcom/swype/android/inputmethod/SwypeInputMethod$PhoneStateChangeListener;

    invoke-direct {v1, p0}, Lcom/swype/android/inputmethod/SwypeInputMethod$PhoneStateChangeListener;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    iput-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->phoneState:Lcom/swype/android/inputmethod/SwypeInputMethod$PhoneStateChangeListener;

    .line 1349
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->phoneState:Lcom/swype/android/inputmethod/SwypeInputMethod$PhoneStateChangeListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1353
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getTaskRunner()Lcom/swype/android/inputmethod/PeriodicTaskRunner;

    move-result-object v0

    new-instance v1, Lcom/swype/android/inputmethod/PhonebookProcessor;

    invoke-direct {v1}, Lcom/swype/android/inputmethod/PhonebookProcessor;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/swype/android/inputmethod/PeriodicTaskRunner;->registerTask(Landroid/content/Context;Lcom/swype/android/inputmethod/PeriodicTaskRunner$RunnableTask;)Z

    goto :goto_4
.end method

.method private sendCharWithCtrlAndShift(Landroid/view/inputmethod/InputConnection;IZZ)V
    .registers 17
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3684
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3685
    if-eqz p3, :cond_17

    .line 3686
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x39

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {p1, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3690
    :cond_17
    if-eqz p4, :cond_2a

    .line 3691
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/16 v6, 0x3b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {p1, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3697
    :cond_2a
    invoke-virtual {p0, p2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendDownUpKeyEvents(I)V

    .line 3699
    if-eqz p3, :cond_40

    .line 3700
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x39

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {p1, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3704
    :cond_40
    if-eqz p4, :cond_53

    .line 3705
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x1

    const/16 v6, 0x3b

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {p1, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3710
    :cond_53
    return-void
.end method

.method private sendDeleteKey(Landroid/view/inputmethod/InputConnection;)V
    .registers 5
    .parameter

    .prologue
    const/16 v2, 0x43

    .line 3823
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->adjustCursorDiacritic()V

    .line 3824
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3825
    invoke-interface {p1, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3826
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 3827
    invoke-interface {p1, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 3828
    return-void
.end method

.method private sendInputStr(Ljava/lang/String;)Z
    .registers 14
    .parameter

    .prologue
    const-wide/16 v6, 0xc8

    const-wide/16 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3779
    .line 3782
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SpellingTextManager;->clearComposingRegion()V

    .line 3783
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "com.motorola.blur.home"

    aput-object v1, v0, v8

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "com.motorola.blur.home.message"

    aput-object v1, v0, v8

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_23
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.motorola.blur.contacts"

    aput-object v1, v0, v8

    const-string v1, "com.sec.chaton"

    aput-object v1, v0, v9

    const/4 v1, 0x2

    const-string v2, "com.sec.android.app.clockpackage"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 3787
    :cond_39
    const-wide/16 v0, 0x258

    move-wide v2, v6

    .line 3792
    :goto_3c
    cmp-long v4, v2, v4

    if-lez v4, :cond_74

    move-wide v10, v2

    move-wide v3, v10

    move v2, v8

    .line 3794
    :goto_43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_72

    .line 3795
    iget-object v5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    new-array v6, v9, [I

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 3798
    iget-object v6, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v6, v5, v3, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3799
    if-nez v2, :cond_5f

    move-wide v3, v0

    .line 3794
    :cond_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 3788
    :cond_62
    new-array v0, v9, [Ljava/lang/String;

    const-string v1, "com.android.launcher"

    aput-object v1, v0, v8

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 3790
    const-wide/16 v0, 0x12c

    move-wide v2, v6

    goto :goto_3c

    :cond_72
    move v0, v9

    .line 3811
    :goto_73
    return v0

    .line 3805
    :cond_74
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 3806
    if-eqz v0, :cond_8f

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;

    move-result-object v1

    if-eqz v1, :cond_8f

    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isShown:Z

    if-eqz v1, :cond_8f

    .line 3807
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->adjustCursorDiacritic()V

    .line 3808
    invoke-interface {v0, p1, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 3809
    invoke-direct {p0, p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->wasCommitSuccessful(Ljava/lang/String;)Z

    move-result v0

    goto :goto_73

    :cond_8f
    move v0, v8

    .line 3811
    goto :goto_73

    :cond_91
    move-wide v0, v4

    move-wide v2, v4

    goto :goto_3c
.end method

.method private sendInputVKC(IZZZZI)V
    .registers 25
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3437
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v17

    .line 3438
    if-nez v17, :cond_7

    .line 3676
    :cond_6
    :goto_6
    return-void

    .line 3443
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->getKeyEventCodeFromVKC(I)I

    move-result v5

    .line 3445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/swype/android/inputmethod/SwypeApplication;->isHoneycombOrGreater()Z

    move-result v6

    if-nez v6, :cond_3ea

    const/16 v6, 0x23

    move/from16 v0, p1

    move v1, v6

    if-eq v0, v1, :cond_24

    const/16 v6, 0x24

    move/from16 v0, p1

    move v1, v6

    if-ne v0, v1, :cond_3ea

    .line 3446
    :cond_24
    const/4 v5, -0x1

    move v11, v5

    .line 3449
    :goto_26
    const/4 v5, -0x1

    if-eq v11, v5, :cond_cc

    .line 3450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3451
    const/4 v5, 0x1

    move/from16 v0, p6

    move v1, v5

    if-eq v0, v1, :cond_39

    const/4 v5, 0x2

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_57

    .line 3452
    :cond_39
    const/4 v5, 0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_54

    const/4 v5, 0x0

    move v10, v5

    .line 3453
    :goto_41
    new-instance v5, Landroid/view/KeyEvent;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    move-wide v8, v6

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_6

    .line 3452
    :cond_54
    const/4 v5, 0x1

    move v10, v5

    goto :goto_41

    .line 3455
    :cond_57
    const/4 v5, 0x3

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_6

    .line 3456
    const/4 v5, 0x0

    .line 3458
    sparse-switch v11, :sswitch_data_3ee

    .line 3475
    :goto_61
    const/16 v6, 0x13

    if-ne v11, v6, :cond_bf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    move-object v6, v0

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_bf

    if-eqz p5, :cond_bf

    .line 3489
    const/4 v6, 0x0

    .line 3492
    if-eqz v5, :cond_80

    .line 3493
    invoke-virtual/range {p0 .. p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSelectedTextRegion()[I

    move-result-object v7

    .line 3494
    if-eqz v7, :cond_80

    .line 3495
    const/4 v6, 0x1

    aget v6, v7, v6

    .line 3498
    :cond_80
    if-ltz v6, :cond_bf

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move v1, v7

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/swype/android/inputmethod/InputConnectionAdaptor;->setSelection(Landroid/view/inputmethod/InputConnection;II)Z

    move-result v6

    if-eqz v6, :cond_bf

    .line 3501
    const/16 v5, 0x32

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    goto/16 :goto_6

    .line 3469
    :sswitch_97
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.infraware.polarisoffice"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_bc

    .line 3470
    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3471
    if-nez p4, :cond_bc

    .line 3472
    if-eqz v5, :cond_bc

    .line 3473
    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    :cond_bc
    move/from16 v5, p4

    goto :goto_61

    .line 3508
    :cond_bf
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v11

    move/from16 v3, p5

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendCharWithCtrlAndShift(Landroid/view/inputmethod/InputConnection;IZZ)V

    goto/16 :goto_6

    .line 3512
    :cond_cc
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isBackKey(I)Z

    move-result v5

    if-eqz v5, :cond_f3

    .line 3513
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->deleteSelectedText(Landroid/view/inputmethod/InputConnection;)Z

    move-result v5

    if-nez v5, :cond_e3

    .line 3515
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendDeleteKey(Landroid/view/inputmethod/InputConnection;)V

    .line 3533
    :cond_e3
    :goto_e3
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isSpace(I)Z

    move-result v5

    if-eqz v5, :cond_12b

    .line 3534
    const/16 v5, 0x20

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendKeyChar(C)V

    goto/16 :goto_6

    .line 3518
    :cond_f3
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isDeleteBackKey(I)Z

    move-result v5

    if-eqz v5, :cond_e3

    .line 3519
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.qo.android.oeme"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "com.google.android.gm"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_117

    .line 3523
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendDeleteKey(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_e3

    .line 3527
    :cond_117
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->deleteSelectedText(Landroid/view/inputmethod/InputConnection;)Z

    move-result v5

    if-nez v5, :cond_e3

    .line 3529
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_e3

    .line 3535
    :cond_12b
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isTab(I)Z

    move-result v5

    if-eqz v5, :cond_13a

    .line 3536
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendTab(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_6

    .line 3537
    :cond_13a
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isReturn(I)Z

    move-result v5

    if-eqz v5, :cond_149

    .line 3538
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendReturn(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_6

    .line 3539
    :cond_149
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isDeleteKey(I)Z

    move-result v5

    if-eqz v5, :cond_164

    .line 3540
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->deleteSelectedText(Landroid/view/inputmethod/InputConnection;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3541
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_6

    .line 3543
    :cond_164
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isCtrlBackspace(I)Z

    move-result v5

    if-eqz v5, :cond_1e6

    .line 3547
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "oms.mms"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18c

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "com.qo.android.oeme"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_193

    .line 3548
    :cond_18c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendDeleteKey(Landroid/view/inputmethod/InputConnection;)V

    .line 3550
    :cond_193
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->deleteSelectedText(Landroid/view/inputmethod/InputConnection;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3553
    const/16 v5, 0x80

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3554
    if-eqz v5, :cond_6

    .line 3557
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 3559
    :goto_1b0
    if-ltz v6, :cond_1bf

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_1bf

    .line 3560
    add-int/lit8 v6, v6, -0x1

    goto :goto_1b0

    .line 3562
    :cond_1bf
    :goto_1bf
    if-ltz v6, :cond_1ce

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_1ce

    .line 3563
    add-int/lit8 v6, v6, -0x1

    goto :goto_1bf

    .line 3565
    :cond_1ce
    if-ltz v6, :cond_1e1

    .line 3567
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .line 3572
    :goto_1d7
    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_6

    .line 3570
    :cond_1e1
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    goto :goto_1d7

    .line 3575
    :cond_1e6
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isCtrlDelete(I)Z

    move-result v5

    if-eqz v5, :cond_246

    .line 3577
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->deleteSelectedText(Landroid/view/inputmethod/InputConnection;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3582
    const/16 v5, 0x80

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3583
    if-eqz v5, :cond_6

    .line 3586
    const/4 v6, 0x0

    .line 3588
    :goto_204
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_217

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_217

    .line 3589
    add-int/lit8 v6, v6, 0x1

    goto :goto_204

    .line 3591
    :cond_217
    if-lez v6, :cond_225

    .line 3593
    add-int/lit8 v5, v6, 0x1

    .line 3607
    :goto_21b
    const/4 v6, 0x0

    move-object/from16 v0, v17

    move v1, v6

    move v2, v5

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_6

    .line 3595
    :cond_225
    :goto_225
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_238

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-nez v7, :cond_238

    .line 3596
    add-int/lit8 v6, v6, 0x1

    goto :goto_225

    .line 3598
    :cond_238
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v6, v7, :cond_241

    .line 3600
    add-int/lit8 v5, v6, 0x1

    goto :goto_21b

    .line 3603
    :cond_241
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    goto :goto_21b

    .line 3610
    :cond_246
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isPageUp(I)Z

    move-result v5

    if-eqz v5, :cond_26a

    .line 3612
    const/4 v5, 0x0

    move v12, v5

    :goto_24e
    const/4 v5, 0x5

    if-ge v12, v5, :cond_6

    .line 3613
    const/16 v5, 0x13

    invoke-static {v5}, Lcom/swype/android/inputmethod/VirtualKeyCode;->getVkcFromKeyEventCode(I)I

    move-result v6

    move-object/from16 v5, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendInputVKC(IZZZZI)V

    .line 3612
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    goto :goto_24e

    .line 3615
    :cond_26a
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isPageDown(I)Z

    move-result v5

    if-eqz v5, :cond_28e

    .line 3617
    const/4 v5, 0x0

    move v12, v5

    :goto_272
    const/4 v5, 0x5

    if-ge v12, v5, :cond_6

    .line 3618
    const/16 v5, 0x14

    invoke-static {v5}, Lcom/swype/android/inputmethod/VirtualKeyCode;->getVkcFromKeyEventCode(I)I

    move-result v6

    move-object/from16 v5, p0

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v5 .. v11}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendInputVKC(IZZZZI)V

    .line 3617
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    goto :goto_272

    .line 3620
    :cond_28e
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isHome(I)Z

    move-result v5

    if-eqz v5, :cond_2a4

    .line 3622
    const/16 v5, 0x15

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v5

    move v3, v6

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendCharWithCtrlAndShift(Landroid/view/inputmethod/InputConnection;IZZ)V

    goto/16 :goto_6

    .line 3623
    :cond_2a4
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isEnd(I)Z

    move-result v5

    if-eqz v5, :cond_2ba

    .line 3625
    const/16 v5, 0x16

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v5

    move v3, v6

    move/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendCharWithCtrlAndShift(Landroid/view/inputmethod/InputConnection;IZZ)V

    goto/16 :goto_6

    .line 3626
    :cond_2ba
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isMicrophone(I)Z

    move-result v5

    if-eqz v5, :cond_2e0

    .line 3627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/swype/android/voice/VoiceManager;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    move-object v6, v0

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .line 3633
    :cond_2e0
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isPrimarySecondaryLangSwitch(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 3638
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isToggleKeyboardDisplay(I)Z

    move-result v5

    if-eqz v5, :cond_33d

    .line 3641
    const/4 v5, 0x1

    sput-boolean v5, Lcom/swype/android/inputmethod/SwypeInputMethod;->isToggled:Z

    .line 3644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/swype/android/inputmethod/ScreenDefinition;->getDisplayNumber()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x2

    .line 3645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    move-object v7, v0

    const/16 v8, 0x17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    move-object v5, v0

    if-eqz v5, :cond_6

    .line 3647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/swype/android/widget/InputWindow;->hasMovableWings()Z

    move-result v6

    if-nez v6, :cond_33b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/swype/android/widget/InputWindow;->hasMovableWingsDyn()Z

    move-result v6

    if-nez v6, :cond_33b

    const/4 v6, 0x1

    :goto_336
    invoke-virtual {v5, v6}, Lcom/swype/android/widget/InputWindow;->setToggletosmallerkeyboard(Z)V

    goto/16 :goto_6

    :cond_33b
    const/4 v6, 0x0

    goto :goto_336

    .line 3650
    :cond_33d
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isHideKeyboard(I)Z

    move-result v5

    if-eqz v5, :cond_358

    .line 3652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    move-object v6, v0

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    .line 3653
    :cond_358
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isChangeInputMethod(I)Z

    move-result v5

    if-eqz v5, :cond_370

    .line 3654
    const-string v5, "input_method"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 3655
    if-eqz p0, :cond_6

    .line 3656
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_6

    .line 3658
    :cond_370
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isChangeInputMethod(I)Z

    move-result v5

    if-eqz v5, :cond_388

    .line 3659
    const-string v5, "input_method"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 3660
    if-eqz p0, :cond_6

    .line 3661
    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_6

    .line 3663
    :cond_388
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isLaunchMaps(I)Z

    move-result v5

    if-eqz v5, :cond_3c0

    .line 3664
    const-string v5, "geo:0,0?q="

    .line 3665
    invoke-direct/range {p0 .. p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSelectedText()Ljava/lang/String;

    move-result-object v6

    .line 3666
    if-eqz v6, :cond_3b1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3b1

    .line 3667
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3669
    :cond_3b1
    const-string v6, "com.google.android.apps.maps"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->launchPkgActivityView(Ljava/lang/String;Landroid/net/Uri;)V

    goto/16 :goto_6

    .line 3670
    :cond_3c0
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isLaunchFacebook(I)Z

    move-result v5

    if-eqz v5, :cond_3d5

    .line 3671
    const-string v5, "com.facebook.katana.ShareLinkActivity"

    invoke-direct/range {p0 .. p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSelectedText()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->launchActivitySend(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3672
    :cond_3d5
    invoke-static/range {p1 .. p1}, Lcom/swype/android/inputmethod/VirtualKeyCode;->isLaunchTwitter(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 3673
    const-string v5, "com.twitter.android.PostActivity"

    invoke-direct/range {p0 .. p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSelectedText()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->launchActivitySend(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3ea
    move v11, v5

    goto/16 :goto_26

    .line 3458
    nop

    :sswitch_data_3ee
    .sparse-switch
        0x13 -> :sswitch_97
        0x14 -> :sswitch_97
        0x15 -> :sswitch_97
        0x16 -> :sswitch_97
        0x7a -> :sswitch_97
        0x7b -> :sswitch_97
    .end sparse-switch
.end method

.method private sendSingleChar(C)Z
    .registers 8
    .parameter "ch"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3747
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/SpellingTextManager;->clearComposingRegion()V

    .line 3748
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3749
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_4a

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;

    move-result-object v2

    if-eqz v2, :cond_4a

    iget-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isShown:Z

    if-eqz v2, :cond_4a

    .line 3750
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->adjustCursorDiacritic()V

    .line 3751
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_26

    move v2, v4

    .line 3767
    :goto_25
    return v2

    .line 3755
    :cond_26
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_32

    move v2, v5

    .line 3756
    goto :goto_25

    .line 3758
    :cond_32
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3759
    .local v0, before:Ljava/lang/CharSequence;
    if-nez v0, :cond_3a

    move v2, v4

    .line 3760
    goto :goto_25

    .line 3762
    :cond_3a
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_46

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_48

    :cond_46
    move v2, v4

    .line 3763
    goto :goto_25

    :cond_48
    move v2, v5

    .line 3765
    goto :goto_25

    .end local v0           #before:Ljava/lang/CharSequence;
    :cond_4a
    move v2, v4

    .line 3767
    goto :goto_25
.end method

.method private showChoiceWindow(I)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3858
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceViewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isKeyboardShown()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHelpDialogShown()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3903
    :cond_20
    :goto_20
    return-void

    .line 3864
    :cond_21
    iput-boolean v5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->showingChoice:Z

    .line 3865
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v0, p1}, Lcom/swype/android/widget/ChoiceWindow;->setWindowType(I)V

    .line 3866
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 3867
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 3868
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v2, v0, v1}, Lcom/swype/android/widget/ChoiceWindow;->resize(II)V

    .line 3869
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 3871
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_81

    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/ScreenDefinition;->getOrientation()I

    move-result v3

    if-ne v3, v5, :cond_81

    .line 3874
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenHeight()I

    move-result v3

    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v4}, Lcom/swype/android/widget/InputWindow;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->portrait_popup_adjustment:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    .line 3880
    :goto_5e
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v3}, Lcom/swype/android/widget/InputWindow;->getKeyboardOffsetX()I

    move-result v3

    .line 3883
    if-eq p1, v5, :cond_69

    const/4 v4, 0x2

    if-ne p1, v4, :cond_c7

    .line 3884
    :cond_69
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCandidateViewHeight()I

    move-result v4

    .line 3886
    :goto_6d
    iget-object v5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_a7

    .line 3887
    iget-object v5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    iget-object v6, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    sub-int/2addr v2, v4

    invoke-virtual {v5, v3, v2, v0, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_20

    .line 3875
    :cond_81
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_a3

    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/ScreenDefinition;->getOrientation()I

    move-result v3

    if-nez v3, :cond_a3

    .line 3876
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenHeight()I

    move-result v3

    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v4}, Lcom/swype/android/widget/InputWindow;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->landscape_popup_adjustment_no_fullscreen:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    goto :goto_5e

    .line 3878
    :cond_a3
    iget v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->landscape_popup_adjustment:I

    sub-int/2addr v2, v3

    goto :goto_5e

    .line 3891
    :cond_a7
    iget-object v5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3892
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3896
    :try_start_b1
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceViewRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    sub-int/2addr v2, v4

    invoke-virtual {v0, v1, v5, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_bf
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_b1 .. :try_end_bf} :catch_c1
    .catch Ljava/lang/RuntimeException; {:try_start_b1 .. :try_end_bf} :catch_c4

    goto/16 :goto_20

    .line 3901
    :catch_c1
    move-exception v0

    goto/16 :goto_20

    .line 3903
    :catch_c4
    move-exception v0

    goto/16 :goto_20

    :cond_c7
    move v4, v6

    goto :goto_6d
.end method

.method private showSelf()V
    .registers 4

    .prologue
    .line 4889
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4890
    if-eqz v0, :cond_c

    .line 4891
    const-string v1, "com.swype.android.inputmethod/relaunch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 4894
    :cond_c
    return-void
.end method

.method private showUserQuery([Ljava/lang/String;)V
    .registers 6
    .parameter

    .prologue
    .line 2679
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 2680
    const/4 v1, 0x1

    aget-object v1, p1, v1

    .line 2681
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2683
    new-instance v3, Lcom/swype/android/inputmethod/UserQueryDialog;

    invoke-direct {v3, v0, v1, v2}, Lcom/swype/android/inputmethod/UserQueryDialog;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2684
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v3, v0}, Lcom/swype/android/inputmethod/UserQueryDialog;->createDialog(Landroid/content/Context;)V

    .line 2685
    invoke-virtual {p0, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->showDialog(Lcom/swype/android/inputmethod/SwypeDialog;)V

    .line 2686
    return-void
.end method

.method private unRegisterAirplaneMode()V
    .registers 2

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->airplaneModeListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_c

    .line 1384
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->airplaneModeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->airplaneModeListener:Landroid/content/BroadcastReceiver;

    .line 1387
    :cond_c
    return-void
.end method

.method private updateLanguageIMEConversionArea()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5124
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hwclSync:Ljava/lang/Object;

    monitor-enter v0

    .line 5126
    :try_start_5
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->editorShowsCompletions()Z

    move-result v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->completionInfo:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v1, :cond_48

    move v1, v5

    .line 5127
    :goto_10
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->resizeCandidateView()V

    .line 5129
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v2, :cond_46

    if-nez v1, :cond_46

    .line 5130
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_65

    .line 5134
    :cond_25
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v1}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getChoiceView()Lcom/swype/android/widget/HorizontalChoiceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->getWords()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_3c

    .line 5136
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setListOfWords(Ljava/util/List;Ljava/util/List;)V

    .line 5139
    :cond_3c
    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHWCLOff:Z

    if-eqz v1, :cond_4a

    move-object v1, p0

    :goto_41
    move-object v2, v1

    move v1, v4

    .line 5157
    :goto_43
    invoke-virtual {v2, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCandidatesViewShown(Z)V

    .line 5161
    :cond_46
    :goto_46
    monitor-exit v0

    return-void

    :cond_48
    move v1, v4

    .line 5126
    goto :goto_10

    .line 5141
    :cond_4a
    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHWCLAutoHideEnabled:Z

    if-eqz v1, :cond_46

    .line 5144
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_46

    .line 5145
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v2, 0x20

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_46

    .line 5161
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_62

    throw v1

    .line 5150
    :cond_65
    :try_start_65
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;

    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidateProperties:Ljava/util/List;

    invoke-virtual {v1, v2, v3}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setListOfWords(Ljava/util/List;Ljava/util/List;)V

    .line 5151
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v1}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getChoiceView()Lcom/swype/android/widget/HorizontalChoiceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->isLocked()Z

    move-result v1

    .line 5155
    iget-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->keyboardResizing:Z

    if-nez v2, :cond_46

    .line 5156
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->removeMessages(I)V
    :try_end_83
    .catchall {:try_start_65 .. :try_end_83} :catchall_62

    .line 5157
    if-nez v1, :cond_88

    move v1, v5

    move-object v2, p0

    goto :goto_43

    :cond_88
    move-object v1, p0

    goto :goto_41
.end method

.method private updateLanguageIMESpellingContents()V
    .registers 5

    .prologue
    .line 5353
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hwclSync:Ljava/lang/Object;

    monitor-enter v0

    .line 5354
    :try_start_3
    iget-byte v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-lez v1, :cond_27

    iget-byte v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isInEnglishInputMode:Z

    if-nez v1, :cond_27

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStrings:[Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStrings:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_27

    .line 5360
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStrings:[Ljava/lang/String;

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStringStates:[B

    invoke-virtual {p0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->onUpdateSpellingText([Ljava/lang/String;[B)Z

    .line 5361
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setListOfWords(Ljava/util/List;Ljava/util/List;)V

    .line 5363
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private updateNavigationBarVisiblity(I)V
    .registers 4
    .parameter

    .prologue
    .line 5634
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5635
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 5636
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5637
    return-void
.end method

.method private updateOrientation(Lcom/swype/android/inputmethod/ScreenDefinition;)V
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 1484
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    if-eqz v0, :cond_b

    .line 1486
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeDialog;->onOrientationChange()V

    .line 1491
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isChangingOrientation:Z

    .line 1492
    iput-object p1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    .line 1493
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->configureFontFakeBoldOption()V

    .line 1495
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->showingChoice:Z

    .line 1496
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->removeMessages(I)V

    .line 1499
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->createChoiceWindow()V

    .line 1504
    invoke-virtual {p0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCandidatesViewShown(Z)V

    .line 1505
    invoke-virtual {p0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->hideCandidateViewIfMoveable(Z)V

    .line 1511
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_94

    .line 1515
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1516
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenWidth()I

    move-result v1

    .line 1517
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenHeight()I

    move-result v2

    .line 1519
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/ScreenDefinition;->getOrientation()I

    move-result v3

    .line 1520
    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v4, v3}, Lcom/swype/android/jni/SwypeCore;->getKeyboardSize(I)Lcom/swype/android/widget/ViewSize;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swype/android/widget/ViewSize;->getWidth()I

    move-result v3

    .line 1522
    if-lt v3, v1, :cond_56

    mul-int/lit8 v1, v1, 0x6e

    div-int/lit8 v1, v1, 0x64

    if-le v3, v1, :cond_5e

    :cond_56
    if-lt v3, v2, :cond_92

    mul-int/lit8 v1, v2, 0x6e

    div-int/lit8 v1, v1, 0x64

    if-gt v3, v1, :cond_92

    .line 1525
    :cond_5e
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1526
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 1532
    :goto_66
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v1, :cond_7a

    .line 1533
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v1}, Lcom/swype/android/widget/InputWindow;->hasMovableWings()Z

    move-result v1

    iput-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hasWings:Z

    .line 1534
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v1}, Lcom/swype/android/widget/InputWindow;->hasMovableWingsDyn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hasWingsDyn:Z

    .line 1536
    :cond_7a
    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hasWings:Z

    if-nez v1, :cond_82

    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hasWingsDyn:Z

    if-eqz v1, :cond_83

    :cond_82
    move v0, v5

    .line 1541
    :cond_83
    :goto_83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    .line 1542
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/ScreenDefinition;->getOrientation()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/swype/android/jni/SwypeCore;->setOrientation(II)V

    .line 1543
    return-void

    :cond_92
    move v0, v5

    .line 1529
    goto :goto_66

    :cond_94
    move v0, v5

    goto :goto_83
.end method

.method private wasCommitSuccessful(Ljava/lang/String;)Z
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5666
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "org.mozilla.firefox"

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    .line 5690
    :goto_f
    return v0

    .line 5670
    :cond_10
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 5671
    if-eqz v0, :cond_4f

    .line 5672
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5673
    if-eqz v0, :cond_4f

    .line 5674
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.infraware.polarisoffice"

    aput-object v2, v1, v3

    const-string v2, "com.sec.android.app.snotebook"

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_51

    .line 5680
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v1, v2

    .line 5681
    if-lez v1, :cond_51

    .line 5682
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 5687
    :goto_46
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_f

    :cond_4f
    move v0, v3

    .line 5690
    goto :goto_f

    :cond_51
    move-object v1, p1

    goto :goto_46
.end method


# virtual methods
.method public currentApp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3289
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    return-object v0
.end method

.method protected doPerformHapticFeedback()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2762
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    if-nez v0, :cond_7

    .line 2788
    :cond_6
    :goto_6
    return-void

    .line 2765
    :cond_7
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isHapticOn()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->callState:I

    if-nez v0, :cond_6

    .line 2766
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    invoke-virtual {v0}, Lcom/swype/android/oem/OemAction;->IsUsingVibratorInterfaceForHaptic()Z

    move-result v0

    if-eqz v0, :cond_55

    move v0, v2

    .line 2767
    :goto_20
    if-nez v0, :cond_38

    .line 2772
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/InputWindow;->isHapticFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2773
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/InputWindow;->performHapticFeedback(I)Z

    move-result v0

    if-nez v0, :cond_57

    move v0, v2

    .line 2778
    :cond_38
    :goto_38
    if-eqz v0, :cond_6

    .line 2780
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_48

    .line 2781
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mVibrator:Landroid/os/Vibrator;

    .line 2783
    :cond_48
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_6

    .line 2784
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hapticDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_6

    :cond_55
    move v0, v3

    .line 2766
    goto :goto_20

    :cond_57
    move v0, v3

    .line 2773
    goto :goto_38

    :cond_59
    move v0, v2

    .line 2775
    goto :goto_38
.end method

.method public getAdditionalEditorProperty(I)I
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2600
    if-nez p1, :cond_1d

    .line 2602
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 2603
    if-eqz v0, :cond_1f

    .line 2604
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 2606
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_11

    .line 2607
    const/4 v0, 0x1

    .line 2618
    :goto_10
    return v0

    .line 2609
    :cond_11
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_17

    .line 2610
    const/4 v0, 0x4

    goto :goto_10

    .line 2612
    :cond_17
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_1f

    .line 2613
    const/4 v0, 0x2

    goto :goto_10

    :cond_1d
    move v0, v2

    .line 2618
    goto :goto_10

    :cond_1f
    move v0, v2

    goto :goto_10
.end method

.method public getApplicationId()I
    .registers 2

    .prologue
    .line 2627
    iget v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->applicationId:I

    return v0
.end method

.method public getChoiceWindowTextBounds(Ljava/lang/String;II)Landroid/graphics/Rect;
    .registers 5
    .parameter "text"
    .parameter "style"
    .parameter "horizontalAlign"

    .prologue
    .line 3059
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    if-eqz v0, :cond_b

    .line 3060
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/swype/android/widget/ChoiceWindow;->getTextBounds(Ljava/lang/String;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 3062
    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_a
.end method

.method public getDefaultCandidateIndex()I
    .registers 2

    .prologue
    .line 5328
    iget-byte v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-eqz v0, :cond_9

    .line 5329
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getFirstCandidateIndex()I

    move-result v0

    .line 5332
    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public getEditorProperty(I)Z
    .registers 4
    .parameter "property"

    .prologue
    const/4 v1, 0x0

    .line 2562
    packed-switch p1, :pswitch_data_72

    :pswitch_4
    move v0, v1

    .line 2592
    :goto_5
    return v0

    .line 2564
    :pswitch_6
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_5

    .line 2566
    :pswitch_d
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_5

    .line 2568
    :pswitch_15
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_5

    .line 2570
    :pswitch_1d
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_5

    .line 2572
    :pswitch_25
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_5

    .line 2574
    :pswitch_2d
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_5

    .line 2576
    :pswitch_35
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_5

    :pswitch_3e
    move v0, v1

    .line 2578
    goto :goto_5

    .line 2580
    :pswitch_40
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->editorNoPredictiveTap()Z

    move-result v0

    goto :goto_5

    .line 2582
    :pswitch_45
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_5

    .line 2584
    :pswitch_4e
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_5

    .line 2586
    :pswitch_57
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_5

    .line 2588
    :pswitch_5f
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_5

    .line 2590
    :pswitch_68
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    goto :goto_5

    .line 2562
    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_6
        :pswitch_d
        :pswitch_15
        :pswitch_1d
        :pswitch_25
        :pswitch_2d
        :pswitch_3e
        :pswitch_4
        :pswitch_35
        :pswitch_45
        :pswitch_40
        :pswitch_4e
        :pswitch_57
        :pswitch_5f
        :pswitch_68
    .end packed-switch
.end method

.method public getEditorText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2348
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2349
    if-eqz v0, :cond_19

    .line 2350
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2352
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 2353
    if-eqz v0, :cond_19

    .line 2354
    iget-object v0, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2360
    :goto_18
    return-object v0

    :cond_19
    const-string v0, ""

    goto :goto_18
.end method

.method public getInputView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    return-object v0
.end method

.method public getKeyboardBitmapSize()Lcom/swype/android/widget/ViewSize;
    .registers 3

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getScreenOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getKeyboardSize(I)Lcom/swype/android/widget/ViewSize;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->keyboardLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getScreenDefinition()Lcom/swype/android/inputmethod/ScreenDefinition;
    .registers 2

    .prologue
    .line 3282
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    return-object v0
.end method

.method public getScreenDimension()[I
    .registers 4

    .prologue
    .line 3107
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenWidth()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenHeight()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public getScreenOrientation()I
    .registers 2

    .prologue
    .line 3167
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getSelectedTextRegion()[I
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 2403
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2404
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2f

    .line 2405
    new-instance v5, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v5}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2407
    .local v5, request:Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-interface {v2, v5, v9}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 2408
    .local v0, eText:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_2f

    .line 2409
    iget v7, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v6, v7, v8

    .line 2410
    .local v6, start:I
    iget v7, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget v8, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    add-int v1, v7, v8

    .line 2411
    .local v1, end:I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2412
    .local v4, real_start:I
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 2417
    .local v3, real_end:I
    const/4 v7, 0x2

    new-array v7, v7, [I

    aput v4, v7, v9

    const/4 v8, 0x1

    aput v3, v7, v8

    .line 2420
    .end local v0           #eText:Landroid/view/inputmethod/ExtractedText;
    .end local v1           #end:I
    .end local v3           #real_end:I
    .end local v4           #real_start:I
    .end local v5           #request:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #start:I
    :goto_2e
    return-object v7

    :cond_2f
    const/4 v7, 0x0

    goto :goto_2e
.end method

.method public haltDrawing(Z)V
    .registers 3
    .parameter "isDrawingHalted"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_9

    .line 1007
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0, p1}, Lcom/swype/android/widget/InputWindow;->haltDrawing(Z)V

    .line 1009
    :cond_9
    return-void
.end method

.method protected handleMessage(Landroid/os/Handler;Landroid/os/Message;)V
    .registers 15
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0xfa

    const/4 v6, 0x4

    const/4 v4, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 668
    iget v1, p2, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_30a

    .line 1002
    :cond_b
    :goto_b
    return-void

    .line 670
    :pswitch_c
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    .line 671
    aget v1, v1, v8

    int-to-char v1, v1

    .line 672
    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendSingleChar(C)Z

    goto :goto_b

    .line 676
    :pswitch_17
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendInputStr(Ljava/lang/String;)Z

    goto :goto_b

    .line 679
    :pswitch_1f
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    .line 680
    aget v2, v1, v8

    .line 681
    aget v3, v1, v9

    if-ne v3, v9, :cond_43

    move v3, v9

    .line 682
    :goto_2a
    const/4 v4, 0x2

    aget v4, v1, v4

    if-ne v4, v9, :cond_45

    move v4, v9

    .line 683
    :goto_30
    const/4 v5, 0x3

    aget v5, v1, v5

    if-ne v5, v9, :cond_47

    move v5, v9

    .line 684
    :goto_36
    aget v6, v1, v6

    if-ne v6, v9, :cond_49

    move v6, v9

    .line 685
    :goto_3b
    const/4 v7, 0x5

    aget v7, v1, v7

    move-object v1, p0

    .line 686
    invoke-direct/range {v1 .. v7}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendInputVKC(IZZZZI)V

    goto :goto_b

    :cond_43
    move v3, v8

    .line 681
    goto :goto_2a

    :cond_45
    move v4, v8

    .line 682
    goto :goto_30

    :cond_47
    move v5, v8

    .line 683
    goto :goto_36

    :cond_49
    move v6, v8

    .line 684
    goto :goto_3b

    .line 690
    :pswitch_4b
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isKeyboardViewActive()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 691
    iget v1, p2, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->showChoiceWindow(I)V

    goto :goto_b

    .line 696
    :pswitch_57
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->hideChoiceWindow()V

    goto :goto_b

    .line 700
    :pswitch_5b
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 701
    invoke-virtual {p0, v8}, Lcom/swype/android/inputmethod/SwypeInputMethod;->requestHideSelf(I)V

    .line 702
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/swype/android/settings/SwypeSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 703
    const-string v2, "launched_by_ime"

    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 704
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 705
    invoke-virtual {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    .line 710
    :pswitch_78
    invoke-virtual {p0, v8}, Lcom/swype/android/inputmethod/SwypeInputMethod;->requestHideSelf(I)V

    .line 711
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/swype/android/settings/SwypeInputMethodSettingsLanguages;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 712
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 713
    invoke-virtual {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->startActivity(Landroid/content/Intent;)V

    goto :goto_b

    .line 717
    :pswitch_8b
    new-instance v1, Lcom/swype/android/settings/LanguageChoiceList;

    invoke-direct {v1}, Lcom/swype/android/settings/LanguageChoiceList;-><init>()V

    .line 718
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/SwypeDialog;->createDialog(Landroid/content/Context;)V

    .line 719
    invoke-virtual {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->showDialog(Lcom/swype/android/inputmethod/SwypeDialog;)V

    goto/16 :goto_b

    .line 724
    :pswitch_9a
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->launchFullHelp()V

    goto/16 :goto_b

    .line 734
    :pswitch_9f
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v1}, Lcom/swype/android/widget/InputWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_b4

    .line 735
    :cond_ab
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    .line 737
    :cond_b4
    invoke-virtual {p0, v8}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCandidatesViewShown(Z)V

    .line 738
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 739
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->showTipDialog(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 744
    :pswitch_c5
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [I

    .line 745
    aget v2, v1, v8

    .line 746
    aget v1, v1, v9

    .line 747
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 748
    if-eqz v3, :cond_b

    if-ltz v2, :cond_b

    add-int v4, v2, v1

    if-ltz v4, :cond_b

    .line 750
    add-int/2addr v1, v2

    invoke-static {v3, v2, v1}, Lcom/swype/android/inputmethod/InputConnectionAdaptor;->setSelection(Landroid/view/inputmethod/InputConnection;II)Z

    goto/16 :goto_b

    .line 755
    :pswitch_df
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->handleControlChar(I)V

    goto/16 :goto_b

    .line 759
    :pswitch_ec
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->showUserQuery([Ljava/lang/String;)V

    goto/16 :goto_b

    .line 763
    :pswitch_f5
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 764
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v2, :cond_105

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v2}, Lcom/swype/android/widget/InputWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_10e

    .line 765
    :cond_105
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    .line 768
    :cond_10e
    aget-object v2, v1, v8

    aget-object v1, v1, v9

    invoke-direct {p0, v2, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->doShowMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 772
    :pswitch_117
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 773
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    .line 774
    aget-object v2, v1, v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 775
    aget-object v1, v1, v8

    invoke-direct {p0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->doShowTipNotify(Ljava/lang/String;I)V

    goto/16 :goto_b

    .line 777
    :cond_12e
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_b

    .line 782
    :pswitch_137
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->doPlayBeep()V

    goto/16 :goto_b

    .line 786
    :pswitch_13c
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isKeyboardViewActive()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 787
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->doPerformHapticFeedback()V

    goto/16 :goto_b

    .line 792
    :pswitch_147
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isKeyboardViewActive()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 793
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->doPlayKeyTapSound(I)V

    goto/16 :goto_b

    .line 797
    :pswitch_15a
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->showSelf()V

    goto/16 :goto_b

    .line 801
    :pswitch_15f
    invoke-virtual {p0, v8}, Lcom/swype/android/inputmethod/SwypeInputMethod;->requestHideSelf(I)V

    goto/16 :goto_b

    .line 804
    :pswitch_164
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    if-eqz v1, :cond_b

    .line 805
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->checkLicense()V

    goto/16 :goto_b

    .line 809
    :pswitch_16f
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->launchVoiceDictation()V

    goto/16 :goto_b

    .line 813
    :pswitch_174
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateInputViewShown()V

    .line 814
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 815
    if-eqz v1, :cond_b

    .line 817
    invoke-interface {v1, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 818
    if-eqz v1, :cond_198

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_198

    invoke-interface {v1, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_198

    .line 820
    const-string v1, " "

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendInputStr(Ljava/lang/String;)Z

    .line 822
    :cond_198
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 823
    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendInputStr(Ljava/lang/String;)Z

    goto/16 :goto_b

    .line 829
    :pswitch_1a1
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isKeyboardViewActive()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 830
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->resizeCandidateView()V

    .line 831
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateLanguageIMEConversionArea()V

    goto/16 :goto_b

    .line 836
    :pswitch_1af
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->secondaryInit()V

    goto/16 :goto_b

    .line 839
    :pswitch_1b4
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    if-eqz v1, :cond_b

    .line 840
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    iget-object p0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/swype/android/oem/OemAction;->onChangeInputLanguage(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 845
    :pswitch_1c3
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 847
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/ScreenDefinition;->getDisplayNumber()I

    move-result v1

    if-eq v2, v1, :cond_b

    .line 848
    iput-boolean v9, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->keyboardResizing:Z

    .line 849
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/ScreenDefinition;->setDisplayNumber(I)V

    .line 852
    invoke-virtual {p0, v9}, Lcom/swype/android/inputmethod/SwypeInputMethod;->haltDrawing(Z)V

    .line 853
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v1, v6}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setVisibility(I)V

    .line 858
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v1, v3, :cond_307

    .line 861
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 862
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 863
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 864
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v3, :cond_20c

    .line 865
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v3}, Lcom/swype/android/widget/InputWindow;->hasMovableWings()Z

    move-result v3

    iput-boolean v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hasWings:Z

    .line 866
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v3}, Lcom/swype/android/widget/InputWindow;->hasMovableWingsDyn()Z

    move-result v3

    iput-boolean v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hasWingsDyn:Z

    .line 890
    :cond_20c
    sget-boolean v3, Lcom/swype/android/inputmethod/SwypeInputMethod;->isToggled:Z

    if-eqz v3, :cond_213

    if-eq v1, v4, :cond_213

    move v1, v4

    .line 893
    :cond_213
    sput-boolean v8, Lcom/swype/android/inputmethod/SwypeInputMethod;->isToggled:Z

    .line 895
    :goto_215
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v3, v2, v1}, Lcom/swype/android/jni/SwypeCore;->setActiveDisplay(II)V

    goto/16 :goto_b

    .line 901
    :pswitch_21c
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v1, :cond_b

    .line 902
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v1}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getChoiceView()Lcom/swype/android/widget/HorizontalChoiceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swype/android/widget/HorizontalChoiceView;->isLocked()Z

    move-result v1

    .line 903
    if-nez v1, :cond_238

    .line 904
    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    const/16 v1, 0x12

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_b

    .line 908
    :cond_238
    invoke-virtual {p0, v8}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCandidatesViewShown(Z)V

    .line 909
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCvInvisibleVal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setVisibility(I)V

    goto/16 :goto_b

    .line 915
    :pswitch_246
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->performSingleTap()V

    goto/16 :goto_b

    .line 919
    :pswitch_24b
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->performDoubleTap()V

    goto/16 :goto_b

    .line 923
    :pswitch_250
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SpellingTextManager;->getTappedSegmentIndex()I

    move-result v1

    .line 924
    if-ltz v1, :cond_b

    .line 925
    iput v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->cursorPosition:I

    .line 926
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/SpellingTextManager;->clearTappedSegmentIndex()V

    .line 928
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v2, v1}, Lcom/swype/android/jni/SwypeCore;->onConversionSpellingEditTap(I)V

    goto/16 :goto_b

    .line 935
    :pswitch_266
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCvInvisibleVal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setVisibility(I)V

    .line 936
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->resizeCandidateView()V

    .line 937
    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hasCandidates:Z

    if-eqz v1, :cond_b

    .line 940
    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHwclVisibleBeforeMove:Z

    if-eqz v1, :cond_281

    .line 941
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v1, v8}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setVisibility(I)V

    goto/16 :goto_b

    .line 943
    :cond_281
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v1, v6}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setVisibility(I)V

    goto/16 :goto_b

    .line 948
    :pswitch_288
    iput-boolean v8, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHelpShowing:Z

    goto/16 :goto_b

    .line 952
    :pswitch_28c
    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->configKeyboardIsMovable:Z

    if-eqz v1, :cond_2a4

    .line 953
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->blackListManager:Lcom/swype/android/inputmethod/BlackListManager;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentApp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/swype/android/inputmethod/BlackListManager;->allowTransparentWings(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/swype/android/widget/InputWindow;->setDisplayWingTransparent(Z)V

    .line 954
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v1}, Lcom/swype/android/widget/InputWindow;->createNewCanvas()V

    .line 956
    :cond_2a4
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->resizeInputView()V

    goto/16 :goto_b

    .line 960
    :pswitch_2a9
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->editorShowsCompletions()Z

    move-result v1

    .line 962
    if-eqz v1, :cond_2b3

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->completionInfo:[Landroid/view/inputmethod/CompletionInfo;

    if-nez v1, :cond_b

    .line 963
    :cond_2b3
    invoke-virtual {p0, v8}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCandidatesViewShown(Z)V

    goto/16 :goto_b

    .line 968
    :pswitch_2b8
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->unRegisterAirplaneMode()V

    .line 970
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 971
    new-instance v2, Lcom/swype/android/inputmethod/SwypeInputMethod$1;

    invoke-direct {v2, p0}, Lcom/swype/android/inputmethod/SwypeInputMethod$1;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    iput-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->airplaneModeListener:Landroid/content/BroadcastReceiver;

    .line 982
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->airplaneModeListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_b

    .line 987
    :pswitch_2d0
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isKeyboardViewActive()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 988
    iget-object v1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [I

    move-object v7, v0

    .line 989
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    aget v2, v7, v8

    aget v3, v7, v9

    const/4 v4, 0x2

    aget v4, v7, v4

    const/4 v5, 0x3

    aget v5, v7, v5

    aget v6, v7, v6

    const/4 v8, 0x5

    aget v7, v7, v8

    invoke-virtual/range {v1 .. v7}, Lcom/swype/android/widget/InputWindow;->onKeyFromCore(IIIIII)V

    goto/16 :goto_b

    .line 995
    :pswitch_2f6
    iget v1, p2, Landroid/os/Message;->arg1:I

    iput v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBarVisibility:I

    .line 996
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBar:Lcom/swype/android/widget/NavigationBar;

    if-eqz v1, :cond_b

    .line 997
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBar:Lcom/swype/android/widget/NavigationBar;

    iget v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->navBarVisibility:I

    invoke-virtual {v1, v2}, Lcom/swype/android/widget/NavigationBar;->setVisibility(I)V

    goto/16 :goto_b

    :cond_307
    move v1, v4

    goto/16 :goto_215

    .line 668
    :pswitch_data_30a
    .packed-switch 0x0
        :pswitch_c
        :pswitch_17
        :pswitch_1f
        :pswitch_4b
        :pswitch_57
        :pswitch_5b
        :pswitch_9a
        :pswitch_9f
        :pswitch_c5
        :pswitch_df
        :pswitch_ec
        :pswitch_f5
        :pswitch_137
        :pswitch_8b
        :pswitch_147
        :pswitch_15a
        :pswitch_15f
        :pswitch_164
        :pswitch_1a1
        :pswitch_1af
        :pswitch_174
        :pswitch_1b4
        :pswitch_117
        :pswitch_1c3
        :pswitch_16f
        :pswitch_21c
        :pswitch_246
        :pswitch_24b
        :pswitch_78
        :pswitch_250
        :pswitch_28c
        :pswitch_266
        :pswitch_2a9
        :pswitch_2b8
        :pswitch_2d0
        :pswitch_288
        :pswitch_2f6
        :pswitch_13c
    .end packed-switch
.end method

.method public hasMaximumSpellingSegmentReached()Z
    .registers 2

    .prologue
    .line 5316
    iget-byte v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-eqz v0, :cond_9

    .line 5317
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isMaxSpellingReached()Z

    move-result v0

    .line 5320
    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public hideCandidateViewIfMoveable(Z)V
    .registers 5
    .parameter

    .prologue
    const/4 v2, 0x4

    .line 3307
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->configKeyboardIsMovable:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v0, :cond_26

    .line 3308
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_27

    .line 3309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHwclVisibleBeforeMove:Z

    .line 3310
    if-eqz p1, :cond_21

    .line 3311
    const/high16 v0, 0x7f04

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3312
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v1, v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3315
    :cond_21
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0, v2}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setVisibility(I)V

    .line 3320
    :cond_26
    :goto_26
    return-void

    .line 3317
    :cond_27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHwclVisibleBeforeMove:Z

    goto :goto_26
.end method

.method public hideNavigationBar()V
    .registers 3

    .prologue
    .line 5627
    const-string v0, "Swype"

    const-string v1, "hideNavigationBar()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5630
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateNavigationBarVisiblity(I)V

    .line 5631
    return-void
.end method

.method public isHelpDialogShown()Z
    .registers 2

    .prologue
    .line 3202
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHelpShowing:Z

    return v0
.end method

.method protected isKeyboardShown()Z
    .registers 2

    .prologue
    .line 5557
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getInputView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getInputView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_12

    .line 5558
    :cond_10
    const/4 v0, 0x0

    .line 5561
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public isKeyboardViewActive()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 5659
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    if-eqz v0, :cond_11

    .line 5660
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceManager;->isViewShowing()Z

    move-result v0

    if-nez v0, :cond_f

    move v0, v1

    .line 5662
    :goto_e
    return v0

    .line 5660
    :cond_f
    const/4 v0, 0x0

    goto :goto_e

    :cond_11
    move v0, v1

    .line 5662
    goto :goto_e
.end method

.method public isReturnKeyUsedAsEmoticon()Z
    .registers 3

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-byte v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    .line 2744
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 2747
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public isReturnKeyUsedAsHideKeyboard()Z
    .registers 3

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hideKeyboardPackages:Ljava/util/List;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public isShowingChoiceWindow()Z
    .registers 2

    .prologue
    .line 3116
    const/4 v0, 0x1

    return v0
.end method

.method public isShowingHWCL()Z
    .registers 2

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 3125
    const/4 v0, 0x1

    .line 3128
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isShown()Z
    .registers 2

    .prologue
    .line 2634
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isImeShowing:Z

    return v0
.end method

.method public isVoiceDictationAvailable()Z
    .registers 2

    .prologue
    .line 3232
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    if-eqz v0, :cond_b

    .line 3233
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceManager;->isAvailable()Z

    move-result v0

    .line 3235
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public keyboardMoved()V
    .registers 5

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3298
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3300
    return-void
.end method

.method protected launchFullHelp()V
    .registers 4

    .prologue
    .line 5531
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/swype/android/settings/HelpActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5532
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5533
    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->startActivity(Landroid/content/Intent;)V

    .line 5534
    return-void
.end method

.method public launchVideo()V
    .registers 1

    .prologue
    .line 3229
    return-void
.end method

.method public launchVoiceDictation()V
    .registers 2

    .prologue
    .line 3239
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_9

    .line 3240
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/InputWindow;->cancelLongPress()V

    .line 3244
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->hideCandidateViewIfMoveable(Z)V

    .line 3248
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    if-eqz v0, :cond_16

    .line 3249
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->cancelCurrentInputGesture()V

    .line 3251
    :cond_16
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    if-eqz v0, :cond_1f

    .line 3252
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceManager;->startListening()V

    .line 3254
    :cond_1f
    return-void
.end method

.method public onActivateConversionIME(B)V
    .registers 4
    .parameter

    .prologue
    .line 5170
    iput-byte p1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    .line 5171
    iget-byte v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-eqz v0, :cond_9

    .line 5173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isInEnglishInputMode:Z

    .line 5175
    :cond_9
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->createCandidateView()V

    .line 5176
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mLanguageIMEActivator:Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;

    invoke-virtual {v0, p1}, Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;->setLanguageType(B)V

    .line 5177
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mLanguageIMEActivator:Lcom/swype/android/inputmethod/SwypeInputMethod$LanguageIMEActivation;

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 5178
    return-void
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1792
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->recentLanguageChange()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1793
    const-string v0, "com.swype.android.inputmethod/cmd_doubletap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1794
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputStarted()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->cursorPosition:I

    if-ltz v0, :cond_2a

    .line 1799
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->performSingleTap()V

    .line 1800
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->performDoubleTap()V

    .line 1810
    :cond_2a
    :goto_2a
    const-string v0, "com.swype.android.inputmethod.debug/show_key_bounds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1811
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const-string v1, "com.swype.android.inputmethod.debug/show_key_bounds"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->setDebugShowKeyBoundaries(Z)V

    .line 1813
    :cond_3e
    return-void

    .line 1802
    :cond_3f
    const-string v0, "com.swype.android.inputmethod/cmd_tap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1803
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputStarted()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->cursorPosition:I

    if-ltz v0, :cond_2a

    .line 1804
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->performSingleTap()V

    goto :goto_2a
.end method

.method public onBeginBatchEdit()V
    .registers 2

    .prologue
    .line 2534
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2535
    if-eqz v0, :cond_9

    .line 2536
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2538
    :cond_9
    return-void
.end method

.method protected onCallStateChanged(ILjava/lang/String;)V
    .registers 4
    .parameter "state"
    .parameter "number"

    .prologue
    .line 632
    iput p1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->callState:I

    .line 633
    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 639
    :cond_8
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->dismissActiveDialog()V

    .line 641
    :cond_b
    return-void
.end method

.method public onChoiceWindowDrawBitmap(Ljava/lang/String;II)V
    .registers 5
    .parameter "bitmapName"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3015
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    if-eqz v0, :cond_9

    .line 3016
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/swype/android/widget/ChoiceWindow;->onChoiceWindowDrawBitmap(Ljava/lang/String;II)V

    .line 3018
    :cond_9
    return-void
.end method

.method public onChoiceWindowDrawBitmapTiledX(Ljava/lang/String;III)V
    .registers 6
    .parameter "bitmapName"
    .parameter "x"
    .parameter "y"
    .parameter "repeat"

    .prologue
    .line 3028
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    if-eqz v0, :cond_9

    .line 3029
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/swype/android/widget/ChoiceWindow;->onChoiceWindowDrawBitmapTiledX(Ljava/lang/String;III)V

    .line 3031
    :cond_9
    return-void
.end method

.method public onChoiceWindowDrawPolygon(I[S)V
    .registers 4
    .parameter "color"
    .parameter "points"

    .prologue
    .line 3039
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    if-eqz v0, :cond_9

    .line 3040
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v0, p1, p2}, Lcom/swype/android/widget/ChoiceWindow;->onChoiceWindowDrawPolygon(I[S)V

    .line 3042
    :cond_9
    return-void
.end method

.method public onChoiceWindowDrawText(ZLjava/lang/String;IIIIIII)V
    .registers 20
    .parameter "isHilited"
    .parameter "text"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "color"
    .parameter "textStyle"
    .parameter "alignment"

    .prologue
    .line 3003
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    if-eqz v0, :cond_16

    .line 3004
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/swype/android/widget/ChoiceWindow;->onChoiceWindowDrawText(ZLjava/lang/String;IIIIIII)V

    .line 3006
    :cond_16
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 11
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1196
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1197
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isFullscreenMode()Z

    move-result v0

    .line 1199
    if-nez v0, :cond_56

    .line 1200
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->configKeyboardIsMovable:Z

    if-eqz v0, :cond_b1

    .line 1201
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getKeyboardBitmapSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v0

    .line 1202
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v1, :cond_56

    if-eqz v0, :cond_56

    .line 1204
    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v2}, Lcom/swype/android/widget/InputWindow;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_3d

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->blackListManager:Lcom/swype/android/inputmethod/BlackListManager;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/BlackListManager;->doUseInsets(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    invoke-virtual {v1}, Lcom/swype/android/voice/VoiceManager;->isViewShowing()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 1205
    :cond_3d
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v0, :cond_57

    .line 1206
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getHeight()I

    move-result v0

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 1207
    iput v7, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 1208
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_56

    .line 1210
    const/4 v0, 0x0

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1241
    :cond_56
    :goto_56
    return-void

    .line 1214
    :cond_57
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    goto :goto_56

    .line 1219
    :cond_5c
    new-array v1, v8, [I

    .line 1220
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v2, v1}, Lcom/swype/android/widget/InputWindow;->getLocationInWindow([I)V

    .line 1221
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v3}, Lcom/swype/android/widget/InputWindow;->getKeyboardOffsetX()I

    move-result v3

    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v4}, Lcom/swype/android/widget/InputWindow;->getWingWidth()I

    move-result v4

    sub-int/2addr v3, v4

    aget v4, v1, v7

    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v6}, Lcom/swype/android/widget/InputWindow;->getKeyboardOffsetX()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v6}, Lcom/swype/android/widget/InputWindow;->getWingWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Lcom/swype/android/widget/ViewSize;->getHeight()I

    move-result v0

    aget v1, v1, v7

    add-int/2addr v0, v1

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1226
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a7

    .line 1227
    new-array v0, v8, [I

    .line 1228
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v1, v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getLocationInWindow([I)V

    .line 1229
    aget v0, v0, v7

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 1231
    :cond_a7
    invoke-static {p1, v2}, Lcom/swype/android/compat/TouchableRegionSetter;->setTouchableRegion(Landroid/inputmethodservice/InputMethodService$Insets;Landroid/graphics/Rect;)Z

    .line 1232
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    goto :goto_56

    .line 1236
    :cond_b1
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_56
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1138
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mCurrConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_51

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v3, :cond_51

    .line 1141
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    .line 1142
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->getMessageLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1143
    if-eqz v0, :cond_4b

    const-string v0, "Chinese"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "English"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    const-string v0, "Spanish"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1145
    const-string v0, "El idioma de introduccion se cambiara a ingles cuando abra el teclado QWERTY."

    invoke-direct {p0, v0, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod;->doShowTipNotify(Ljava/lang/String;I)V

    .line 1151
    :cond_4b
    :goto_4b
    invoke-virtual {p0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCandidatesViewShown(Z)V

    .line 1156
    invoke-virtual {p0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->requestHideSelf(I)V

    .line 1158
    :cond_51
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mCurrConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1179
    :cond_59
    :goto_59
    return-void

    .line 1148
    :cond_5a
    const-string v0, "Input language will change to English when hardware QWERTY keyboard is opened."

    invoke-direct {p0, v0, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod;->doShowTipNotify(Ljava/lang/String;I)V

    goto :goto_4b

    .line 1162
    :cond_60
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    if-nez v0, :cond_86

    .line 1163
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v3, :cond_84

    move v1, v3

    :goto_71
    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->setHardwareKeyboard(Z)V

    .line 1172
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mCurrConfig:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 1173
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1176
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isChangingOrientation:Z

    if-nez v0, :cond_59

    .line 1177
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->dismissActiveDialog()V

    goto :goto_59

    :cond_84
    move v1, v2

    .line 1163
    goto :goto_71

    .line 1167
    :cond_86
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1168
    if-eqz v0, :cond_74

    .line 1169
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_74
.end method

.method public onControlChar(C)V
    .registers 5
    .parameter

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2338
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2339
    return-void
.end method

.method public onCreate()V
    .registers 8

    .prologue
    const/16 v6, 0x57

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1030
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 1031
    invoke-static {p0, v4}, Lcom/swype/android/inputmethod/ScreenDefinition;->getCurrentScreenDefinition(Landroid/content/Context;I)Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    .line 1034
    sput-boolean v5, Lcom/swype/android/inputmethod/SwypeInputMethod;->isImeCreatedFirstTime:Z

    .line 1036
    new-instance v0, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-direct {v0, p0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    .line 1037
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/swype/android/inputmethod/SwypeApplication;

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    .line 1038
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->setHandler(Landroid/os/Handler;)V

    .line 1040
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    .line 1041
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p0}, Lcom/swype/android/jni/SwypeCore;->registerAppInterface(Lcom/swype/android/jni/SwypeCore$AppInterfaceCallback;)V

    .line 1042
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p0}, Lcom/swype/android/jni/SwypeCore;->registerPropertiesDialog(Lcom/swype/android/jni/SwypeCore$PropertiesDialogCallback;)V

    .line 1043
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p0}, Lcom/swype/android/jni/SwypeCore;->registerHelpDialog(Lcom/swype/android/jni/SwypeCore$HelpDialogCallback;)V

    .line 1044
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p0}, Lcom/swype/android/jni/SwypeCore;->registerInputWindow(Lcom/swype/android/jni/SwypeCore$InputWindowCallback;)V

    .line 1045
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p0}, Lcom/swype/android/jni/SwypeCore;->registerIMEConversionCallback(Lcom/swype/android/jni/SwypeCore$IMEConversionCallback;)V

    .line 1048
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/ScreenDefinition;->getOrientation()I

    move-result v1

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/ScreenDefinition;->getType()Lcom/swype/android/inputmethod/ScreenType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/swype/android/inputmethod/ScreenType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/jni/SwypeCore;->onCreate(ILjava/lang/String;)V

    .line 1049
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->configureFontFakeBoldOption()V

    .line 1051
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0, p0}, Lcom/swype/android/inputmethod/SwypeApplication;->onInputMethodCreate(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    .line 1053
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, v6}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->configKeyboardIsMovable:Z

    .line 1056
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingInt(I)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mDoubleTapThreshold:I

    .line 1060
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->getActiveDisplayNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/ScreenDefinition;->setDisplayNumber(I)V

    .line 1061
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->createChoiceWindow()V

    .line 1063
    sput-boolean v5, Lcom/swype/android/inputmethod/SwypeInputMethod;->isSelected:Z

    .line 1065
    iput-boolean v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHelpShowing:Z

    .line 1066
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSetting(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/swype/android/oem/OemActionFactory;->create(Ljava/lang/String;Landroid/content/Context;)Lcom/swype/android/oem/OemAction;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    .line 1068
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    sput-boolean v0, Lcom/swype/android/inputmethod/ConfigSetting;->MULTI_TOUCH_SUPPORT:Z

    .line 1070
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v5}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    if-nez v0, :cond_180

    move v0, v5

    :goto_af
    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHWCLOff:Z

    .line 1071
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v4}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHWCLAutoHideEnabled:Z

    .line 1073
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1, v4}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, v6, v4}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    if-nez v0, :cond_183

    :cond_cd
    move v0, v5

    :goto_ce
    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isFullScreenModeEnabled:Z

    .line 1077
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSetting(I)Ljava/lang/String;

    move-result-object v0

    .line 1078
    const-string v1, "vlingo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_186

    .line 1079
    sput v5, Lcom/swype/android/inputmethod/ConfigSetting;->VOICE_DICTATION_PROVIDER:I

    .line 1087
    :goto_e2
    invoke-static {p0}, Lcom/swype/android/voice/VoiceManager;->createVoiceManager(Lcom/swype/android/inputmethod/SwypeInputMethod;)Lcom/swype/android/voice/VoiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    .line 1090
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1092
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->landscape_popup_adjustment:I

    .line 1097
    :try_start_104
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x66

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/jni/SwypeCore;->getSetting(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_111
    .catch Ljava/lang/NumberFormatException; {:try_start_104 .. :try_end_111} :catch_196

    move-result v0

    .line 1103
    :goto_112
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->portrait_popup_adjustment:I

    .line 1104
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->landscape_popup_adjustment_no_fullscreen:I

    .line 1106
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mCurrConfig:Landroid/content/res/Configuration;

    .line 1108
    new-instance v0, Lcom/swype/android/inputmethod/BlackListManager;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-direct {v0, v1}, Lcom/swype/android/inputmethod/BlackListManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->blackListManager:Lcom/swype/android/inputmethod/BlackListManager;

    .line 1111
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    if-eqz v0, :cond_19a

    .line 1113
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    :cond_150
    move-object v1, v0

    move v0, v4

    .line 1116
    :goto_152
    invoke-virtual {v1, v0}, Lcom/swype/android/jni/SwypeCore;->setHardwareKeyboard(Z)V

    .line 1119
    const-string v0, "Swype"

    const-string v1, "Swype initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x69

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/jni/SwypeCore;->getSetting(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1124
    array-length v1, v0

    move v2, v4

    :goto_16e
    if-ge v2, v1, :cond_1a5

    aget-object v3, v0, v2

    .line 1125
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_17d

    .line 1126
    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hideKeyboardPackages:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    :cond_17d
    add-int/lit8 v2, v2, 0x1

    goto :goto_16e

    :cond_180
    move v0, v4

    .line 1070
    goto/16 :goto_af

    :cond_183
    move v0, v4

    .line 1073
    goto/16 :goto_ce

    .line 1080
    :cond_186
    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_192

    .line 1081
    sput v3, Lcom/swype/android/inputmethod/ConfigSetting;->VOICE_DICTATION_PROVIDER:I

    goto/16 :goto_e2

    .line 1083
    :cond_192
    sput v4, Lcom/swype/android/inputmethod/ConfigSetting;->VOICE_DICTATION_PROVIDER:I

    goto/16 :goto_e2

    .line 1100
    :catch_196
    move-exception v0

    move v0, v4

    goto/16 :goto_112

    .line 1116
    :cond_19a
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mCurrConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v5, :cond_150

    move-object v1, v0

    move v0, v5

    goto :goto_152

    .line 1129
    :cond_1a5
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .registers 3

    .prologue
    .line 1634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    .line 1635
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->createCandidateView()V

    .line 1636
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHWCLOff:Z

    if-nez v0, :cond_17

    .line 1637
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1638
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1640
    :cond_17
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1555
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, v2}, Lcom/swype/android/jni/SwypeCore;->registerInputWindow(Lcom/swype/android/jni/SwypeCore$InputWindowCallback;)V

    .line 1556
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->keyboardLayout:Landroid/widget/LinearLayout;

    .line 1558
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->keyboardLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_68

    .line 1559
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->keyboardLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0d0003

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/swype/android/widget/InputWindow;

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    .line 1560
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p0, v1}, Lcom/swype/android/widget/InputWindow;->inputMethodInit(Lcom/swype/android/inputmethod/SwypeInputMethod;Lcom/swype/android/jni/SwypeCore;)V

    .line 1561
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/InputWindow;->setHapticFeedbackEnabled(Z)V

    .line 1562
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p0}, Lcom/swype/android/jni/SwypeCore;->registerInputWindow(Lcom/swype/android/jni/SwypeCore$InputWindowCallback;)V

    .line 1563
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p0}, Lcom/swype/android/jni/SwypeCore;->registerChoiceWindow(Lcom/swype/android/jni/SwypeCore$ChoiceWindowCallback;)V

    .line 1565
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->createCandidateView()V

    .line 1566
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateLanguageIMESpellingContents()V

    .line 1567
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->refreshKeyboard()V

    .line 1568
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_4f

    .line 1569
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->loadSoundEffects()V

    .line 1571
    :cond_4f
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    if-eqz v0, :cond_58

    .line 1572
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceManager;->onCreateView()V

    .line 1575
    :cond_58
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(IZ)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1576
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->keyboardLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->initNavBar(Landroid/widget/LinearLayout;)V

    .line 1580
    :cond_68
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->keyboardLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onDestroy()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1391
    const-string v0, "Swype"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    sput-boolean v4, Lcom/swype/android/inputmethod/SwypeInputMethod;->isSelected:Z

    .line 1395
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->stop()V

    .line 1399
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->dismissActiveDialog()V

    .line 1400
    iput-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    .line 1402
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onDestroy()V

    .line 1404
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    if-eqz v0, :cond_44

    move v0, v4

    .line 1405
    :goto_23
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 1406
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_38

    .line 1407
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    .line 1405
    :cond_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 1410
    :cond_3b
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1411
    iput-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPool:Landroid/media/SoundPool;

    .line 1412
    iput-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSoundPoolIds:[I

    .line 1416
    :cond_44
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    if-eqz v0, :cond_4d

    .line 1417
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    invoke-virtual {v0}, Lcom/swype/android/oem/OemAction;->onCleanup()V

    .line 1421
    :cond_4d
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->screenStateListener:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_58

    .line 1422
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->screenStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1423
    iput-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->screenStateListener:Landroid/content/BroadcastReceiver;

    .line 1426
    :cond_58
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->unRegisterAirplaneMode()V

    .line 1428
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->touchtoneSettingListener:Landroid/database/ContentObserver;

    if-eqz v0, :cond_68

    .line 1429
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->touchtoneSettingListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->unregisterSettingsObserver(Landroid/database/ContentObserver;)V

    .line 1430
    iput-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->touchtoneSettingListener:Landroid/database/ContentObserver;

    .line 1433
    :cond_68
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hapticSettingListener:Landroid/database/ContentObserver;

    if-eqz v0, :cond_75

    .line 1434
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hapticSettingListener:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeApplication;->unregisterSettingsObserver(Landroid/database/ContentObserver;)V

    .line 1435
    iput-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hapticSettingListener:Landroid/database/ContentObserver;

    .line 1438
    :cond_75
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->phoneState:Lcom/swype/android/inputmethod/SwypeInputMethod$PhoneStateChangeListener;

    if-eqz v0, :cond_84

    .line 1439
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->phoneState:Lcom/swype/android/inputmethod/SwypeInputMethod$PhoneStateChangeListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1440
    iput-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->phoneState:Lcom/swype/android/inputmethod/SwypeInputMethod$PhoneStateChangeListener;

    .line 1443
    :cond_84
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->onInputMethodDestroy()V

    .line 1445
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 1446
    return-void
.end method

.method public onDetectZ1Path()V
    .registers 3

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->removeMessages(I)V

    .line 2556
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 5
    .parameter

    .prologue
    .line 4582
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-nez v0, :cond_5

    .line 4607
    :goto_4
    return-void

    .line 4587
    :cond_5
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->editorShowsCompletions()Z

    move-result v0

    if-nez v0, :cond_f

    .line 4589
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->clearCompletions()V

    goto :goto_4

    .line 4593
    :cond_f
    invoke-direct {p0, p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->fixCompletionInfo([Landroid/view/inputmethod/CompletionInfo;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v0

    .line 4594
    if-eqz v0, :cond_45

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_isSimulateFullscreen:Z

    if-eqz v1, :cond_45

    .line 4595
    :cond_1f
    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->completionInfo:[Landroid/view/inputmethod/CompletionInfo;

    .line 4596
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4597
    const/4 v1, 0x0

    :goto_27
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->completionInfo:[Landroid/view/inputmethod/CompletionInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_3a

    .line 4598
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->completionInfo:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCompletionText(Landroid/view/inputmethod/CompletionInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4597
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 4601
    :cond_3a
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setListOfWords(Ljava/util/List;Ljava/util/List;)V

    .line 4602
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCandidatesViewShown(Z)V

    goto :goto_4

    .line 4605
    :cond_45
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->clearCompletions()V

    goto :goto_4
.end method

.method public onEndBatchEdit()V
    .registers 2

    .prologue
    .line 2544
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2545
    if-eqz v0, :cond_9

    .line 2546
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2548
    :cond_9
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4647
    iput-boolean v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_isSimulateFullscreen:Z

    .line 4648
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isFullScreenModeEnabled:Z

    if-nez v0, :cond_a

    move v0, v3

    .line 4701
    :cond_9
    :goto_9
    return v0

    .line 4651
    :cond_a
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isHoneycomb()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_16
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    const-string v1, "com.diotek.diodict3.phone.samsung.jpn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    move v0, v3

    .line 4652
    goto :goto_9

    .line 4654
    :cond_26
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mCurrConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mCurrConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v4, :cond_41

    .line 4655
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceManager;->isViewShowing()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 4656
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isFullscreenMode()Z

    move-result v0

    goto :goto_9

    .line 4661
    :cond_41
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v0

    .line 4665
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 4666
    if-eqz v1, :cond_9

    .line 4670
    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x1000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6d

    move v1, v4

    .line 4690
    :goto_53
    if-eqz v0, :cond_6f

    if-eqz v1, :cond_6f

    move v2, v4

    :goto_58
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_isSimulateFullscreen:Z

    .line 4691
    iget-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->m_isSimulateFullscreen:Z

    if-eqz v2, :cond_67

    .line 4696
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 4697
    if-eqz v2, :cond_67

    .line 4698
    invoke-interface {v2, v4}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 4701
    :cond_67
    if-eqz v0, :cond_71

    if-nez v1, :cond_71

    move v0, v4

    goto :goto_9

    :cond_6d
    move v1, v3

    .line 4670
    goto :goto_53

    :cond_6f
    move v2, v3

    .line 4690
    goto :goto_58

    :cond_71
    move v0, v3

    .line 4701
    goto :goto_9
.end method

.method public onEvaluateInputViewShown()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4628
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceManager;->isViewShowing()Z

    move-result v0

    if-nez v0, :cond_20

    .line 4629
    :cond_e
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getScreenOrientation()I

    move-result v0

    if-ne v0, v2, :cond_20

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x4f

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v3

    .line 4637
    :goto_1f
    return v0

    .line 4634
    :cond_20
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    move v0, v2

    .line 4635
    goto :goto_1f

    .line 4637
    :cond_2c
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceManager;->isViewShowing()Z

    move-result v0

    if-nez v0, :cond_3e

    :cond_38
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_3e
    move v0, v2

    goto :goto_1f

    :cond_40
    move v0, v3

    goto :goto_1f
.end method

.method public onExtractTextContextMenuItem(I)Z
    .registers 3
    .parameter "id"

    .prologue
    .line 4314
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onExtractTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method public onExtractedSelectionChanged(II)V
    .registers 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 4320
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 4322
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    if-eqz v0, :cond_c

    .line 4323
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    invoke-virtual {v0, p1, p2}, Lcom/swype/android/oem/OemAction;->onExtractedSelectionChanged(II)V

    .line 4325
    :cond_c
    return-void
.end method

.method public onExtractedTextClicked()V
    .registers 7

    .prologue
    .line 4287
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    invoke-virtual {v0}, Lcom/swype/android/oem/OemAction;->handleExtractedTextClicked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4310
    :cond_c
    :goto_c
    return-void

    .line 4292
    :cond_d
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->recentLanguageChange()Z

    move-result v0

    if-nez v0, :cond_c

    .line 4296
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4297
    iget-wide v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->tsLastTapOnExtractedText:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mDoubleTapThreshold:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2c

    .line 4303
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->performDoubleTap()V

    .line 4305
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->tsLastTapOnExtractedText:J

    goto :goto_c

    .line 4307
    :cond_2c
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->performSingleTapDelayed()V

    .line 4308
    iput-wide v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->tsLastTapOnExtractedText:J

    goto :goto_c
.end method

.method public onFinishCandidatesView(Z)V
    .registers 2
    .parameter "finishingInput"

    .prologue
    .line 1780
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    .line 1781
    return-void
.end method

.method public onFinishInput()V
    .registers 3

    .prologue
    .line 2039
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 2040
    const/4 v0, -0x1

    iput v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->cursorPosition:I

    .line 2042
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getTaskRunner()Lcom/swype/android/inputmethod/PeriodicTaskRunner;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/PeriodicTaskRunner;->check(Landroid/content/Context;)V

    .line 2043
    return-void
.end method

.method public onFinishInputView(Z)V
    .registers 3
    .parameter "finishingInput"

    .prologue
    .line 1769
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1770
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1771
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1774
    :cond_14
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->cancelPredictionAndConversion()V

    .line 1775
    return-void
.end method

.method public onHideChoice()V
    .registers 3

    .prologue
    .line 3146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->showingChoice:Z

    .line 3147
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3148
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3149
    return-void
.end method

.method public onHighlight(IIIIII)Z
    .registers 14
    .parameter "level"
    .parameter "key"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 5609
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_11

    .line 5610
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/swype/android/widget/InputWindow;->onHighlight(IIIIII)Z

    move-result v0

    .line 5612
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public onHorizontalViewClicked(Lcom/swype/android/widget/HorizontalChoiceViewContainer;ILjava/lang/CharSequence;)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4902
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->editorShowsCompletions()Z

    move-result v0

    if-nez v0, :cond_18

    iget-byte v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hasCandidates:Z

    if-eqz v0, :cond_18

    .line 4904
    :cond_e
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/swype/android/jni/SwypeCore;->onConversionCandidateSelect(I)V

    .line 4909
    :cond_17
    :goto_17
    return-void

    .line 4906
    :cond_18
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-ne p1, v0, :cond_17

    .line 4907
    invoke-virtual {p0, p2, p3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCompletion(ILjava/lang/CharSequence;)V

    goto :goto_17
.end method

.method public onHorizontalViewLongPressed(Lcom/swype/android/widget/HorizontalChoiceViewContainer;I)Z
    .registers 4
    .parameter "target"
    .parameter "index"

    .prologue
    .line 4920
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->editorShowsCompletions()Z

    move-result v0

    if-nez v0, :cond_15

    iget-byte v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-eqz v0, :cond_15

    .line 4922
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->getSwypeCore()Lcom/swype/android/jni/SwypeCore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/swype/android/jni/SwypeCore;->onConversionCandidateLongPressed(I)V

    .line 4923
    const/4 v0, 0x1

    .line 4925
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public onInitializeInterface()V
    .registers 8

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getDisplayNumber()I

    move-result v0

    invoke-static {p0, v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getCurrentScreenDefinition(Landroid/content/Context;I)Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v0

    .line 1465
    invoke-virtual {v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getType()Lcom/swype/android/inputmethod/ScreenType;

    move-result-object v1

    sget-object v2, Lcom/swype/android/inputmethod/ScreenType;->UNKNOWN:Lcom/swype/android/inputmethod/ScreenType;

    if-ne v1, v2, :cond_37

    .line 1468
    const-string v1, "Swype"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitializeInterface(): unrecognized screen size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; assuming: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :goto_36
    return-void

    .line 1471
    :cond_37
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/ScreenDefinition;->getOrientation()I

    move-result v1

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getOrientation()I

    move-result v2

    if-eq v1, v2, :cond_55

    .line 1472
    iget-wide v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mNextAllowed:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    add-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mNextAllowed:J

    .line 1473
    invoke-static {}, Lcom/swype/android/widget/KeyboardBitmapManager;->clearCache()V

    .line 1475
    :cond_55
    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateOrientation(Lcom/swype/android/inputmethod/ScreenDefinition;)V

    goto :goto_36
.end method

.method public onInputChar(CZI)Z
    .registers 5
    .parameter "ch"
    .parameter "shiftKeyIsDown"
    .parameter "vkc"

    .prologue
    .line 2270
    invoke-direct {p0, p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendSingleChar(C)Z

    move-result v0

    return v0
.end method

.method public onInputString(Ljava/lang/String;)Z
    .registers 3
    .parameter "text"

    .prologue
    .line 2296
    invoke-direct {p0, p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendInputStr(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onInputVKC(IZZZZI)V
    .registers 7
    .parameter "vkc"
    .parameter "shiftKeyIsDown"
    .parameter "controlKeyIsDown"
    .parameter "shiftModeIsOn"
    .parameter "controlModeIsOn"
    .parameter "sendUpDown"

    .prologue
    .line 2315
    invoke-direct/range {p0 .. p6}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendInputVKC(IZZZZI)V

    .line 2327
    return-void
.end method

.method public onKBBeginDrawBuf(I)V
    .registers 3
    .parameter "imageLayer"

    .prologue
    .line 2837
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_9

    .line 2838
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0, p1}, Lcom/swype/android/widget/InputWindow;->onKBBeginDrawBuf(I)V

    .line 2840
    :cond_9
    return-void
.end method

.method public onKBDrawBackground(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 2966
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_9

    .line 2967
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0, p1}, Lcom/swype/android/widget/InputWindow;->onKBDrawBackground(I)V

    .line 2969
    :cond_9
    return-void
.end method

.method public onKBDrawBegin()V
    .registers 2

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_9

    .line 2827
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/InputWindow;->onKBDrawBegin()V

    .line 2829
    :cond_9
    return-void
.end method

.method public onKBDrawBitmap(Ljava/lang/String;Landroid/graphics/Rect;III)V
    .registers 12
    .parameter "bitmapName"
    .parameter "position"
    .parameter "horizontalAlign"
    .parameter "verticalAlign"
    .parameter "scaleType"

    .prologue
    .line 2880
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_e

    .line 2883
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/swype/android/widget/InputWindow;->onKBDrawBitmap(Ljava/lang/String;Landroid/graphics/Rect;III)V

    .line 2886
    :cond_e
    return-void
.end method

.method public onKBDrawHighlight(IIIII)V
    .registers 12
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "hiliteLevel"

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_e

    .line 2934
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/swype/android/widget/InputWindow;->onKBDrawHighlight(IIIII)V

    .line 2937
    :cond_e
    return-void
.end method

.method public onKBDrawKeyboardBitmap(Ljava/lang/String;IIIZ)V
    .registers 12
    .parameter "keyboard"
    .parameter "activeKeyboard"
    .parameter "shiftState"
    .parameter "keyboardType"
    .parameter "isDynamic"

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_e

    .line 2867
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/swype/android/widget/InputWindow;->onKBDrawKeyboardBitmap(Ljava/lang/String;IIIZ)V

    .line 2870
    :cond_e
    return-void
.end method

.method public onKBDrawLine(IIIIII)V
    .registers 14
    .parameter "start_x"
    .parameter "start_y"
    .parameter "end_x"
    .parameter "end_y"
    .parameter "color"
    .parameter "lineWidth"

    .prologue
    .line 2893
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_f

    .line 2894
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/swype/android/widget/InputWindow;->onKBDrawLine(IIIIII)V

    .line 2897
    :cond_f
    return-void
.end method

.method public onKBDrawText(Ljava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/String;)V
    .registers 24
    .parameter "text"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "color"
    .parameter "fontSize"
    .parameter "horizontalAlign"
    .parameter "verticalAlign"
    .parameter "alternativeIcon"
    .parameter "fontName"

    .prologue
    .line 2922
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_1c

    .line 2923
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/swype/android/widget/InputWindow;->onKBDrawText(Ljava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/String;)V

    .line 2926
    :cond_1c
    return-void
.end method

.method public onKBDrawTrace(II[S)V
    .registers 5
    .parameter "color"
    .parameter "lineWidth"
    .parameter "points"

    .prologue
    .line 2911
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_9

    .line 2912
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/swype/android/widget/InputWindow;->onKBDrawTrace(II[S)V

    .line 2914
    :cond_9
    return-void
.end method

.method public onKBFlushDrawingBuf(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2976
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_9

    .line 2977
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/swype/android/widget/InputWindow;->onKBFlushDrawingBuf(IIII)V

    .line 2979
    :cond_9
    return-void
.end method

.method public onKBInvalidate()V
    .registers 2

    .prologue
    .line 2940
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_9

    .line 2941
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/InputWindow;->onKBInvalidate()V

    .line 2943
    :cond_9
    return-void
.end method

.method public onKBInvalidateRect(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "rect"

    .prologue
    .line 2946
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_9

    .line 2947
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0, p1}, Lcom/swype/android/widget/InputWindow;->onKBInvalidateRect(Landroid/graphics/Rect;)V

    .line 2949
    :cond_9
    return-void
.end method

.method public onKBSetClipping(IIII)V
    .registers 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2846
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_9

    .line 2847
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/swype/android/widget/InputWindow;->onKBSetClipping(IIII)V

    .line 2849
    :cond_9
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 4452
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mCurrConfig:Landroid/content/res/Configuration;

    .line 4453
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mCurrConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_20

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mCurrConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_20

    .line 4454
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->cancelPredictionAndConversion()V

    .line 4457
    :cond_20
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_43

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mCurrConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v2, :cond_43

    .line 4460
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    invoke-virtual {v0, p1, p2, p0}, Lcom/swype/android/oem/OemAction;->handleKeyDown(ILandroid/view/KeyEvent;Lcom/swype/android/inputmethod/SwypeInputMethod;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4461
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 4474
    :goto_3d
    return v0

    .line 4465
    :cond_3e
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 4466
    const/4 v0, 0x0

    goto :goto_3d

    .line 4471
    :cond_43
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    invoke-virtual {v0, p1, p2, p0}, Lcom/swype/android/oem/OemAction;->handleKeyDown(ILandroid/view/KeyEvent;Lcom/swype/android/inputmethod/SwypeInputMethod;)Z

    move-result v0

    if-eqz v0, :cond_51

    move v0, v2

    .line 4472
    goto :goto_3d

    .line 4474
    :cond_51
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3d
.end method

.method public onKeyFromCore(IIIIII)Z
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 5599
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0x22

    const/4 v2, 0x6

    new-array v2, v2, [I

    aput p1, v2, v4

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x2

    aput p3, v2, v3

    const/4 v3, 0x3

    aput p4, v2, v3

    const/4 v3, 0x4

    aput p5, v2, v3

    const/4 v3, 0x5

    aput p6, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5600
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5601
    return v4
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4481
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    invoke-virtual {v0, p1, p2, p0}, Lcom/swype/android/oem/OemAction;->handleKeyUp(ILandroid/view/KeyEvent;Lcom/swype/android/inputmethod/SwypeInputMethod;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4482
    const/4 v0, 0x1

    .line 4486
    :goto_d
    return v0

    :cond_e
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_d
.end method

.method public onLanguageChanged()V
    .registers 1

    .prologue
    .line 4272
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->customizeReturnKeyBasedOnAction()V

    .line 4273
    return-void
.end method

.method public onResizeCanvas()V
    .registers 5

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_13

    .line 2954
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2955
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2957
    :cond_13
    return-void
.end method

.method public onSetChoiceWindowBackground(I)V
    .registers 3
    .parameter "color"

    .prologue
    .line 3073
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    if-eqz v0, :cond_9

    .line 3074
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v0, p1}, Lcom/swype/android/widget/ChoiceWindow;->setChoiceWindowBg(I)V

    .line 3076
    :cond_9
    return-void
.end method

.method public onSetChoiceWindowPosition(Landroid/graphics/Rect;)V
    .registers 2
    .parameter "bounds"

    .prologue
    .line 3051
    iput-object p1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceViewRect:Landroid/graphics/Rect;

    .line 3052
    return-void
.end method

.method public onSetComposingRegion(II)Z
    .registers 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 5244
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/swype/android/inputmethod/SpellingTextManager;->setComposingRegion(Landroid/view/inputmethod/InputConnection;II)Z

    move-result v0

    return v0
.end method

.method public onShowChoice(I)V
    .registers 5
    .parameter

    .prologue
    .line 3156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->showingChoice:Z

    .line 3157
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 3158
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3159
    return-void
.end method

.method public onShowInputMethodSettingsLanguagesDialog()V
    .registers 3

    .prologue
    .line 3091
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3092
    return-void
.end method

.method public onShowInputRequested(IZ)Z
    .registers 15
    .parameter
    .parameter

    .prologue
    const-wide/16 v10, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 4759
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mCurrConfig:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v7, :cond_c

    move v0, v9

    .line 4874
    :cond_b
    :goto_b
    return v0

    .line 4768
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v0

    .line 4773
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    if-eqz v1, :cond_c4

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    invoke-virtual {v1, p1, p2}, Lcom/swype/android/oem/OemAction;->handleShowInputRequested(IZ)Z

    move-result v1

    if-eqz v1, :cond_c4

    move v1, v7

    .line 4777
    :goto_1d
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_c7

    move v2, v7

    .line 4785
    :goto_22
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/SwypeApplication;->recentLanguageChange()Z

    move-result v3

    .line 4786
    sget-boolean v4, Lcom/swype/android/inputmethod/SwypeInputMethod;->isImeCreatedFirstTime:Z

    if-eqz v4, :cond_2f

    .line 4789
    sput-boolean v9, Lcom/swype/android/inputmethod/SwypeInputMethod;->isImeCreatedFirstTime:Z

    move v3, v9

    .line 4792
    :cond_2f
    if-nez v1, :cond_b

    if-nez p2, :cond_b

    if-eqz v2, :cond_b

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v2, 0x4a

    invoke-virtual {v1, v2}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez v3, :cond_b

    .line 4795
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 4799
    iget-wide v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mNextAllowed:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_b

    .line 4801
    iget-wide v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mTimeStampLastCallOnTap:J

    cmp-long v3, v3, v10

    if-nez v3, :cond_ca

    .line 4802
    iput-wide v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mTimeStampLastCallOnTap:J

    .line 4803
    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "com.sec.android.app.ve"

    aput-object v4, v3, v9

    invoke-direct {p0, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_135

    move v3, v9

    move v4, v7

    .line 4839
    :goto_61
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "com.android.browser"

    aput-object v6, v5, v9

    invoke-direct {p0, v5}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a6

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getEditorProperty(I)Z

    move-result v5

    if-eqz v5, :cond_a6

    .line 4841
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 4842
    if-eqz v5, :cond_a6

    .line 4843
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 4844
    invoke-interface {v5, v6, v9}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    .line 4845
    if-eqz v5, :cond_a6

    .line 4846
    iget v6, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v7, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 4847
    iget v7, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    iget v8, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 4849
    iget v8, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    if-nez v8, :cond_a6

    if-nez v6, :cond_a6

    iget-object v5, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v7, v5, :cond_a6

    .line 4852
    iput-wide v10, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mTimeStampLastCallOnTap:J

    move v4, v9

    .line 4858
    :cond_a6
    if-nez v3, :cond_b7

    if-eqz v4, :cond_b7

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputStarted()Z

    move-result v3

    if-eqz v3, :cond_b7

    iget-boolean v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isChangingOrientation:Z

    if-nez v3, :cond_b7

    .line 4860
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->performSingleTapDelayed()V

    .line 4869
    :cond_b7
    iget-wide v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mNextAllowed:J

    const-wide/16 v5, 0x1e

    add-long/2addr v1, v5

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mNextAllowed:J

    goto/16 :goto_b

    :cond_c4
    move v1, v9

    .line 4773
    goto/16 :goto_1d

    :cond_c7
    move v2, v9

    .line 4777
    goto/16 :goto_22

    .line 4806
    :cond_ca
    iget-wide v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mTimeStampLastCallOnTap:J

    sub-long v3, v1, v3

    .line 4808
    iget-object v5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v5}, Lcom/swype/android/inputmethod/SwypeApplication;->isHoneycomb()Z

    move-result v5

    if-nez v5, :cond_e0

    iget-object v5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v6, 0x46

    invoke-virtual {v5, v6}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v5

    if-eqz v5, :cond_104

    :cond_e0
    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "com.android.browser"

    aput-object v6, v5, v9

    invoke-direct {p0, v5}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f8

    new-array v5, v7, [Ljava/lang/String;

    const-string v6, "com.android.mms"

    aput-object v6, v5, v9

    invoke-direct {p0, v5}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_104

    :cond_f8
    const-wide/16 v5, 0x3e8

    cmp-long v5, v3, v5

    if-gez v5, :cond_104

    .line 4813
    iput-wide v10, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mTimeStampLastCallOnTap:J

    move v3, v7

    move v4, v9

    .line 4814
    goto/16 :goto_61

    .line 4815
    :cond_104
    iget v5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mDoubleTapThreshold:I

    int-to-long v5, v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_12f

    const-wide/16 v5, 0x2

    cmp-long v3, v3, v5

    if-lez v3, :cond_12f

    .line 4823
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v5, 0x1b

    invoke-virtual {v4, v5}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4824
    iput-wide v10, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mTimeStampLastCallOnTap:J

    .line 4825
    iget-wide v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mNextAllowed:J

    const-wide/16 v5, 0x96

    add-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mNextAllowed:J

    move v3, v9

    move v4, v9

    goto/16 :goto_61

    .line 4829
    :cond_12f
    iput-wide v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mTimeStampLastCallOnTap:J

    move v3, v9

    move v4, v7

    .line 4830
    goto/16 :goto_61

    :cond_135
    move v3, v9

    move v4, v9

    goto/16 :goto_61
.end method

.method public onShowLanguageList()V
    .registers 3

    .prologue
    .line 3083
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3084
    return-void
.end method

.method public onShowPropertiesDialog()V
    .registers 3

    .prologue
    .line 3181
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3182
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1835
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1836
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    .line 1840
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getDisplayNumber()I

    move-result v0

    invoke-static {p0, v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getCurrentScreenDefinition(Landroid/content/Context;I)Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    .line 1843
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    .line 1844
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    .line 1846
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v1}, Lcom/swype/android/inputmethod/SwypeApplication;->isHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_50

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.android.browser"

    aput-object v2, v1, v6

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1850
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mlastSwitchInputField:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xc8

    cmp-long v1, v1, v3

    if-gez v1, :cond_42

    .line 1853
    invoke-direct {p0, p1, p2, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->customizeOnInputModeChange(Landroid/view/inputmethod/EditorInfo;ZLjava/lang/String;)V

    .line 1854
    iput-boolean v7, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mDebounceOnStart:Z

    .line 1975
    :cond_41
    :goto_41
    return-void

    .line 1858
    :cond_42
    invoke-virtual {p0, v6}, Lcom/swype/android/inputmethod/SwypeInputMethod;->onFinishInputView(Z)V

    .line 1859
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->onFinishInput()V

    .line 1860
    iput-boolean v6, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mDebounceOnStart:Z

    .line 1861
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mlastSwitchInputField:J

    .line 1864
    :cond_50
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mTimeStampLastCallOnTap:J

    .line 1865
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    if-eqz v1, :cond_6c

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    :cond_6c
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.google.android.googlequicksearchbox"

    aput-object v2, v1, v6

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1872
    :cond_78
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->dismissActiveDialog()V

    .line 1876
    :cond_7b
    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isChangingOrientation:Z

    if-eqz v1, :cond_89

    if-eqz v0, :cond_89

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    .line 1877
    :cond_89
    invoke-direct {p0, p1, p2, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->customizeOnInputModeChange(Landroid/view/inputmethod/EditorInfo;ZLjava/lang/String;)V

    .line 1880
    :cond_8c
    if-eqz p2, :cond_15b

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.google.android.apps.maps"

    aput-object v1, v0, v6

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15b

    move v0, v7

    .line 1882
    :goto_9b
    if-nez p2, :cond_15e

    .line 1883
    iget v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->applicationId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->applicationId:I

    .line 1915
    :cond_a3
    :goto_a3
    const/4 v1, -0x1

    iput v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->cursorPosition:I

    .line 1920
    if-nez v0, :cond_d6

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_bc

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.music"

    aput-object v1, v0, v6

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d6

    :cond_bc
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1c4

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v6

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c4

    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isChangingOrientation:Z

    if-eqz v0, :cond_1c4

    sget-boolean v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isImeCreatedFirstTime:Z

    if-nez v0, :cond_1c4

    .line 1923
    :cond_d6
    iget-wide v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mNextAllowed:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mNextAllowed:J

    .line 1939
    :cond_e5
    :goto_e5
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->checkLocaleChange()V

    .line 1941
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->checkEditorShowsCompletions()V

    .line 1943
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateLanguageIMEConversionArea()V

    .line 1953
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1fb

    .line 1954
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.motorola.messaging"

    aput-object v1, v0, v6

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f8

    move v0, v7

    .line 1957
    :goto_107
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SpellingTextManager;->enableComposingText(Z)V

    .line 1961
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v0

    .line 1962
    if-eqz v0, :cond_149

    .line 1964
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1965
    const-string v1, "INTENT_KEY_FIRST_TIME_USE"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_149

    .line 1966
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1967
    const-string v1, "INTENT_KEY_FIRST_TIME_USE"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1968
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1969
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->showMessage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1972
    :cond_149
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.google.android.googlequicksearchbox"

    aput-object v1, v0, v6

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_157

    if-nez p2, :cond_41

    .line 1973
    :cond_157
    iput-boolean v6, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isChangingOrientation:Z

    goto/16 :goto_41

    :cond_15b
    move v0, v6

    .line 1880
    goto/16 :goto_9b

    .line 1884
    :cond_15e
    iget-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isChangingOrientation:Z

    if-nez v1, :cond_a3

    .line 1886
    iget-wide v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->timeStampStartInput:J

    .line 1887
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->timeStampStartInput:J

    .line 1889
    iget-wide v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->timeStampStartInput:J

    sub-long v1, v3, v1

    const-wide/16 v3, 0x32

    cmp-long v1, v1, v3

    if-lez v1, :cond_a3

    .line 1895
    if-eqz v0, :cond_1be

    iget v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->cursorPosition:I

    if-ne v1, v7, :cond_1be

    iget v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->pendingDeleteLength:I

    if-ne v1, v7, :cond_1be

    move v1, v7

    .line 1896
    :goto_17f
    if-nez v1, :cond_a3

    .line 1900
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "com.android.settings"

    aput-object v2, v1, v6

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    invoke-static {p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isPasswordBitSet(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v1

    if-eqz v1, :cond_1c0

    move v1, v7

    .line 1902
    :goto_194
    if-nez v1, :cond_1c2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.android.mms"

    aput-object v2, v1, v6

    const-string v2, "com.google.android.apps.plus"

    aput-object v2, v1, v7

    const/4 v2, 0x2

    const-string v3, "com.infraware.polarisoffice"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.sec.chaton"

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1c2

    move v1, v7

    .line 1909
    :goto_1b2
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v2, v1}, Lcom/swype/android/jni/SwypeCore;->finishPendingConversion(Z)V

    .line 1910
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->notifyInsertionPointUpdate()V

    goto/16 :goto_a3

    :cond_1be
    move v1, v6

    .line 1895
    goto :goto_17f

    :cond_1c0
    move v1, v6

    .line 1900
    goto :goto_194

    :cond_1c2
    move v1, v6

    .line 1902
    goto :goto_1b2

    .line 1924
    :cond_1c4
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.android.browser"

    aput-object v1, v0, v6

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 1926
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isChangingOrientation:Z

    if-nez v0, :cond_e5

    .line 1927
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->notifyNewInputSession()V

    goto/16 :goto_e5

    .line 1929
    :cond_1db
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isChangingOrientation:Z

    if-nez v0, :cond_e5

    if-nez p2, :cond_e5

    .line 1930
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->notifyNewInputSession()V

    .line 1931
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHWCLOff:Z

    if-eqz v0, :cond_e5

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v0, :cond_e5

    .line 1933
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0, v5, v5}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setListOfWords(Ljava/util/List;Ljava/util/List;)V

    .line 1934
    invoke-virtual {p0, v6}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCandidatesViewShown(Z)V

    goto/16 :goto_e5

    :cond_1f8
    move v0, v6

    .line 1954
    goto/16 :goto_107

    :cond_1fb
    move v0, v7

    goto/16 :goto_107
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2009
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mDebounceOnStart:Z

    if-eqz v0, :cond_1b

    .line 2034
    :goto_1a
    return-void

    .line 2013
    :cond_1b
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->configKeyboardIsMovable:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_37

    .line 2014
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->blackListManager:Lcom/swype/android/inputmethod/BlackListManager;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentApp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/BlackListManager;->allowTransparentWings(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/swype/android/widget/InputWindow;->setDisplayWingTransparent(Z)V

    .line 2015
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->refreshKeyboard()V

    .line 2017
    :cond_37
    if-nez p2, :cond_3e

    .line 2023
    const-wide/16 v0, 0x64

    :try_start_3b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3e
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3e} :catch_4f

    .line 2027
    :cond_3e
    :goto_3e
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 2028
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 2029
    if-eqz v0, :cond_4b

    .line 2030
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2033
    :cond_4b
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateLanguageIMEConversionArea()V

    goto :goto_1a

    :catch_4f
    move-exception v0

    goto :goto_3e
.end method

.method public onTranslateYToScreen(I)I
    .registers 4
    .parameter

    .prologue
    .line 3099
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->currentScreenDef:Lcom/swype/android/inputmethod/ScreenDefinition;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenHeight()I

    move-result v0

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->getKeyboardSize()Lcom/swype/android/widget/ViewSize;

    move-result-object v1

    invoke-virtual {v1}, Lcom/swype/android/widget/ViewSize;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 3100
    return v0
.end method

.method public onUpdateCandidates([Ljava/lang/String;[I)V
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 5252
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hwclSync:Ljava/lang/Object;

    monitor-enter v0

    .line 5254
    :try_start_4
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v1, :cond_31

    .line 5255
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    iget-boolean v1, v1, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->isAddWordQuery:Z

    .line 5256
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    iget-boolean v2, v2, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->isTipShownInHWCL:Z

    .line 5257
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-static {p2}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->isAddWordList([I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->isAddWordQuery:Z

    .line 5258
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-static {p2}, Lcom/swype/android/widget/HorizontalChoiceView$CandidateProperty;->isTipShownInHWCLCheck([I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->isTipShownInHWCL:Z

    .line 5260
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->editorShowsCompletions()Z

    move-result v3

    if-eqz v3, :cond_3c

    if-nez v1, :cond_2a

    if-eqz v2, :cond_2f

    :cond_2a
    if-eqz p1, :cond_3c

    array-length v1, p1

    if-eqz v1, :cond_3c

    .line 5263
    :cond_2f
    monitor-exit v0

    .line 5309
    :goto_30
    return-void

    .line 5266
    :cond_31
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->editorShowsCompletions()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 5268
    monitor-exit v0

    goto :goto_30

    .line 5309
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_39

    throw v1

    .line 5282
    :cond_3c
    if-eqz p1, :cond_81

    :try_start_3e
    array-length v1, p1

    if-lez v1, :cond_81

    .line 5284
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hasCandidates:Z

    .line 5285
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5286
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidateProperties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move v1, v5

    .line 5287
    :goto_4f
    array-length v2, p1

    if-ge v1, v2, :cond_5c

    .line 5288
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5287
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_5c
    move v1, v5

    .line 5293
    :goto_5d
    array-length v2, p2

    if-ge v1, v2, :cond_6e

    .line 5294
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidateProperties:Ljava/util/List;

    aget v3, p2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5293
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_6e
    move v1, v5

    .line 5296
    :goto_6f
    array-length v2, p1

    array-length v3, p2

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_8e

    .line 5297
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidateProperties:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5296
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 5302
    :cond_81
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hasCandidates:Z

    .line 5303
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->conversionCandidates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5304
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidateProperties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 5307
    :cond_8e
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->removeMessages(I)V

    .line 5308
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendEmptyMessage(I)Z

    .line 5309
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_3e .. :try_end_9d} :catchall_39

    goto :goto_30
.end method

.method public onUpdateSelection(IIIIII)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2064
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 2075
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2076
    if-nez v0, :cond_a

    .line 2258
    :cond_9
    :goto_9
    return-void

    .line 2079
    :cond_a
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    if-eqz v1, :cond_9

    .line 2087
    if-nez p3, :cond_20

    if-lez p4, :cond_20

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_20

    .line 2092
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->notifyInsertionPointUpdate()V

    .line 2093
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2096
    :cond_20
    if-ne p3, p4, :cond_2b

    if-ne p3, p1, :cond_2b

    if-eq p1, p2, :cond_2b

    .line 2098
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->notifyInsertionPointUpdate()V

    .line 2106
    :cond_2b
    if-eqz p1, :cond_53

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getEditorText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_53

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.whatsapp"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.motorola.messaging"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.sec.chaton"

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 2111
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->cancelPredictionAndConversion()V

    goto :goto_9

    .line 2115
    :cond_53
    iget v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oldCandidateStart:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_81

    iget v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oldCandidateEnd:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_81

    if-eq p5, p6, :cond_65

    const/4 v1, -0x1

    if-eq p5, v1, :cond_65

    const/4 v1, -0x1

    if-ne p6, v1, :cond_81

    .line 2124
    :cond_65
    if-ne p3, p4, :cond_6b

    iget v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oldCandidateEnd:I

    if-le v1, p3, :cond_70

    .line 2126
    :cond_6b
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->notifyCandidatesGone()V

    .line 2129
    :cond_70
    iget v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oldCandidateEnd:I

    if-ne v1, p2, :cond_81

    if-le p4, p2, :cond_81

    const/4 v1, -0x1

    if-ne p6, v1, :cond_81

    .line 2133
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->notifyCandidatesGone()V

    .line 2134
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->cancelPredictionAndConversion()V

    .line 2141
    :cond_81
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.infraware.polarisoffice"

    aput-object v3, v1, v2

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 2142
    iget v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oldCandidateStart:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_aa

    iget v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oldCandidateEnd:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_aa

    const/4 v1, -0x1

    if-ne p5, v1, :cond_aa

    const/4 v1, -0x1

    if-ne p6, v1, :cond_aa

    .line 2144
    if-ge p3, p1, :cond_aa

    if-ge p4, p2, :cond_aa

    if-nez p3, :cond_aa

    if-nez p4, :cond_aa

    .line 2147
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->cancelPredictionAndConversion()V

    .line 2152
    :cond_aa
    iget-byte v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-nez v1, :cond_bc

    const/4 v1, -0x1

    if-eq p5, v1, :cond_bc

    if-ne p3, p4, :cond_b7

    if-eq p3, p5, :cond_bc

    if-eq p3, p6, :cond_bc

    .line 2156
    :cond_b7
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v1}, Lcom/swype/android/jni/SwypeCore;->notifyCursorMovedFromCandidates()V

    .line 2158
    :cond_bc
    iput p5, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oldCandidateStart:I

    .line 2159
    iput p6, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oldCandidateEnd:I

    .line 2162
    const/4 v1, -0x1

    if-ne p5, v1, :cond_166

    const/4 v1, -0x1

    if-ne p6, v1, :cond_166

    const/4 v1, 0x1

    .line 2167
    :goto_c7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->tsLastDoubleTap:J

    sub-long/2addr v2, v4

    .line 2168
    const-wide/16 v4, 0xfa

    cmp-long v2, v2, v4

    if-gez v2, :cond_da

    if-eq p1, p2, :cond_da

    if-ne p3, p4, :cond_da

    if-nez v1, :cond_9

    .line 2175
    :cond_da
    if-ne p3, p4, :cond_169

    .line 2176
    iput p3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->cursorPosition:I

    .line 2181
    iget v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->cursorPosition:I

    if-nez v2, :cond_115

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "com.google.android.talk"

    aput-object v4, v2, v3

    invoke-direct {p0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f8

    iget v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->pendingDeleteLength:I

    if-eqz v2, :cond_115

    iget v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->pendingDeleteLength:I

    if-eq v2, p2, :cond_115

    :cond_f8
    if-gtz p6, :cond_115

    .line 2182
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2183
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2184
    invoke-direct {p0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isStrEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_115

    invoke-direct {p0, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isStrEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_115

    .line 2186
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->cancelPredictionAndConversion()V

    .line 2192
    :cond_115
    iget-byte v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-eqz v2, :cond_125

    if-nez v1, :cond_125

    if-lt p4, p5, :cond_11f

    if-ge p6, p3, :cond_125

    .line 2194
    :cond_11f
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->cancelPredictionAndConversion()V

    .line 2195
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2201
    :cond_125
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_144

    if-eqz v1, :cond_144

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/ChoiceWindow;->getWindowType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_144

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/ChoiceWindow;->getWindowType()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_144

    .line 2203
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->hideChoiceWindow()V

    .line 2221
    :cond_144
    :goto_144
    if-lt p3, p5, :cond_197

    if-ge p3, p6, :cond_197

    .line 2224
    sub-int v0, p3, p5

    .line 2225
    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

    invoke-virtual {v2, v0}, Lcom/swype/android/inputmethod/SpellingTextManager;->onUserTap(I)V

    .line 2251
    :cond_14f
    :goto_14f
    iget-byte v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mImeEngineType:B

    if-eqz v0, :cond_161

    if-nez v1, :cond_159

    if-ne p3, p5, :cond_159

    if-eq p4, p6, :cond_15b

    :cond_159
    if-le p4, p3, :cond_161

    .line 2253
    :cond_15b
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/swype/android/jni/SwypeCore;->finishPendingConversion(Z)V

    .line 2257
    :cond_161
    const/4 v0, 0x0

    iput v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->pendingDeleteLength:I

    goto/16 :goto_9

    .line 2162
    :cond_166
    const/4 v1, 0x0

    goto/16 :goto_c7

    .line 2209
    :cond_169
    const/4 v2, -0x1

    iput v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->cursorPosition:I

    .line 2213
    if-nez p3, :cond_144

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isStrEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_144

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_144

    .line 2216
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v2, 0x1a

    invoke-virtual {v0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->removeMessages(I)V

    .line 2217
    iget-wide v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mNextAllowed:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mNextAllowed:J

    goto :goto_144

    .line 2230
    :cond_197
    if-eq p3, p4, :cond_1a2

    if-ne p1, p2, :cond_1a2

    .line 2232
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/swype/android/jni/SwypeCore;->updateAutoSpace(Z)V

    goto :goto_14f

    .line 2233
    :cond_1a2
    if-ne p3, p4, :cond_14f

    if-eq p1, p2, :cond_14f

    .line 2235
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/swype/android/jni/SwypeCore;->updateAutoSpace(Z)V

    .line 2236
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.sec.android.app.memo"

    aput-object v3, v0, v2

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c8

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "bander.notepad"

    aput-object v3, v0, v2

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14f

    .line 2237
    :cond_1c8
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->performSingleTapDelayed()V

    goto :goto_14f
.end method

.method public onUpdateSpellingText([Ljava/lang/String;[B)Z
    .registers 8
    .parameter "spelling"
    .parameter "strSegmentStates"

    .prologue
    .line 5220
    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_f

    .line 5221
    :cond_5
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/inputmethod/SpellingTextManager;->clearSpellingText(Landroid/view/inputmethod/InputConnection;Z)V

    .line 5225
    :cond_f
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->hwclSync:Ljava/lang/Object;

    monitor-enter v0

    .line 5226
    :try_start_12
    iput-object p1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStrings:[Ljava/lang/String;

    .line 5227
    iput-object p2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStringStates:[B

    .line 5229
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v1, :cond_34

    .line 5231
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStrings:[Ljava/lang/String;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStrings:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_34

    .line 5232
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStrings:[Ljava/lang/String;

    iget-object v4, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStringStates:[B

    invoke-virtual {v1, v2, v3, v4}, Lcom/swype/android/inputmethod/SpellingTextManager;->updateSpelling(Landroid/view/inputmethod/InputConnection;[Ljava/lang/String;[B)Z

    move-result v1

    monitor-exit v0

    move v0, v1

    .line 5239
    :goto_33
    return v0

    .line 5238
    :cond_34
    monitor-exit v0

    .line 5239
    const/4 v0, 0x0

    goto :goto_33

    .line 5238
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_37

    throw v1
.end method

.method public onWindowDrawFlush(I)V
    .registers 6
    .parameter

    .prologue
    .line 2985
    const/4 v0, 0x1

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    if-eqz v0, :cond_d

    .line 2986
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/ChoiceWindow;->onDrawFlush()V

    .line 2995
    :cond_c
    :goto_c
    return-void

    .line 2988
    :cond_d
    if-nez p1, :cond_c

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_c

    .line 2989
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v0}, Lcom/swype/android/widget/InputWindow;->onDrawFlush()V

    .line 2990
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choicePopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->showingChoice:Z

    if-eqz v0, :cond_c

    .line 2991
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->choiceView:Lcom/swype/android/widget/ChoiceWindow;

    invoke-virtual {v2}, Lcom/swype/android/widget/ChoiceWindow;->getWindowType()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2992
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c
.end method

.method public onWindowHidden()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1694
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isImeShowing:Z

    .line 1695
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->speechRecognizer:Lcom/swype/android/voice/VoiceManager;

    invoke-virtual {v0}, Lcom/swype/android/voice/VoiceManager;->isViewShowing()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1696
    iput-boolean v2, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isShown:Z

    .line 1700
    :cond_12
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->cancelPredictionAndConversion()V

    .line 1701
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 1703
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    if-eqz v0, :cond_21

    .line 1704
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    invoke-virtual {v0}, Lcom/swype/android/oem/OemAction;->onHiding()V

    .line 1707
    :cond_21
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v0, :cond_2a

    .line 1708
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0, v1, v1}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setListOfWords(Ljava/util/List;Ljava/util/List;)V

    .line 1711
    :cond_2a
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStrings:[Ljava/lang/String;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStrings:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_35

    .line 1712
    iput-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->spellingStrings:[Ljava/lang/String;

    .line 1715
    :cond_35
    invoke-virtual {p0, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCandidatesViewShown(Z)V

    .line 1717
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onHiding()V

    .line 1718
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isChangingOrientation:Z

    if-nez v0, :cond_4c

    .line 1719
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->dismissActiveDialog()V

    .line 1720
    invoke-virtual {p0, v1, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->onUpdateCandidates([Ljava/lang/String;[I)V

    .line 1728
    :cond_47
    :goto_47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mTimeStampLastCallOnTap:J

    .line 1729
    return-void

    .line 1723
    :cond_4c
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1724
    if-eqz v0, :cond_47

    .line 1725
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_47
.end method

.method public onWindowShown()V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1739
    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isShown:Z

    .line 1740
    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isImeShowing:Z

    .line 1741
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 1742
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    if-eqz v0, :cond_11

    .line 1743
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->oemAction:Lcom/swype/android/oem/OemAction;

    invoke-virtual {v0}, Lcom/swype/android/oem/OemAction;->onShowing()V

    .line 1745
    :cond_11
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHWCLOff:Z

    if-nez v0, :cond_22

    .line 1746
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1747
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1749
    :cond_22
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateLanguageIMESpellingContents()V

    .line 1750
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->onShowing()V

    .line 1751
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mTimeStampLastCallOnTap:J

    .line 1754
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 1762
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->setCandidatesView(Landroid/view/View;)V

    .line 1764
    :cond_3f
    return-void
.end method

.method public performHapticFeedback()V
    .registers 4

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2795
    return-void
.end method

.method public playBeep()V
    .registers 3

    .prologue
    .line 2735
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2736
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2737
    return-void
.end method

.method public playKeyTapSound(I)V
    .registers 6
    .parameter

    .prologue
    .line 2801
    iget v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->callState:I

    if-nez v0, :cond_15

    .line 2802
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v2, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2804
    :cond_15
    return-void
.end method

.method public propagateVkcToCore(IZ)V
    .registers 4
    .parameter "vkc"
    .parameter "isPhysicalPress"

    .prologue
    .line 5616
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0, p1, p2}, Lcom/swype/android/jni/SwypeCore;->propagateVkc(IZ)V

    .line 5617
    return-void
.end method

.method public replaceText(ILjava/lang/String;)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2481
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mSpellingTextManager:Lcom/swype/android/inputmethod/SpellingTextManager;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SpellingTextManager;->clearComposingRegion()V

    .line 2482
    iget-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isShown:Z

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;

    move-result-object v0

    if-nez v0, :cond_13

    :cond_11
    move v0, v4

    .line 2527
    :goto_12
    return v0

    .line 2488
    :cond_13
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2489
    if-eqz v0, :cond_60

    .line 2490
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->adjustCursorDiacritic()V

    .line 2493
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->propertyBitSet:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_34

    if-eqz p1, :cond_34

    .line 2495
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "com.android.contacts"

    aput-object v2, v1, v4

    invoke-direct {p0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    move v0, v4

    .line 2496
    goto :goto_12

    .line 2501
    :cond_34
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->pendingDeleteLength:I

    .line 2503
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2509
    if-gez p1, :cond_4d

    .line 2510
    neg-int v1, p1

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2511
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->replaceTextSpan(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Ljava/lang/String;I)Z

    move-result v1

    .line 2524
    :goto_48
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v0, v1

    .line 2525
    goto :goto_12

    .line 2513
    :cond_4d
    if-lez p1, :cond_58

    .line 2514
    invoke-interface {v0, p1, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2515
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/swype/android/inputmethod/SwypeInputMethod;->replaceTextSpan(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;Ljava/lang/String;I)Z

    move-result v1

    goto :goto_48

    .line 2520
    :cond_58
    invoke-interface {v0, p2, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2521
    invoke-direct {p0, p2}, Lcom/swype/android/inputmethod/SwypeInputMethod;->wasCommitSuccessful(Ljava/lang/String;)Z

    move-result v1

    goto :goto_48

    :cond_60
    move v0, v4

    .line 2527
    goto :goto_12
.end method

.method public resizeCandidateView()V
    .registers 6

    .prologue
    .line 5396
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v3, :cond_48

    .line 5398
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v3}, Lcom/swype/android/widget/InputWindow;->getKbBoundingWidth()I

    move-result v2

    .line 5399
    .local v2, width:I
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v3}, Lcom/swype/android/widget/InputWindow;->getKeyboardOffsetX()I

    move-result v1

    .line 5400
    .local v1, keyboardOffset:I
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getScreenDefinition()Lcom/swype/android/inputmethod/ScreenDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/swype/android/inputmethod/ScreenDefinition;->getScreenWidth()I

    move-result v0

    .line 5403
    .local v0, containerWidth:I
    if-le v0, v2, :cond_2a

    .line 5405
    iget-boolean v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->configKeyboardIsMovable:Z

    if-eqz v3, :cond_29

    .line 5406
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v3}, Lcom/swype/android/widget/InputWindow;->getWingWidth()I

    move-result v3

    sub-int/2addr v1, v3

    .line 5414
    :cond_29
    move v0, v2

    .line 5418
    :cond_2a
    if-nez v1, :cond_34

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_34

    .line 5419
    const/4 v3, 0x1

    sub-int/2addr v1, v3

    .line 5424
    :cond_34
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v3, v2}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setChoiceListWidth(I)V

    .line 5425
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v3, v1}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setChoiceListOffsetX(I)V

    .line 5426
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v3, v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setContainerWidth(I)V

    .line 5427
    iget-object v3, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v3}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->requestLayout()V

    .line 5430
    .end local v0           #containerWidth:I
    .end local v1           #keyboardOffset:I
    .end local v2           #width:I
    :cond_48
    return-void
.end method

.method public selectTextRegion(IIZ)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2370
    .line 2372
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_44

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.browser"

    aput-object v1, v0, v3

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    if-nez p2, :cond_44

    move v0, v4

    .line 2379
    :goto_19
    if-nez v0, :cond_2e

    .line 2380
    if-eqz p3, :cond_2f

    .line 2381
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2382
    if-eqz v0, :cond_2e

    if-ltz p1, :cond_2e

    add-int v1, p1, p2

    if-ltz v1, :cond_2e

    .line 2383
    add-int v1, p1, p2

    invoke-static {v0, p1, v1}, Lcom/swype/android/inputmethod/InputConnectionAdaptor;->setSelection(Landroid/view/inputmethod/InputConnection;II)Z

    .line 2394
    :cond_2e
    :goto_2e
    return-void

    .line 2386
    :cond_2f
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p1, v2, v3

    aput p2, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2390
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2e

    :cond_44
    move v0, v3

    goto :goto_19
.end method

.method public sendKeyChar(C)V
    .registers 5
    .parameter

    .prologue
    .line 3360
    const-string v0, "Swype"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendKeyChar(): 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->sendKeyChar(C)V

    .line 3362
    return-void
.end method

.method public sendReturn(Landroid/view/inputmethod/InputConnection;)V
    .registers 4
    .parameter

    .prologue
    .line 3365
    const-string v0, "Swype"

    const-string v1, "sendReturn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 3368
    if-eqz v0, :cond_1f

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v1, :cond_27

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v1, :cond_27

    const-string v1, "com.android.mms"

    iget-object v0, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 3372
    :cond_1f
    const-string v0, "Swype"

    const-string v1, "sendReturn(): ignore (NULL)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    :goto_26
    return-void

    .line 3377
    :cond_27
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isReturnKeyUsedAsEmoticon()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3381
    const-string v0, ":-)"

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->onInputString(Ljava/lang/String;)Z

    .line 3382
    const-string v0, " "

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->onInputString(Ljava/lang/String;)Z

    goto :goto_26

    .line 3384
    :cond_38
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendKeyChar(C)V

    goto :goto_26
.end method

.method public sendStats(Ljava/lang/String;Z)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 2642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*Time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2644
    if-eqz p2, :cond_36

    .line 2645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*App:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->whichApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2650
    :cond_36
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    const/16 v2, 0x66

    invoke-virtual {v1, v2, v0}, Lcom/swype/android/inputmethod/SwypeApplication;->sendConnectMessage(ILjava/lang/String;)V

    .line 2651
    return-void
.end method

.method public sendTab(Landroid/view/inputmethod/InputConnection;)V
    .registers 7
    .parameter

    .prologue
    const/high16 v4, 0x800

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3394
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeApplication;->isHoneycombOrGreater()Z

    move-result v0

    if-eqz v0, :cond_3d

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.infraware.polarisoffice"

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.infraware.PolarisOfficeForTablet"

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isWorkingWithApp([Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 3396
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 3397
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v0, v4

    if-ne v0, v4, :cond_3d

    .line 3400
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 3401
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->removeMessages(I)V

    .line 3403
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    invoke-virtual {v0}, Lcom/swype/android/jni/SwypeCore;->notifyInsertionPointUpdate()V

    .line 3420
    :goto_3c
    return-void

    .line 3411
    :cond_3d
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_54

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    move v0, v3

    .line 3413
    :goto_4c
    if-eqz v0, :cond_56

    .line 3415
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendDownUpKeyEvents(I)V

    goto :goto_3c

    :cond_54
    move v0, v2

    .line 3411
    goto :goto_4c

    .line 3418
    :cond_56
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->sendKeyChar(C)V

    goto :goto_3c
.end method

.method public setCandidatesViewShown(Z)V
    .registers 4
    .parameter "show"

    .prologue
    .line 1647
    if-eqz p1, :cond_f

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v1}, Lcom/swype/android/widget/InputWindow;->isShown()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1668
    :cond_e
    :goto_e
    return-void

    .line 1651
    :cond_f
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v1}, Lcom/swype/android/widget/InputWindow;->getKeyboardIsInMoveState()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1652
    const/4 p1, 0x0

    .line 1657
    :cond_1c
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    if-eqz v1, :cond_31

    .line 1658
    if-eqz p1, :cond_35

    const/4 v1, 0x0

    move v0, v1

    .line 1659
    .local v0, visibility:I
    :goto_24
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v1}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_31

    .line 1660
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->candidatesView:Lcom/swype/android/widget/HorizontalChoiceViewContainer;

    invoke-virtual {v1, v0}, Lcom/swype/android/widget/HorizontalChoiceViewContainer;->setVisibility(I)V

    .line 1667
    .end local v0           #visibility:I
    :cond_31
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    goto :goto_e

    .line 1658
    :cond_35
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCvInvisibleVal()I

    move-result v1

    move v0, v1

    goto :goto_24
.end method

.method public setCompletion(ILjava/lang/CharSequence;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 4613
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->completionInfo:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v0, :cond_18

    if-ltz p1, :cond_18

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->completionInfo:[Landroid/view/inputmethod/CompletionInfo;

    array-length v0, v0

    if-ge p1, v0, :cond_18

    .line 4614
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->completionInfo:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v0, p1

    .line 4615
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4616
    if-eqz v1, :cond_18

    .line 4617
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 4620
    :cond_18
    return-void
.end method

.method public showCompleteHelp(Ljava/lang/String;)V
    .registers 4
    .parameter "htmlHelpText"

    .prologue
    .line 3220
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3222
    return-void
.end method

.method public showContextHelp(Ljava/lang/String;)V
    .registers 4
    .parameter "htmlHelpText"

    .prologue
    .line 3211
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3212
    return-void
.end method

.method public showDialog(Lcom/swype/android/inputmethod/SwypeDialog;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 4736
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    if-eqz v0, :cond_19

    .line 4738
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4748
    :cond_10
    :goto_10
    return-void

    .line 4741
    :cond_11
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    invoke-virtual {v0}, Lcom/swype/android/inputmethod/SwypeDialog;->dismiss()V

    .line 4742
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    .line 4744
    :cond_19
    sget-boolean v0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isSelected:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    if-eqz v0, :cond_10

    .line 4745
    iput-object p1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    .line 4746
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->activeDialog:Lcom/swype/android/inputmethod/SwypeDialog;

    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->inputView:Lcom/swype/android/widget/InputWindow;

    invoke-virtual {v1}, Lcom/swype/android/widget/InputWindow;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/swype/android/inputmethod/SwypeDialog;->show(Landroid/os/IBinder;)V

    goto :goto_10
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0xb

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2694
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2695
    return-void
.end method

.method public showNavigationBar()V
    .registers 3

    .prologue
    .line 5621
    const-string v0, "Swype"

    const-string v1, "showNavigationBar()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5622
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->updateNavigationBarVisiblity(I)V

    .line 5623
    return-void
.end method

.method protected showTipDialog(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 5539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->isHelpShowing:Z

    .line 5540
    new-instance v0, Lcom/swype/android/settings/TipDialog;

    invoke-direct {v0, p1}, Lcom/swype/android/settings/TipDialog;-><init>(Ljava/lang/String;)V

    .line 5541
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->swypeApp:Lcom/swype/android/inputmethod/SwypeApplication;

    new-instance v2, Lcom/swype/android/inputmethod/SwypeInputMethod$3;

    invoke-direct {v2, p0}, Lcom/swype/android/inputmethod/SwypeInputMethod$3;-><init>(Lcom/swype/android/inputmethod/SwypeInputMethod;)V

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/settings/TipDialog;->createDialog(Lcom/swype/android/inputmethod/SwypeApplication;Lcom/swype/android/settings/TipDialog$LoadViewListener;)V

    .line 5547
    return-void
.end method

.method public showTipNotify(Ljava/lang/String;I)V
    .registers 8
    .parameter
    .parameter

    .prologue
    .line 2710
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0x16

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2712
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2713
    return-void
.end method

.method public showUserQuery(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2668
    iget-object v0, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    const/16 v1, 0xa

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2670
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->mHandler:Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;

    invoke-virtual {v1, v0}, Lcom/swype/android/inputmethod/SwypeInputMethod$MessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2671
    return-void
.end method

.method public updateFullscreenMode()V
    .registers 4

    .prologue
    .line 4711
    iget-object v1, p0, Lcom/swype/android/inputmethod/SwypeInputMethod;->core:Lcom/swype/android/jni/SwypeCore;

    const/16 v2, 0x4b

    invoke-virtual {v1, v2}, Lcom/swype/android/jni/SwypeCore;->getSettingBool(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 4727
    :cond_a
    :goto_a
    return-void

    .line 4717
    :cond_b
    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isFullscreenMode()Z

    move-result v0

    .line 4719
    .local v0, oldFullscreenMode:Z
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 4722
    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->isFullscreenMode()Z

    move-result v1

    if-eq v0, v1, :cond_a

    .line 4724
    invoke-direct {p0}, Lcom/swype/android/inputmethod/SwypeInputMethod;->checkEditorShowsCompletions()V

    goto :goto_a
.end method

.class public Lcom/android/inputmethod/latin/LatinIME;
.super Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;
.source "LatinIME.java"

# interfaces
.implements Lcom/android/inputmethod/keyboard/KeyboardActionListener;
.implements Lcom/android/inputmethod/latin/SuggestionsView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;,
        Lcom/android/inputmethod/latin/LatinIME$UIHandler;,
        Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    }
.end annotation


# static fields
.field public static final CODE_SHOW_INPUT_METHOD_PICKER:I = 0x1

.field private static final CPS_BUFFER_SIZE:I = 0x10

.field public static DEBUG:Z = false

.field private static final DELETE_ACCELERATE_AT:I = 0x14

.field private static final EXTENDED_TOUCHABLE_REGION_HEIGHT:I = 0x64

.field public static final IME_OPTION_FORCE_ASCII:Ljava/lang/String; = "forceAscii"

.field public static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "noMicrophoneKey"

.field public static final IME_OPTION_NO_MICROPHONE_COMPAT:Ljava/lang/String; = "nm"

.field public static final IME_OPTION_NO_SETTINGS_KEY:Ljava/lang/String; = "noSettingsKey"

.field private static final PENDING_IMS_CALLBACK_DURATION:I = 0x320

.field private static final PERF_DEBUG:Z = false

.field private static final QUICK_PRESS:I = 0xc8

.field private static final SCHEME_PACKAGE:Ljava/lang/String; = "package"

.field public static final SUBTYPE_EXTRA_VALUE_ASCII_CAPABLE:Ljava/lang/String; = "AsciiCapable"

.field public static final SUBTYPE_EXTRA_VALUE_KEYBOARD_LOCALE:Ljava/lang/String; = "KeyboardLocale"

.field public static final SUBTYPE_EXTRA_VALUE_SUPPORT_TOUCH_POSITION_CORRECTION:Ljava/lang/String; = "SupportTouchPositionCorrection"

.field private static final SUGGESTION_VISIBILILTY_HIDE_VALUE:I = 0x7f0c005f

.field private static final SUGGESTION_VISIBILILTY_SHOW_ONLY_PORTRAIT_VALUE:I = 0x7f0c005e

.field private static final SUGGESTION_VISIBILILTY_SHOW_VALUE:I = 0x7f0c005d

.field private static final SUGGESTION_VISIBILITY_VALUE_ARRAY:[I

.field private static final TAG:Ljava/lang/String;

.field private static final TRACE:Z

.field public static mKeyboardHeight:I

.field private static final sEmptyWordComposer:Lcom/android/inputmethod/latin/WordComposer;


# instance fields
.field private final GESTURE_CLOSE_KEYBOARD:I

.field private final GESTURE_DELETE_WORD:I

.field private final GESTURE_DO_NOTHING:I

.field private final GESTURE_GO_SETTINGS:I

.field private final GESTURE_KEY_DOWN:I

.field private final GESTURE_KEY_LEFT:I

.field private final GESTURE_KEY_RIGHT:I

.field private final GESTURE_KEY_UP:I

.field private final GESTURE_LAUNCH_USER_DIC:I

.field private final GESTURE_NEXT_LANG:I

.field private final GESTURE_PASTE_CLIPBOARD:I

.field private final GESTURE_PICKUP_SUGGESTION:I

.field private final GESTURE_PREV_LANG:I

.field private final GESTURE_START_VOICE:I

.field private final GESTURE_TOGGLE_SYMBOLS:I

.field private mApplicationSpecifiedCompletionOn:Z

.field private mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBestWord:Ljava/lang/CharSequence;

.field private mCommittedLength:I

.field private final mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

.field private final mComposingStringBuilder:Ljava/lang/StringBuilder;

.field private mConfigurationChanging:Z

.field private mCorrectionMode:I

.field private mCpsIndex:I

.field private mCpsIntervals:[J

.field private mDeleteCount:I

.field private mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mDisplayOrientation:I

.field private mEnteredText:Ljava/lang/CharSequence;

.field private mExpectingUpdateSelection:Z

.field private mExtractArea:Landroid/view/View;

.field mFieldUrlOrWeb:Z

.field private mFxVolume:F

.field private mGestureDown:I

.field private mGestureLeft:I

.field private mGestureRight:I

.field private mGestureUp:I

.field public final mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

.field private mHasUncommittedTypedChars:Z

.field private mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

.field private mInputMethodId:Ljava/lang/String;

.field private mInputTypeNoAutoCorrect:Z

.field private mIsSettingsSuggestionStripOn:Z

.field private mIsUserDictionaryAvaliable:Z

.field private mJustAddedMagicSpace:Z

.field private mJustReplacedDoubleSpace:Z

.field private mKeyPreviewBackingView:Landroid/view/View;

.field private mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

.field private mKeypressVibrationDuration:J

.field private mLastCpsTime:J

.field private mLastKeyTime:J

.field private mLastSelectionEnd:I

.field private mLastSelectionStart:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResources:Landroid/content/res/Resources;

.field private mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

.field private mShouldInsertMagicSpace:Z

.field private mSilentModeOn:Z

.field private mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field private mSuggest:Lcom/android/inputmethod/latin/Suggest;

.field private mSuggestionVisibility:I

.field private mSuggestionsContainer:Landroid/view/View;

.field private mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

.field private mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

.field private mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

.field private mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

.field private mVibrator:Lcom/android/inputmethod/compat/VibratorCompatWrapper;

.field private mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

.field private mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

.field private mWordHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 86
    const-class v0, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/inputmethod/latin/LatinIME;->SUGGESTION_VISIBILITY_VALUE_ARRAY:[I

    .line 2038
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/LatinIME;->sEmptyWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    .line 2701
    const/16 v0, 0x64

    sput v0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardHeight:I

    .line 84
    return-void

    .line 161
    :array_1c
    .array-data 0x4
        0x5dt 0x0t 0xct 0x7ft
        0x5et 0x0t 0xct 0x7ft
        0x5ft 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;-><init>()V

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    .line 199
    new-instance v0, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    .line 222
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mFxVolume:F

    .line 226
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeypressVibrationDuration:J

    .line 237
    new-instance v0, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/DictionaryPackInstallBroadcastReceiver;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    .line 243
    invoke-static {}, Lcom/android/inputmethod/latin/ComposingStateManager;->getInstance()Lcom/android/inputmethod/latin/ComposingStateManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    .line 245
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    .line 2260
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$1;

    invoke-direct {v0, p0}, Lcom/android/inputmethod/latin/LatinIME$1;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2472
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIntervals:[J

    .line 2503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    .line 2886
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_DO_NOTHING:I

    .line 2887
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_DELETE_WORD:I

    .line 2888
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_GO_SETTINGS:I

    .line 2889
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_CLOSE_KEYBOARD:I

    .line 2890
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_PASTE_CLIPBOARD:I

    .line 2891
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_PICKUP_SUGGESTION:I

    .line 2892
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_NEXT_LANG:I

    .line 2893
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_PREV_LANG:I

    .line 2894
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_KEY_RIGHT:I

    .line 2895
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_KEY_LEFT:I

    .line 2896
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_KEY_UP:I

    .line 2897
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_KEY_DOWN:I

    .line 2898
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_TOGGLE_SYMBOLS:I

    .line 2899
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_LAUNCH_USER_DIC:I

    .line 2900
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->GESTURE_START_VOICE:I

    .line 84
    return-void
.end method

.method private SendSpaceAfterPunc(IZ)V
    .registers 4
    .parameter "primaryCode"
    .parameter "pickedDefault"

    .prologue
    .line 2729
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isWordURLorEmail()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Settings$Values;->mAutoSpaceAfterPunc:Z

    if-eqz v0, :cond_25

    if-eqz p2, :cond_25

    .line 2730
    const/16 v0, 0x2e

    if-eq p1, v0, :cond_22

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_22

    const/16 v0, 0x29

    if-eq p1, v0, :cond_22

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_22

    const/16 v0, 0x21

    if-ne p1, v0, :cond_25

    .line 2732
    :cond_22
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->sendMagicSpace()V

    .line 2734
    :cond_25
    return-void
.end method

.method private abortCorrection(Z)V
    .registers 3
    .parameter "force"

    .prologue
    .line 2582
    if-nez p1, :cond_8

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2583
    :cond_8
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2584
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 2586
    :cond_12
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 1
    .parameter

    .prologue
    .line 2285
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/SubtypeSwitcher;
    .registers 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    return-object v0
.end method

.method static synthetic access$10(Lcom/android/inputmethod/latin/LatinIME;Lcom/android/inputmethod/latin/WordComposer;)Ljava/util/List;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 2686
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->getTypedSuggestions(Lcom/android/inputmethod/latin/WordComposer;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/android/inputmethod/latin/LatinIME;)Ljava/lang/String;
    .registers 2
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputMethodId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
    .registers 2
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    .registers 2
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 1
    .parameter

    .prologue
    .line 2588
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->setOldSuggestions()V

    return-void
.end method

.method static synthetic access$4(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/deprecated/VoiceProxy;
    .registers 2
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/inputmethod/latin/LatinIME;)Lcom/android/inputmethod/latin/Settings$Values;
    .registers 2
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    return-object v0
.end method

.method static synthetic access$6(Lcom/android/inputmethod/latin/LatinIME;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 896
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->onFinishInputViewInternal(Z)V

    return-void
.end method

.method static synthetic access$7(Lcom/android/inputmethod/latin/LatinIME;)V
    .registers 1
    .parameter

    .prologue
    .line 883
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->onFinishInputInternal()V

    return-void
.end method

.method static synthetic access$8(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 715
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method static synthetic access$9(Lcom/android/inputmethod/latin/LatinIME;Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 719
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME;->onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V

    return-void
.end method

.method private addToOnlyBigramDictionary(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "suggestion"
    .parameter "frequencyDelta"

    .prologue
    .line 2073
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 2074
    return-void
.end method

.method private addToUserUnigramAndBigramDictionaries(Ljava/lang/CharSequence;I)V
    .registers 4
    .parameter "suggestion"
    .parameter "frequencyDelta"

    .prologue
    .line 2069
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/inputmethod/latin/LatinIME;->checkAddToDictionary(Ljava/lang/CharSequence;IZ)V

    .line 2070
    return-void
.end method

.method private applyTypedAlternatives(Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;)Z
    .registers 12
    .parameter "touching"

    .prologue
    const/4 v5, 0x0

    const/4 v9, -0x1

    const/4 v6, 0x1

    .line 2638
    const/4 v2, 0x0

    .line 2639
    .local v2, foundWord:Lcom/android/inputmethod/latin/WordComposer;
    const/4 v0, 0x0

    .line 2640
    .local v0, alternatives:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4a

    .line 2650
    :goto_11
    if-nez v2, :cond_2f

    .line 2651
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/Map;

    move-result-object v4

    iget-object v7, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-static {v4, v7, v6}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWord(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 2652
    new-instance v2, Lcom/android/inputmethod/latin/WordComposer;

    .end local v2           #foundWord:Lcom/android/inputmethod/latin/WordComposer;
    invoke-direct {v2}, Lcom/android/inputmethod/latin/WordComposer;-><init>()V

    .line 2653
    .restart local v2       #foundWord:Lcom/android/inputmethod/latin/WordComposer;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_27
    iget-object v4, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lt v3, v4, :cond_69

    .line 2662
    .end local v3           #i:I
    :cond_2f
    if-nez v2, :cond_33

    if-eqz v0, :cond_85

    .line 2663
    :cond_33
    if-nez v0, :cond_3c

    .line 2664
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;

    .end local v0           #alternatives:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    iget-object v4, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v4, v2}, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;-><init>(Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/WordComposer;)V

    .line 2667
    .restart local v0       #alternatives:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    :cond_3c
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->showRecorrections(Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;)V

    .line 2668
    if-eqz v2, :cond_7f

    .line 2669
    new-instance v4, Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v4, v2}, Lcom/android/inputmethod/latin/WordComposer;-><init>(Lcom/android/inputmethod/latin/WordComposer;)V

    iput-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    :goto_48
    move v4, v6

    .line 2675
    :goto_49
    return v4

    .line 2640
    :cond_4a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;

    .line 2641
    .local v1, entry:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->getChosenWord()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2642
    instance-of v4, v1, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;

    if-eqz v4, :cond_67

    move-object v4, v1

    .line 2643
    check-cast v4, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;

    #getter for: Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->word:Lcom/android/inputmethod/latin/WordComposer;
    invoke-static {v4}, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;->access$0(Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;)Lcom/android/inputmethod/latin/WordComposer;

    move-result-object v2

    .line 2645
    :cond_67
    move-object v0, v1

    .line 2646
    goto :goto_11

    .line 2654
    .end local v1           #entry:Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;
    .restart local v3       #i:I
    :cond_69
    iget-object v4, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 2655
    new-array v7, v6, [I

    iget-object v8, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v8, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    aput v8, v7, v5

    .line 2654
    invoke-virtual {v2, v4, v7, v9, v9}, Lcom/android/inputmethod/latin/WordComposer;->add(I[III)V

    .line 2653
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 2671
    .end local v3           #i:I
    :cond_7f
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    goto :goto_48

    :cond_85
    move v4, v5

    .line 2675
    goto :goto_49
.end method

.method private checkAddToDictionary(Ljava/lang/CharSequence;IZ)V
    .registers 13
    .parameter "suggestion"
    .parameter "frequencyDelta"
    .parameter "selectedANotTypedWord"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2082
    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v7, v5, :cond_b

    .line 2117
    :cond_a
    :goto_a
    return-void

    .line 2087
    :cond_b
    iget v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v8, 0x2

    if-eq v7, v8, :cond_15

    .line 2088
    iget v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_a

    .line 2092
    :cond_15
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v7, :cond_42

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    if-eqz v7, :cond_42

    .line 2094
    if-nez p3, :cond_68

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    invoke-virtual {v7, p1}, Lcom/android/inputmethod/latin/UserUnigramDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_68

    move v4, v5

    .line 2096
    .local v4, selectedATypedWordAndItsInUserUnigramDic:Z
    :goto_28
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v7}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/Map;

    move-result-object v7

    .line 2095
    invoke-static {v7, p1, v5}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWord(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v1

    .line 2098
    .local v1, isValidWord:Z
    if-nez v4, :cond_6a

    if-eqz v1, :cond_6a

    move v2, v6

    .line 2099
    .local v2, needsToAddToUserUnigramDictionary:Z
    :goto_37
    if-eqz v2, :cond_42

    .line 2100
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/android/inputmethod/latin/UserUnigramDictionary;->addWord(Ljava/lang/String;I)V

    .line 2104
    .end local v1           #isValidWord:Z
    .end local v2           #needsToAddToUserUnigramDictionary:Z
    .end local v4           #selectedATypedWordAndItsInUserUnigramDic:Z
    :cond_42
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    if-eqz v5, :cond_a

    .line 2108
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2109
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_a

    .line 2111
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v5, v5, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/android/inputmethod/latin/EditingUtils;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2112
    .local v3, prevWord:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 2113
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/inputmethod/latin/UserBigramDictionary;->addBigrams(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #prevWord:Ljava/lang/CharSequence;
    :cond_68
    move v4, v6

    .line 2094
    goto :goto_28

    .restart local v1       #isValidWord:Z
    .restart local v4       #selectedATypedWordAndItsInUserUnigramDic:Z
    :cond_6a
    move v2, v5

    .line 2098
    goto :goto_37
.end method

.method private checkReCorrectionOnStart()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2555
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mReCorrectionEnabled:Z

    if-eqz v3, :cond_13

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2563
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2564
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_14

    .line 2580
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_13
    :goto_13
    return-void

    .line 2566
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_14
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2567
    .local v1, etr:Landroid/view/inputmethod/ExtractedTextRequest;
    iput v4, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 2568
    invoke-interface {v2, v1, v4}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 2569
    .local v0, et:Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_13

    .line 2572
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 2573
    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v4, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 2576
    iget-object v3, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 2577
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    #calls: Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateOldSuggestions()V
    invoke-static {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->access$0(Lcom/android/inputmethod/latin/LatinIME$UIHandler;)V

    goto :goto_13
.end method

.method private commitBestWord(Ljava/lang/CharSequence;Z)V
    .registers 9
    .parameter "bestWord"
    .parameter "recorrecting"

    .prologue
    const/4 v5, 0x1

    .line 2015
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 2016
    .local v2, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isKeyboardAvailable()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2036
    :goto_9
    return-void

    .line 2018
    :cond_a
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2019
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_39

    .line 2020
    if-eqz p2, :cond_19

    .line 2022
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/inputmethod/latin/EditingUtils;->deleteWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 2024
    :cond_19
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v4, v4, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    invoke-virtual {v3, p1, v4}, Lcom/android/inputmethod/deprecated/VoiceProxy;->rememberReplacedWord(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2025
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mEnableSuggestionSpanInsertion:Z

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v3, :cond_46

    .line 2026
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SuggestionsView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v1

    .line 2027
    .local v1, suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    invoke-static {p0, p1, v1}, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->getTextWithSuggestionSpan(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2033
    .end local v1           #suggestedWords:Lcom/android/inputmethod/latin/SuggestedWords;
    :cond_39
    :goto_39
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 2034
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 2035
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    goto :goto_9

    .line 2030
    :cond_46
    invoke-interface {v0, p1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_39
.end method

.method private exectueGesture(I)V
    .registers 8
    .parameter "gesture"

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x15

    const/16 v3, 0x14

    const/16 v1, 0x13

    const/4 v2, -0x1

    .line 2973
    packed-switch p1, :pswitch_data_6c

    .line 3032
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 2977
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2978
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_c

    .line 2979
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2980
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v1, v1, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/EditingUtils;->deleteWordBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 2981
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_c

    .line 2985
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :pswitch_21
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    goto :goto_c

    .line 2988
    :pswitch_25
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    goto :goto_c

    .line 2991
    :pswitch_29
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->paste_from_clipboard()V

    goto :goto_c

    .line 2994
    :pswitch_2d
    const/16 v1, 0x20

    invoke-direct {p0, v1, v2, v2}, Lcom/android/inputmethod/latin/LatinIME;->handleSeparator(III)V

    goto :goto_c

    .line 3000
    :pswitch_33
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v1}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SwitchToNextSubtype()V

    goto :goto_c

    .line 3003
    :pswitch_39
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v1}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->SwitchToPrevSubtype()V

    goto :goto_c

    .line 3006
    :pswitch_3f
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 3007
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->handleArrow(I)V

    goto :goto_c

    .line 3010
    :pswitch_46
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 3011
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->handleArrow(I)V

    goto :goto_c

    .line 3014
    :pswitch_4d
    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 3015
    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->handleArrow(I)V

    goto :goto_c

    .line 3018
    :pswitch_54
    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 3019
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->handleArrow(I)V

    goto :goto_c

    .line 3022
    :pswitch_5b
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_c

    .line 3025
    :pswitch_61
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->launchUserDictionaryEditor()V

    goto :goto_c

    .line 3028
    :pswitch_65
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->triggerVoiceIME()V

    goto :goto_c

    .line 2973
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_d
        :pswitch_21
        :pswitch_25
        :pswitch_29
        :pswitch_2d
        :pswitch_33
        :pswitch_39
        :pswitch_54
        :pswitch_4d
        :pswitch_3f
        :pswitch_46
        :pswitch_5b
        :pswitch_61
        :pswitch_65
    .end packed-switch
.end method

.method private getAllSwipesettings(Landroid/content/SharedPreferences;)V
    .registers 3
    .parameter "sp"

    .prologue
    .line 2908
    const-string v0, "swipe_right"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGestureRight:I

    .line 2909
    const-string v0, "swipe_left"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGestureLeft:I

    .line 2910
    const-string v0, "swipe_up"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGestureUp:I

    .line 2911
    const-string v0, "swipe_down"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGestureDown:I

    .line 2912
    return-void
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .registers 13
    .parameter "cs"
    .parameter "off"
    .parameter "reqModes"

    .prologue
    const/16 v9, 0x27

    const/16 v8, 0x22

    const/4 v4, 0x0

    const/16 v7, 0x2e

    .line 2777
    if-gez p1, :cond_a

    .line 2867
    :cond_9
    :goto_9
    return v4

    .line 2781
    :cond_a
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge p1, v5, :cond_9

    .line 2788
    const/4 v4, 0x0

    .line 2790
    .local v4, mode:I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_17

    .line 2791
    or-int/lit16 v4, v4, 0x1000

    .line 2793
    :cond_17
    and-int/lit16 v5, p2, 0x6000

    if-eqz v5, :cond_9

    .line 2799
    move v1, p1

    .local v1, i:I
    :goto_1c
    if-gtz v1, :cond_46

    .line 2810
    :cond_1e
    move v2, v1

    .line 2811
    .local v2, j:I
    :goto_1f
    if-lez v2, :cond_37

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_5b

    const/16 v5, 0x9

    if-eq v0, v5, :cond_5b

    const/16 v5, 0xc2

    if-eq v0, v5, :cond_5b

    const/16 v5, 0xa0

    if-eq v0, v5, :cond_5b

    .line 2814
    .end local v0           #c:C
    :cond_37
    if-eqz v2, :cond_43

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5e

    .line 2815
    :cond_43
    or-int/lit16 v4, v4, 0x2000

    goto :goto_9

    .line 2800
    .end local v2           #j:I
    :cond_46
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2802
    .restart local v0       #c:C
    if-eq v0, v8, :cond_58

    if-eq v0, v9, :cond_58

    .line 2803
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_1e

    .line 2799
    :cond_58
    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    .line 2812
    .restart local v2       #j:I
    :cond_5b
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    .line 2820
    .end local v0           #c:C
    :cond_5e
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_67

    .line 2821
    if-eq v1, v2, :cond_9

    or-int/lit16 v4, v4, 0x2000

    goto :goto_9

    .line 2827
    :cond_67
    if-eq v1, v2, :cond_9

    .line 2833
    :goto_69
    if-gtz v2, :cond_86

    .line 2842
    :cond_6b
    if-lez v2, :cond_9

    .line 2843
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2845
    .restart local v0       #c:C
    if-eq v0, v7, :cond_7d

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_7d

    const/16 v5, 0x21

    if-ne v0, v5, :cond_9

    .line 2849
    :cond_7d
    if-ne v0, v7, :cond_83

    .line 2850
    add-int/lit8 v3, v2, -0x2

    .local v3, k:I
    :goto_81
    if-gez v3, :cond_9b

    .line 2863
    .end local v3           #k:I
    :cond_83
    or-int/lit16 v4, v4, 0x4000

    goto :goto_9

    .line 2834
    .end local v0           #c:C
    :cond_86
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2836
    .restart local v0       #c:C
    if-eq v0, v8, :cond_98

    if-eq v0, v9, :cond_98

    .line 2837
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_6b

    .line 2833
    :cond_98
    add-int/lit8 v2, v2, -0x1

    goto :goto_69

    .line 2851
    .restart local v3       #k:I
    :cond_9b
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 2853
    if-eq v0, v7, :cond_9

    .line 2857
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 2850
    add-int/lit8 v3, v3, -0x1

    goto :goto_81
.end method

.method private getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .registers 7
    .parameter "sp"
    .parameter "swipe"

    .prologue
    const v3, 0x7f0c0125

    const/4 v1, 0x0

    .line 2915
    .line 2916
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2915
    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2918
    .local v0, gesture:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2956
    :cond_16
    :goto_16
    return v1

    .line 2920
    :cond_17
    const v2, 0x7f0c0126

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2921
    const/4 v1, 0x1

    goto :goto_16

    .line 2922
    :cond_26
    const v2, 0x7f0c0127

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2923
    const/4 v1, 0x2

    goto :goto_16

    .line 2924
    :cond_35
    const v2, 0x7f0c0128

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 2925
    const/4 v1, 0x3

    goto :goto_16

    .line 2927
    :cond_44
    const v2, 0x7f0c0129

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 2928
    const/4 v1, 0x4

    goto :goto_16

    .line 2930
    :cond_53
    const v2, 0x7f0c012a

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2931
    const/4 v1, 0x5

    goto :goto_16

    .line 2932
    :cond_62
    const v2, 0x7f0c012b

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 2933
    const/4 v1, 0x6

    goto :goto_16

    .line 2934
    :cond_71
    const v2, 0x7f0c012c

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 2935
    const/4 v1, 0x7

    goto :goto_16

    .line 2936
    :cond_80
    const v2, 0x7f0c0130

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 2937
    const/16 v1, 0xb

    goto :goto_16

    .line 2938
    :cond_90
    const v2, 0x7f0c012f

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a1

    .line 2939
    const/16 v1, 0xa

    goto/16 :goto_16

    .line 2940
    :cond_a1
    const v2, 0x7f0c012d

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b2

    .line 2941
    const/16 v1, 0x8

    goto/16 :goto_16

    .line 2942
    :cond_b2
    const v2, 0x7f0c012e

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    .line 2943
    const/16 v1, 0x9

    goto/16 :goto_16

    .line 2946
    :cond_c3
    const v2, 0x7f0c0131

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 2947
    const/16 v1, 0xc

    goto/16 :goto_16

    .line 2949
    :cond_d4
    const v2, 0x7f0c0132

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e5

    .line 2950
    const/16 v1, 0xd

    goto/16 :goto_16

    .line 2952
    :cond_e5
    const v2, 0x7f0c0133

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2953
    const/16 v1, 0xe

    goto/16 :goto_16
.end method

.method private getTypedSuggestions(Lcom/android/inputmethod/latin/WordComposer;)Ljava/util/List;
    .registers 7
    .parameter "word"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/inputmethod/latin/WordComposer;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2688
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2689
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1e

    .line 2690
    const/4 v2, 0x0

    .line 2695
    .local v2, prevWord:Ljava/lang/CharSequence;
    :goto_7
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 2696
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v4

    .line 2695
    invoke-virtual {v3, p1, v2, v4}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWordBuilder(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    .line 2698
    .local v0, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v3

    iget-object v3, v3, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    return-object v3

    .line 2692
    .end local v0           #builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .end local v2           #prevWord:Ljava/lang/CharSequence;
    :cond_1e
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/inputmethod/latin/EditingUtils;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #prevWord:Ljava/lang/CharSequence;
    goto :goto_7
.end method

.method private handleArrow(I)V
    .registers 2
    .parameter "primaryCode"

    .prologue
    .line 3054
    return-void
.end method

.method private handleBackspace(Z)V
    .registers 11
    .parameter "justReplacedDoubleSpace"

    .prologue
    const/16 v8, 0x43

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1444
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v6}, Lcom/android/inputmethod/deprecated/VoiceProxy;->logAndRevertVoiceInput()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1514
    :cond_c
    :goto_c
    return-void

    .line 1446
    :cond_d
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1447
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_c

    .line 1448
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1450
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v6}, Lcom/android/inputmethod/deprecated/VoiceProxy;->handleBackspace()V

    .line 1452
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-eqz v6, :cond_6f

    move v0, v4

    .line 1453
    .local v0, deleteChar:Z
    :goto_20
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-eqz v6, :cond_5a

    .line 1454
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1455
    .local v2, length:I
    if-lez v2, :cond_7a

    .line 1456
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1457
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/WordComposer;->deleteLast()V

    .line 1459
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/ComposingStateManager;->isAutoCorrectionIndicatorOn()Z

    move-result v6

    if-eqz v6, :cond_71

    .line 1461
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    .line 1460
    invoke-static {p0, v6}, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->getTextWithAutoCorrectionIndicatorUnderline(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1463
    .local v3, textWithUnderline:Ljava/lang/CharSequence;
    :goto_46
    invoke-interface {v1, v3, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1464
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-nez v6, :cond_53

    .line 1465
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 1467
    :cond_53
    if-ne v5, v2, :cond_74

    .line 1470
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateBigramPredictions()V

    .line 1479
    .end local v2           #length:I
    .end local v3           #textWithUnderline:Ljava/lang/CharSequence;
    :cond_5a
    :goto_5a
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateShiftKeyState()V

    .line 1481
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->backspace()V

    .line 1482
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isUndoCommit()Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 1483
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->revertLastWord(Landroid/view/inputmethod/InputConnection;)V

    .line 1484
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_c

    .end local v0           #deleteChar:Z
    :cond_6f
    move v0, v5

    .line 1452
    goto :goto_20

    .line 1462
    .restart local v0       #deleteChar:Z
    .restart local v2       #length:I
    :cond_71
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    goto :goto_46

    .line 1473
    .restart local v3       #textWithUnderline:Ljava/lang/CharSequence;
    :cond_74
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    goto :goto_5a

    .line 1476
    .end local v3           #textWithUnderline:Ljava/lang/CharSequence;
    :cond_7a
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_5a

    .line 1487
    .end local v2           #length:I
    :cond_7e
    if-eqz p1, :cond_8a

    .line 1488
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->revertDoubleSpace(Landroid/view/inputmethod/InputConnection;)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 1489
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_c

    .line 1494
    :cond_8a
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_a4

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v5}, Lcom/android/inputmethod/latin/LatinIME;->sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 1495
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1513
    :cond_9f
    :goto_9f
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_c

    .line 1496
    :cond_a4
    if-eqz v0, :cond_9f

    .line 1497
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v4, :cond_b6

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/SuggestionsView;->dismissAddToDictionaryHint()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 1505
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->revertLastWord(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_9f

    .line 1507
    :cond_b6
    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 1508
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_9f

    .line 1509
    invoke-virtual {p0, v8}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    goto :goto_9f
.end method

.method private handleCharacter(I[III)V
    .registers 14
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1540
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v5}, Lcom/android/inputmethod/deprecated/VoiceProxy;->handleCharacter()V

    .line 1542
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v5, p1}, Lcom/android/inputmethod/latin/Settings$Values;->isMagicSpaceStripper(I)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1543
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->removeTrailingSpace()V

    .line 1546
    :cond_16
    move v0, p1

    .line 1547
    .local v0, code:I
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->isAlphabet(I)Z

    move-result v5

    if-nez v5, :cond_25

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v5, v0}, Lcom/android/inputmethod/latin/Settings$Values;->isSymbolExcludedFromWordSeparators(I)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 1548
    :cond_25
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v5

    if-nez v5, :cond_4e

    .line 1549
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v5, :cond_4e

    .line 1550
    iput-boolean v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 1551
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1552
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->saveWordInHistory(Ljava/lang/CharSequence;)V

    .line 1553
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1554
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 1555
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/ComposingStateManager;->onFinishComposingText()V

    .line 1558
    :cond_4e
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1559
    .local v2, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v5

    if-eqz v5, :cond_93

    .line 1560
    if-eqz p2, :cond_63

    aget v5, p2, v7

    if-ltz v5, :cond_63

    .line 1561
    aget v5, p2, v7

    const v6, 0x10ffff

    if-le v5, v6, :cond_64

    .line 1609
    :cond_63
    :goto_63
    return-void

    .line 1564
    :cond_64
    aget v0, p2, v7

    .line 1565
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v5

    if-eqz v5, :cond_93

    invoke-static {v0}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_93

    .line 1568
    new-instance v5, Ljava/lang/String;

    new-array v6, v8, [I

    aput v0, v6, v7

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([III)V

    .line 1569
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocale()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 1570
    .local v4, upperCaseString:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->codePointCount(II)I

    move-result v5

    if-ne v5, v8, :cond_f2

    .line 1571
    invoke-virtual {v4, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1579
    .end local v4           #upperCaseString:Ljava/lang/String;
    :cond_93
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-eqz v5, :cond_fa

    .line 1580
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1581
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5, v0, p2, p3, p4}, Lcom/android/inputmethod/latin/WordComposer;->add(I[III)V

    .line 1582
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1583
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_cf

    .line 1585
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v5

    if-ne v5, v8, :cond_be

    .line 1586
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentAutoCapsState()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/WordComposer;->setAutoCapitalized(Z)V

    .line 1587
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/ComposingStateManager;->onStartComposingText()V

    .line 1590
    :cond_be
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/ComposingStateManager;->isAutoCorrectionIndicatorOn()Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 1592
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    .line 1591
    invoke-static {p0, v5}, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->getTextWithAutoCorrectionIndicatorUnderline(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1594
    .local v3, textWithUnderline:Ljava/lang/CharSequence;
    :goto_cc
    invoke-interface {v1, v3, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1596
    .end local v3           #textWithUnderline:Ljava/lang/CharSequence;
    :cond_cf
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 1600
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_d4
    iget-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    if-eqz v5, :cond_ff

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v5, p1}, Lcom/android/inputmethod/latin/Settings$Values;->isMagicSpaceSwapper(I)Z

    move-result v5

    if-eqz v5, :cond_ff

    .line 1601
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->swapSwapperAndSpace()V

    .line 1606
    :goto_e3
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1608
    int-to-char v5, v0

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v6, v0}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v6

    invoke-static {v5, v6, p3, p4}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZII)V

    goto/16 :goto_63

    .line 1574
    .restart local v4       #upperCaseString:Ljava/lang/String;
    :cond_f2
    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->onTextInput(Ljava/lang/CharSequence;)V

    goto/16 :goto_63

    .line 1593
    .end local v4           #upperCaseString:Ljava/lang/String;
    .restart local v1       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_f7
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    goto :goto_cc

    .line 1598
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_fa
    int-to-char v5, v0

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    goto :goto_d4

    .line 1603
    :cond_ff
    iput-boolean v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    goto :goto_e3
.end method

.method private handleClose()V
    .registers 3

    .prologue
    .line 1687
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1688
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->handleClose()V

    .line 1689
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->requestHideSelf(I)V

    .line 1690
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 1691
    .local v0, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_1b

    .line 1692
    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 1693
    :cond_1b
    return-void
.end method

.method private handleSeparator(III)V
    .registers 12
    .parameter "primaryCode"
    .parameter "x"
    .parameter "y"

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1612
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v6}, Lcom/android/inputmethod/deprecated/VoiceProxy;->handleSeparator()V

    .line 1613
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/ComposingStateManager;->onFinishComposingText()V

    .line 1616
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v6, :cond_24

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/SuggestionsView;->dismissAddToDictionaryHint()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1617
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateBigramPredictions()V

    .line 1618
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 1621
    :cond_24
    const/4 v1, 0x0

    .line 1623
    .local v1, pickedDefault:Z
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1624
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2e

    .line 1625
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1627
    :cond_2e
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-eqz v6, :cond_4a

    .line 1632
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v6, v6, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v6, :cond_ae

    .line 1633
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v6, :cond_ae

    move v2, v4

    .line 1634
    .local v2, shouldAutoCorrect:Z
    :goto_3d
    if-eqz v2, :cond_b0

    const/16 v6, 0x27

    if-eq p1, v6, :cond_b0

    .line 1635
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->pickDefaultSuggestion(I)Z

    move-result v1

    .line 1636
    invoke-direct {p0, p1, v1}, Lcom/android/inputmethod/latin/LatinIME;->SendSpaceAfterPunc(IZ)V

    .line 1643
    .end local v2           #shouldAutoCorrect:Z
    :cond_4a
    :goto_4a
    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    if-eqz v6, :cond_c6

    .line 1644
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v6, p1}, Lcom/android/inputmethod/latin/Settings$Values;->isMagicSpaceSwapper(I)Z

    move-result v6

    if-eqz v6, :cond_b4

    .line 1645
    int-to-char v5, p1

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    .line 1646
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->swapSwapperAndSpace()V

    .line 1656
    :goto_5d
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v5

    if-eqz v5, :cond_68

    if-ne p1, v7, :cond_68

    .line 1657
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->maybeDoubleSpace()V

    .line 1660
    :cond_68
    int-to-char v5, p1

    invoke-static {v5, v4, p2, p3}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZII)V

    .line 1662
    if-eqz v1, :cond_91

    .line 1663
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v3

    .line 1664
    .local v3, typedWord:Ljava/lang/CharSequence;
    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->backToAcceptedDefault(Ljava/lang/CharSequence;)V

    .line 1665
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_91

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_91

    .line 1667
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 1666
    invoke-static {v0, v4, v3, v5}, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->commitCorrection(Landroid/view/inputmethod/InputConnection;ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1670
    .end local v3           #typedWord:Ljava/lang/CharSequence;
    :cond_91
    if-ne v7, p1, :cond_cb

    .line 1671
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v4

    if-nez v4, :cond_a3

    .line 1672
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestions()V

    .line 1673
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateBigramPredictions()V

    .line 1680
    :cond_a3
    :goto_a3
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1681
    if-eqz v0, :cond_ad

    .line 1682
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1684
    :cond_ad
    return-void

    :cond_ae
    move v2, v5

    .line 1633
    goto :goto_3d

    .line 1639
    .restart local v2       #shouldAutoCorrect:Z
    :cond_b0
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_4a

    .line 1648
    .end local v2           #shouldAutoCorrect:Z
    :cond_b4
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v6, p1}, Lcom/android/inputmethod/latin/Settings$Values;->isMagicSpaceStripper(I)Z

    move-result v6

    if-eqz v6, :cond_bf

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->removeTrailingSpace()V

    .line 1649
    :cond_bf
    int-to-char v6, p1

    invoke-virtual {p0, v6}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    .line 1650
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    goto :goto_5d

    .line 1653
    :cond_c6
    int-to-char v5, p1

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    goto :goto_5d

    .line 1678
    :cond_cb
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_a3
.end method

.method private handleTab()V
    .registers 5

    .prologue
    .line 1517
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    iget v1, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1518
    .local v1, imeOptions:I
    invoke-static {v1}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->hasFlagNavigateNext(I)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1519
    invoke-static {v1}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->hasFlagNavigatePrevious(I)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1520
    const/16 v3, 0x3d

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 1537
    :cond_17
    :goto_17
    return-void

    .line 1524
    :cond_18
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1525
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_17

    .line 1529
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isManualTemporaryUpperCase()Z

    move-result v2

    .line 1530
    .local v2, isManualTemporaryUpperCase:Z
    invoke-static {v1}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->hasFlagNavigateNext(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 1531
    if-nez v2, :cond_30

    .line 1532
    invoke-static {v0}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->performEditorActionNext(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_17

    .line 1533
    :cond_30
    invoke-static {v1}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->hasFlagNavigatePrevious(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1534
    if-eqz v2, :cond_17

    .line 1535
    invoke-static {v0}, Lcom/android/inputmethod/compat/EditorInfoCompatUtils;->performEditorActionPrevious(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_17
.end method

.method private initSuggest()V
    .registers 10

    .prologue
    .line 544
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, localeStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 547
    .local v0, keyboardLocale:Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 548
    .local v4, res:Landroid/content/res/Resources;
    invoke-static {v4, v0}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v5

    .line 550
    .local v5, savedLocale:Ljava/util/Locale;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v6, :cond_77

    .line 551
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Suggest;->getContactsDictionary()Lcom/android/inputmethod/latin/ContactsDictionary;

    move-result-object v3

    .line 552
    .local v3, oldContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 557
    :goto_1f
    invoke-static {v4}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v2

    .line 558
    .local v2, mainDicResId:I
    new-instance v6, Lcom/android/inputmethod/latin/Suggest;

    invoke-direct {v6, p0, v2, v0}, Lcom/android/inputmethod/latin/Suggest;-><init>(Landroid/content/Context;ILjava/util/Locale;)V

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 559
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v6, v6, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v6, :cond_39

    .line 560
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-wide v7, v7, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectionThreshold:D

    invoke-virtual {v6, v7, v8}, Lcom/android/inputmethod/latin/Suggest;->setAutoCorrectionThreshold(D)V

    .line 563
    :cond_39
    new-instance v6, Lcom/android/inputmethod/latin/UserDictionary;

    invoke-direct {v6, p0, v1}, Lcom/android/inputmethod/latin/UserDictionary;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    .line 564
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/Suggest;->setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 565
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    invoke-virtual {v6}, Lcom/android/inputmethod/latin/UserDictionary;->isEnabled()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsUserDictionaryAvaliable:Z

    .line 567
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->resetContactsDictionary(Lcom/android/inputmethod/latin/ContactsDictionary;)V

    .line 570
    new-instance v6, Lcom/android/inputmethod/latin/UserUnigramDictionary;

    const/4 v7, 0x3

    invoke-direct {v6, p0, p0, v1, v7}, Lcom/android/inputmethod/latin/UserUnigramDictionary;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;I)V

    .line 569
    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    .line 571
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/Suggest;->setUserUnigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 574
    new-instance v6, Lcom/android/inputmethod/latin/UserBigramDictionary;

    const/4 v7, 0x5

    invoke-direct {v6, p0, p0, v1, v7}, Lcom/android/inputmethod/latin/UserBigramDictionary;-><init>(Landroid/content/Context;Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/String;I)V

    .line 573
    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    .line 575
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/Suggest;->setUserBigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V

    .line 577
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateCorrectionMode()V

    .line 579
    invoke-static {v4, v5}, Lcom/android/inputmethod/latin/LocaleUtils;->setSystemLocale(Landroid/content/res/Resources;Ljava/util/Locale;)Ljava/util/Locale;

    .line 580
    return-void

    .line 554
    .end local v2           #mainDicResId:I
    .end local v3           #oldContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;
    :cond_77
    const/4 v3, 0x0

    .restart local v3       #oldContactsDictionary:Lcom/android/inputmethod/latin/ContactsDictionary;
    goto :goto_1f
.end method

.method private initializeInputAttributes(Landroid/view/inputmethod/EditorInfo;)V
    .registers 12
    .parameter "attribute"

    .prologue
    const v9, 0x8000

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 796
    if-nez p1, :cond_8

    .line 874
    :goto_7
    return-void

    .line 798
    :cond_8
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 799
    .local v1, inputType:I
    if-nez v1, :cond_13

    .line 801
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v6, "InputType.TYPE_NULL is specified"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_13
    and-int/lit8 v0, v1, 0xf

    .line 804
    .local v0, inputClass:I
    and-int/lit16 v2, v1, 0xff0

    .line 805
    .local v2, variation:I
    if-nez v0, :cond_35

    .line 806
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v6, "Unexpected input class: inputType=0x%08x imeOptions=0x%08x"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    .line 807
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget v8, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    .line 806
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :cond_35
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mShouldInsertMagicSpace:Z

    .line 811
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 812
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 813
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    .line 814
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 816
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mAlwaysSuggest:Z

    if-eqz v3, :cond_c8

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_c8

    move v3, v4

    :goto_4d
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 817
    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.email"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 819
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mAlwaysSuggest:Z

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 822
    :cond_5f
    if-ne v0, v4, :cond_c3

    .line 823
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 825
    invoke-static {v1}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 826
    invoke-static {v1}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isVisiblePasswordInputType(I)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 827
    :cond_6f
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 829
    :cond_71
    invoke-static {v2}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isEmailVariation(I)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 830
    const/16 v3, 0x60

    if-ne v2, v3, :cond_ca

    .line 831
    :cond_7b
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mShouldInsertMagicSpace:Z

    .line 835
    :goto_7d
    invoke-static {v2}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isEmailVariation(I)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 836
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mAlwaysSuggest:Z

    if-eqz v3, :cond_cd

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_cd

    move v3, v4

    :goto_90
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 837
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mFieldUrlOrWeb:Z

    .line 839
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 857
    :cond_96
    :goto_96
    const/high16 v3, 0x8

    and-int/2addr v3, v1

    if-eqz v3, :cond_9f

    .line 858
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 859
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 862
    :cond_9f
    and-int v3, v1, v9

    if-nez v3, :cond_aa

    .line 863
    const/high16 v3, 0x2

    and-int/2addr v3, v1

    if-nez v3, :cond_aa

    .line 864
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    .line 866
    :cond_aa
    const/high16 v3, 0x1

    and-int/2addr v3, v1

    if-eqz v3, :cond_c3

    .line 867
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mAlwaysSuggest:Z

    if-eqz v3, :cond_10a

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_10a

    :goto_bb
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 869
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    .line 873
    :cond_c3
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->checkReCorrectionOnStart()V

    goto/16 :goto_7

    :cond_c8
    move v3, v5

    .line 816
    goto :goto_4d

    .line 833
    :cond_ca
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mShouldInsertMagicSpace:Z

    goto :goto_7d

    :cond_cd
    move v3, v5

    .line 836
    goto :goto_90

    .line 840
    :cond_cf
    const/16 v3, 0x10

    if-ne v2, v3, :cond_e9

    .line 841
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mAlwaysSuggest:Z

    if-eqz v3, :cond_e7

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_e7

    move v3, v4

    :goto_e0
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    .line 842
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mFieldUrlOrWeb:Z

    .line 844
    iput-boolean v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    goto :goto_96

    :cond_e7
    move v3, v5

    .line 841
    goto :goto_e0

    .line 845
    :cond_e9
    const/16 v3, 0xb0

    if-ne v2, v3, :cond_ff

    .line 846
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mAlwaysSuggest:Z

    if-eqz v3, :cond_fd

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_fd

    move v3, v4

    :goto_fa
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    goto :goto_96

    :cond_fd
    move v3, v5

    goto :goto_fa

    .line 848
    :cond_ff
    const/16 v3, 0xa0

    if-ne v2, v3, :cond_96

    .line 851
    and-int v3, v1, v9

    if-nez v3, :cond_96

    .line 852
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    goto :goto_96

    :cond_10a
    move v4, v5

    .line 867
    goto :goto_bb
.end method

.method private isAlphabet(I)Z
    .registers 3
    .parameter "code"

    .prologue
    .line 1304
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1305
    const/4 v0, 0x1

    .line 1307
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isPredictionOn()Z
    .registers 2

    .prologue
    .line 2710
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    return v0
.end method

.method private isShowingOptionDialog()Z
    .registers 2

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private isWordURLorEmail()Z
    .registers 6

    .prologue
    .line 2713
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2714
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_40

    .line 2716
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 2717
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v4, v4, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    .line 2716
    invoke-static {v0, v2, v3, v4}, Lcom/android/inputmethod/latin/EditingUtils;->getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;

    move-result-object v1

    .line 2719
    .local v1, wordAtCursor:Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 2720
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "www"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 2721
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 2722
    :cond_3e
    const/4 v2, 0x1

    .line 2725
    .end local v1           #wordAtCursor:Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;
    :goto_3f
    return v2

    :cond_40
    const/4 v2, 0x0

    goto :goto_3f
.end method

.method private maybeDoubleSpace()V
    .registers 9

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1251
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    if-nez v2, :cond_b

    .line 1270
    :cond_a
    :goto_a
    return-void

    .line 1252
    :cond_b
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1253
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_a

    .line 1254
    invoke-interface {v0, v6, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1255
    .local v1, lastThree:Ljava/lang/CharSequence;
    if-eqz v1, :cond_56

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v6, :cond_56

    .line 1256
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/inputmethod/latin/Utils;->canBeFollowedByPeriod(I)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1257
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_56

    .line 1258
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_56

    .line 1259
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->isAcceptingDoubleSpaces()Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1260
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 1261
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1262
    invoke-interface {v0, v5, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1263
    const-string v2, ". "

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1264
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1265
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1266
    iput-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustReplacedDoubleSpace:Z

    goto :goto_a

    .line 1268
    :cond_56
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startDoubleSpacesTimer()V

    goto :goto_a
.end method

.method private maybeRemovePreviousPeriod(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .registers 8
    .parameter "ic"
    .parameter "text"

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1276
    invoke-interface {p1, v3, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1277
    .local v0, lastOne:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1f

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v3, :cond_1f

    .line 1278
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1f

    .line 1279
    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v4, :cond_1f

    .line 1280
    invoke-interface {p1, v3, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1282
    :cond_1f
    return-void
.end method

.method private measureCps()V
    .registers 10

    .prologue
    .line 2476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2477
    .local v1, now:J
    iget-wide v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastCpsTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_12

    const-wide/16 v5, 0x64

    sub-long v5, v1, v5

    iput-wide v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastCpsTime:J

    .line 2478
    :cond_12
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIntervals:[J

    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIndex:I

    iget-wide v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastCpsTime:J

    sub-long v7, v1, v7

    aput-wide v7, v5, v6

    .line 2479
    iput-wide v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastCpsTime:J

    .line 2480
    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIndex:I

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIndex:I

    .line 2481
    const-wide/16 v3, 0x0

    .line 2482
    .local v3, total:J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    const/16 v5, 0x10

    if-lt v0, v5, :cond_46

    .line 2483
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CPS = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0x467a

    long-to-float v8, v3

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2484
    return-void

    .line 2482
    :cond_46
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mCpsIntervals:[J

    aget-wide v5, v5, v0

    add-long/2addr v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_29
.end method

.method private onFinishInputInternal()V
    .registers 4

    .prologue
    .line 884
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onFinishInput()V

    .line 886
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 888
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/deprecated/VoiceProxy;->flushVoiceInputLogs(Z)V

    .line 890
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 891
    .local v0, inputView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 892
    :cond_18
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserUnigramDictionary:Lcom/android/inputmethod/latin/UserUnigramDictionary;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/UserUnigramDictionary;->flushPendingWrites()V

    .line 893
    :cond_21
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserBigramDictionary:Lcom/android/inputmethod/latin/UserBigramDictionary;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/UserBigramDictionary;->flushPendingWrites()V

    .line 894
    :cond_2a
    return-void
.end method

.method private onFinishInputViewInternal(Z)V
    .registers 4
    .parameter "finishingInput"

    .prologue
    .line 897
    invoke-super {p0, p1}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onFinishInputView(Z)V

    .line 898
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onFinishInputView()V

    .line 899
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 900
    .local v0, inputView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->cancelAllMessages()V

    .line 902
    :cond_13
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestions()V

    .line 903
    return-void
.end method

.method private onSettingsKeyPressed()V
    .registers 3

    .prologue
    .line 1312
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1320
    :goto_6
    return-void

    .line 1315
    :cond_7
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/Utils;->hasMultipleEnabledIMEsOrSubtypes(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1316
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->showOptionsMenu()V

    goto :goto_6

    .line 1318
    :cond_14
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettings()V

    goto :goto_6
.end method

.method private onStartInputInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 3
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 716
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 717
    return-void
.end method

.method private onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 15
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 720
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 721
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 722
    .local v3, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v2

    .line 724
    .local v2, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    sget-boolean v5, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v5, :cond_27

    .line 725
    sget-object v8, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v5, "onStartInputView: attribute:"

    invoke-direct {v9, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2a

    const-string v5, "none"

    .line 726
    :goto_1c
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 725
    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_27
    if-nez v2, :cond_44

    .line 793
    :goto_29
    return-void

    .line 726
    :cond_2a
    const-string v5, "inputType=0x%08x imeOptions=0x%08x"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 727
    iget v11, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    iget v11, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    .line 726
    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1c

    .line 735
    :cond_44
    invoke-static {}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->getInstance()Lcom/android/inputmethod/accessibility/AccessibilityUtils;

    move-result-object v0

    .line 736
    .local v0, accessUtils:Lcom/android/inputmethod/accessibility/AccessibilityUtils;
    invoke-virtual {v0}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_51

    .line 737
    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->onStartInputViewInternal(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 740
    :cond_51
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->updateParametersOnStartInputView()V

    .line 742
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 747
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    .line 748
    .local v4, voiceIme:Lcom/android/inputmethod/deprecated/VoiceProxy;
    if-eqz p1, :cond_ee

    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 749
    .local v1, inputType:I
    :goto_5f
    invoke-static {v1}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isPasswordInputType(I)Z

    move-result v5

    if-nez v5, :cond_f1

    .line 750
    invoke-static {v1}, Lcom/android/inputmethod/compat/InputTypeCompatUtils;->isVisiblePasswordInputType(I)Z

    move-result v5

    if-nez v5, :cond_f1

    move v5, v6

    .line 749
    :goto_6c
    invoke-virtual {v4, v5}, Lcom/android/inputmethod/deprecated/VoiceProxy;->resetVoiceStates(Z)V

    .line 752
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->initializeInputAttributes(Landroid/view/inputmethod/EditorInfo;)V

    .line 754
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->closing()V

    .line 755
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 756
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 757
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 758
    iput v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 759
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 760
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustReplacedDoubleSpace:Z

    .line 762
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 763
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateCorrectionMode()V

    .line 764
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-direct {p0, v5, v8}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestionVisibility(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V

    .line 766
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v5, :cond_a5

    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v5, v5, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v5, :cond_a5

    .line 767
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-wide v8, v8, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectionThreshold:D

    invoke-virtual {v5, v8, v9}, Lcom/android/inputmethod/latin/Suggest;->setAutoCorrectionThreshold(D)V

    .line 769
    :cond_a5
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {v5, p1, v8}, Lcom/android/inputmethod/deprecated/VoiceProxy;->loadSettings(Landroid/view/inputmethod/EditorInfo;Landroid/content/SharedPreferences;)V

    .line 771
    invoke-static {}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->loadSettings()V

    .line 773
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isKeyboardMode()Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 774
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v3, p1, v5, v6}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/android/inputmethod/latin/Settings$Values;Z)V

    .line 776
    :cond_bc
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 777
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v5, :cond_c8

    .line 778
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SuggestionsView;->clear()V

    .line 780
    :cond_c8
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateFullscreenMode()V

    .line 782
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsStripVisible()Z

    move-result v5

    .line 781
    invoke-direct {p0, v5, v6}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShownInternal(ZZ)V

    .line 784
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 786
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v5, v5, Lcom/android/inputmethod/latin/Settings$Values;->mKeyPreviewPopupOn:Z

    .line 787
    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget v6, v6, Lcom/android/inputmethod/latin/Settings$Values;->mKeyPreviewPopupDismissDelay:I

    .line 786
    invoke-virtual {v2, v5, v6}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setKeyPreviewPopupEnabled(ZI)V

    .line 788
    invoke-virtual {v2, v7}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->setProximityCorrectionEnabled(Z)V

    .line 790
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/inputmethod/deprecated/VoiceProxy;->onStartInputView(Landroid/os/IBinder;)V

    goto/16 :goto_29

    .end local v1           #inputType:I
    :cond_ee
    move v1, v6

    .line 748
    goto/16 :goto_5f

    .restart local v1       #inputType:I
    :cond_f1
    move v5, v7

    .line 750
    goto/16 :goto_6c
.end method

.method private pickDefaultSuggestion(I)Z
    .registers 6
    .parameter "separatorCode"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1871
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->hasPendingUpdateSuggestions()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1872
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestions()V

    .line 1873
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 1875
    :cond_12
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_36

    .line 1876
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-static {v2, v3, p1}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedDefault(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 1877
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1878
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v1}, Lcom/android/inputmethod/latin/LatinIME;->commitBestWord(Ljava/lang/CharSequence;Z)V

    .line 1880
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v0}, Lcom/android/inputmethod/latin/LatinIME;->addToUserUnigramAndBigramDictionaries(Ljava/lang/CharSequence;I)V

    .line 1884
    :goto_35
    return v0

    :cond_36
    move v0, v1

    goto :goto_35
.end method

.method private playKeyClick(I)V
    .registers 5
    .parameter "primaryCode"

    .prologue
    .line 2300
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_f

    .line 2301
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 2302
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateRingerMode()V

    .line 2305
    :cond_f
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSoundOn()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 2307
    sparse-switch p1, :sswitch_data_28

    .line 2318
    const/4 v0, 0x5

    .line 2321
    .local v0, sound:I
    :goto_19
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mFxVolume:F

    invoke-virtual {v1, v0, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 2323
    .end local v0           #sound:I
    :cond_20
    return-void

    .line 2309
    :sswitch_21
    const/4 v0, 0x7

    .line 2310
    .restart local v0       #sound:I
    goto :goto_19

    .line 2312
    .end local v0           #sound:I
    :sswitch_23
    const/16 v0, 0x8

    .line 2313
    .restart local v0       #sound:I
    goto :goto_19

    .line 2315
    .end local v0           #sound:I
    :sswitch_26
    const/4 v0, 0x6

    .line 2316
    .restart local v0       #sound:I
    goto :goto_19

    .line 2307
    :sswitch_data_28
    .sparse-switch
        -0x5 -> :sswitch_21
        0xa -> :sswitch_23
        0x20 -> :sswitch_26
    .end sparse-switch
.end method

.method private removeTrailingSpace()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1285
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1286
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_9

    .line 1293
    :cond_8
    :goto_8
    return-void

    .line 1288
    :cond_9
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1289
    .local v1, lastOne:Ljava/lang/CharSequence;
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 1290
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_8

    .line 1291
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_8
.end method

.method private resetContactsDictionary(Lcom/android/inputmethod/latin/ContactsDictionary;)V
    .registers 5
    .parameter "oldContactsDictionary"

    .prologue
    .line 592
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/Settings$Values;->mUseContactsDict:Z

    if-eqz v2, :cond_1d

    const/4 v1, 0x1

    .line 595
    .local v1, shouldSetDictionary:Z
    :goto_b
    if-nez v1, :cond_1f

    .line 598
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/ContactsDictionary;->close()V

    .line 599
    :cond_12
    const/4 v0, 0x0

    .line 609
    .local v0, dictionaryToUse:Lcom/android/inputmethod/latin/ContactsDictionary;
    :goto_13
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v2, :cond_1c

    .line 610
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v2, v0}, Lcom/android/inputmethod/latin/Suggest;->setContactsDictionary(Lcom/android/inputmethod/latin/ContactsDictionary;)V

    .line 612
    :cond_1c
    return-void

    .line 592
    .end local v0           #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsDictionary;
    .end local v1           #shouldSetDictionary:Z
    :cond_1d
    const/4 v1, 0x0

    goto :goto_b

    .line 600
    .restart local v1       #shouldSetDictionary:Z
    :cond_1f
    if-eqz p1, :cond_26

    .line 603
    invoke-virtual {p1, p0}, Lcom/android/inputmethod/latin/ContactsDictionary;->reopen(Landroid/content/Context;)V

    .line 604
    move-object v0, p1

    .restart local v0       #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsDictionary;
    goto :goto_13

    .line 606
    .end local v0           #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsDictionary;
    :cond_26
    new-instance v0, Lcom/android/inputmethod/latin/ContactsDictionary;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, Lcom/android/inputmethod/latin/ContactsDictionary;-><init>(Landroid/content/Context;I)V

    .restart local v0       #dictionaryToUse:Lcom/android/inputmethod/latin/ContactsDictionary;
    goto :goto_13
.end method

.method private revertDoubleSpace(Landroid/view/inputmethod/InputConnection;)Z
    .registers 7
    .parameter "ic"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2188
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelDoubleSpacesTimer()V

    .line 2191
    invoke-interface {p1, v4, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2192
    .local v0, textBeforeCursor:Ljava/lang/CharSequence;
    const-string v3, ". "

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 2198
    :goto_14
    return v1

    .line 2194
    :cond_15
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2195
    invoke-interface {p1, v4, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2196
    const-string v1, "  "

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2197
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    move v1, v2

    .line 2198
    goto :goto_14
.end method

.method private revertLastWord(Landroid/view/inputmethod/InputConnection;)V
    .registers 10
    .parameter "ic"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2145
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_15

    .line 2146
    :cond_f
    const/16 v3, 0x43

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->sendDownUpKeyEvents(I)V

    .line 2184
    :goto_14
    return-void

    .line 2150
    :cond_15
    invoke-interface {p1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2151
    .local v0, separator:Ljava/lang/CharSequence;
    invoke-interface {p1, v6, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2152
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 2153
    .local v2, toDelete:I
    invoke-interface {p1, v2, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2154
    .local v1, textToTheLeft:Ljava/lang/CharSequence;
    if-eqz v1, :cond_3c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_3c

    .line 2155
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2156
    add-int/lit8 v2, v2, 0x1

    .line 2158
    :cond_3c
    if-eqz v1, :cond_50

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_50

    .line 2159
    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 2160
    add-int/lit8 v2, v2, -0x1

    .line 2162
    :cond_50
    invoke-interface {p1, v2, v5}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 2168
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 2169
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_91

    .line 2170
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v3, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2171
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 2172
    invoke-interface {p1, v0, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2173
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, v6, v7, v7}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZII)V

    .line 2176
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2182
    :goto_86
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateBigramPredictions()V

    .line 2183
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    goto :goto_14

    .line 2178
    :cond_91
    iput-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 2179
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v3, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2180
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->backspace()V

    goto :goto_86
.end method

.method private sameAsTextBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)Z
    .registers 6
    .parameter "ic"
    .parameter "text"

    .prologue
    .line 2139
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2140
    .local v0, beforeText:Ljava/lang/CharSequence;
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private saveWordInHistory(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "result"

    .prologue
    .line 2486
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_f

    .line 2487
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 2501
    :cond_e
    :goto_e
    return-void

    .line 2491
    :cond_f
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 2497
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2498
    .local v1, resultCopy:Ljava/lang/String;
    new-instance v0, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;

    .line 2499
    new-instance v2, Lcom/android/inputmethod/latin/WordComposer;

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-direct {v2, v3}, Lcom/android/inputmethod/latin/WordComposer;-><init>(Lcom/android/inputmethod/latin/WordComposer;)V

    .line 2498
    invoke-direct {v0, p0, v1, v2}, Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;-><init>(Lcom/android/inputmethod/latin/LatinIME;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/WordComposer;)V

    .line 2500
    .local v0, entry:Lcom/android/inputmethod/latin/LatinIME$TypedWordAlternatives;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e
.end method

.method private sendMagicSpace()V
    .registers 2

    .prologue
    .line 2206
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->sendKeyChar(C)V

    .line 2207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 2208
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 2209
    return-void
.end method

.method private setOldSuggestions()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 2589
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/deprecated/VoiceProxy;->setShowingVoiceSuggestions(Z)V

    .line 2590
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v2, :cond_14

    .line 2591
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestionsView;->isShowingAddToDictionaryHint()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2624
    :cond_13
    :goto_13
    return-void

    .line 2595
    :cond_14
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2596
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_13

    .line 2598
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v2, :cond_5d

    .line 2601
    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 2602
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v4, v4, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    .line 2601
    invoke-static {v0, v2, v3, v4}, Lcom/android/inputmethod/latin/EditingUtils;->getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;

    move-result-object v1

    .line 2604
    .local v1, touching:Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;
    if-eqz v1, :cond_56

    iget-object v2, v1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v2, v5, :cond_56

    .line 2605
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2607
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v2, v1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->applyVoiceAlternatives(Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 2608
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->applyTypedAlternatives(Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 2609
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->abortCorrection(Z)V

    .line 2616
    :goto_48
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_13

    .line 2611
    :cond_4c
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->selectedForRecorrection()V

    .line 2612
    invoke-static {v0, v1}, Lcom/android/inputmethod/compat/InputConnectionCompatUtils;->underlineWord(Landroid/view/inputmethod/InputConnection;Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;)V

    .line 2613
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_48

    .line 2618
    :cond_56
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->abortCorrection(Z)V

    .line 2619
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_13

    .line 2622
    .end local v1           #touching:Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;
    :cond_5d
    invoke-direct {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->abortCorrection(Z)V

    goto :goto_13
.end method

.method private setSuggestionStripShown(Z)V
    .registers 3
    .parameter "shown"

    .prologue
    .line 1114
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShownInternal(ZZ)V

    .line 1115
    return-void
.end method

.method private setSuggestionStripShownInternal(ZZ)V
    .registers 6
    .parameter "shown"
    .parameter "needsInputViewShown"

    .prologue
    const/4 v1, 0x0

    .line 1100
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->onEvaluateInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-eqz v2, :cond_25

    .line 1101
    if-eqz p1, :cond_26

    .line 1102
    if-eqz p2, :cond_17

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_17
    const/4 v0, 0x1

    .line 1103
    .local v0, shouldShowSuggestions:Z
    :goto_18
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1104
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    .line 1105
    if-eqz v0, :cond_28

    .line 1104
    :goto_22
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    .end local v0           #shouldShowSuggestions:Z
    :cond_25
    :goto_25
    return-void

    :cond_26
    move v0, v1

    .line 1102
    goto :goto_18

    .line 1105
    .restart local v0       #shouldShowSuggestions:Z
    :cond_28
    const/16 v1, 0x8

    goto :goto_22

    .line 1107
    :cond_2b
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    .line 1108
    if-eqz v0, :cond_33

    .line 1107
    :goto_2f
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_25

    .line 1108
    :cond_33
    const/4 v1, 0x4

    goto :goto_2f
.end method

.method private showOptionsMenu()V
    .registers 7

    .prologue
    .line 2424
    const v4, 0x7f0c007b

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2425
    .local v3, title:Ljava/lang/CharSequence;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    .line 2426
    const v5, 0x7f0c00ec

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    .line 2427
    const v5, 0x7f0c007a

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 2429
    .local v1, items:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/inputmethod/latin/LatinIME$3;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/LatinIME$3;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 2442
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2443
    invoke-virtual {v4, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2444
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2445
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->showOptionDialogInternal(Landroid/app/AlertDialog;)V

    .line 2446
    return-void
.end method

.method private showRecorrections(Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;)V
    .registers 6
    .parameter "alternatives"

    .prologue
    .line 2679
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->getAlternatives()Ljava/util/List;

    move-result-object v1

    .line 2680
    .local v1, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    .line 2681
    .local v0, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWords(Ljava/util/List;Ljava/util/List;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 2683
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/inputmethod/latin/LatinIME$WordAlternatives;->getOriginalWord()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V

    .line 2684
    return-void
.end method

.method private showSubtypeSelectorAndSettings()V
    .registers 7

    .prologue
    .line 2394
    const v4, 0x7f0c007b

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2395
    .local v3, title:Ljava/lang/CharSequence;
    const/4 v4, 0x2

    new-array v1, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    .line 2397
    const v5, 0x7f0c00ee

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    .line 2398
    const v5, 0x7f0c007a

    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 2400
    .local v1, items:[Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/inputmethod/latin/LatinIME$2;

    invoke-direct {v2, p0}, Lcom/android/inputmethod/latin/LatinIME$2;-><init>(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 2417
    .local v2, listener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2418
    invoke-virtual {v4, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 2419
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2420
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/inputmethod/latin/LatinIME;->showOptionDialogInternal(Landroid/app/AlertDialog;)V

    .line 2421
    return-void
.end method

.method private swapSwapperAndSpace()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1236
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1237
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_a

    .line 1248
    :cond_9
    :goto_9
    return-void

    .line 1238
    :cond_a
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1240
    .local v1, lastTwo:Ljava/lang/CharSequence;
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v2, v5, :cond_9

    .line 1241
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_9

    .line 1242
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1243
    invoke-interface {v0, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1245
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1246
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    goto :goto_9
.end method

.method private updateCorrectionMode()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2352
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v3, :cond_35

    .line 2353
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v3, :cond_35

    move v0, v1

    .line 2354
    .local v0, shouldAutoCorrect:Z
    :goto_d
    if-eqz v0, :cond_37

    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v3, :cond_37

    .line 2355
    const/4 v1, 0x2

    .line 2354
    :cond_16
    :goto_16
    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    .line 2357
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v1, v1, Lcom/android/inputmethod/latin/Settings$Values;->mBigramSuggestionEnabled:Z

    if-eqz v1, :cond_3b

    if-eqz v0, :cond_3b

    .line 2358
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v1, v1, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    if-eqz v1, :cond_3b

    .line 2359
    const/4 v1, 0x3

    .line 2357
    :goto_27
    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    .line 2360
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v1, :cond_34

    .line 2361
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/Suggest;->setCorrectionMode(I)V

    .line 2363
    :cond_34
    return-void

    .end local v0           #shouldAutoCorrect:Z
    :cond_35
    move v0, v2

    .line 2353
    goto :goto_d

    .line 2356
    .restart local v0       #shouldAutoCorrect:Z
    :cond_37
    if-nez v0, :cond_16

    move v1, v2

    goto :goto_16

    .line 2359
    :cond_3b
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    goto :goto_27
.end method

.method private updateKeyboardHieght()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 2703
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 2704
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_1b

    .line 2705
    .local v0, portrait:Z
    :goto_10
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v1, v2, v0}, Lcom/android/inputmethod/latin/Utils;->getCurrentKeyboardHeight(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Z)I

    move-result v1

    sput v1, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardHeight:I

    .line 2706
    return-void

    .line 2704
    .end local v0           #portrait:Z
    :cond_1b
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private updateKeypressVibrationDuration()V
    .registers 3

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/Utils;->getCurrentVibrationDuration(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeypressVibrationDuration:J

    .line 2295
    return-void
.end method

.method private updateRingerMode()V
    .registers 3

    .prologue
    .line 2286
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_13

    .line 2287
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    .line 2288
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_13

    .line 2291
    :goto_12
    return-void

    .line 2290
    :cond_13
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v0, 0x1

    :goto_1d
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSilentModeOn:Z

    goto :goto_12

    :cond_20
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method private updateSoundEffectVolume()V
    .registers 7

    .prologue
    .line 2274
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0d000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 2275
    .local v2, volumePerHardwareList:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2276
    .local v1, hardwarePrefix:Ljava/lang/String;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_20
    if-lt v3, v4, :cond_23

    .line 2282
    :goto_22
    return-void

    .line 2276
    :cond_23
    aget-object v0, v2, v3

    .line 2277
    .local v0, element:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 2278
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mFxVolume:F

    goto :goto_22

    .line 2276
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_20
.end method

.method private updateSuggestionVisibility(Landroid/content/SharedPreferences;Landroid/content/res/Resources;)V
    .registers 9
    .parameter "prefs"
    .parameter "res"

    .prologue
    .line 2366
    .line 2367
    const-string v2, "show_suggestions_setting"

    .line 2368
    const v3, 0x7f0c0060

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2366
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2369
    .local v0, suggestionVisiblityStr:Ljava/lang/String;
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->SUGGESTION_VISIBILITY_VALUE_ARRAY:[I

    array-length v4, v3

    const/4 v2, 0x0

    :goto_11
    if-lt v2, v4, :cond_14

    .line 2375
    :goto_13
    return-void

    .line 2369
    :cond_14
    aget v1, v3, v2

    .line 2370
    .local v1, visibility:I
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 2371
    iput v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionVisibility:I

    goto :goto_13

    .line 2369
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method


# virtual methods
.method public addWordToDictionary(Ljava/lang/String;)Z
    .registers 4
    .parameter "word"

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mUserDictionary:Lcom/android/inputmethod/latin/UserDictionary;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lcom/android/inputmethod/latin/UserDictionary;->addWord(Ljava/lang/String;I)V

    .line 1299
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    .line 1300
    const/4 v0, 0x1

    return v0
.end method

.method public clearSuggestions()V
    .registers 2

    .prologue
    .line 1744
    sget-object v0, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1745
    return-void
.end method

.method public commitTyped(Landroid/view/inputmethod/InputConnection;)V
    .registers 4
    .parameter "ic"

    .prologue
    const/4 v1, 0x1

    .line 1211
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v0, :cond_6

    .line 1223
    :goto_5
    return-void

    .line 1212
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 1213
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2a

    .line 1214
    if-eqz p1, :cond_18

    .line 1215
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1217
    :cond_18
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 1218
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedTyped(Ljava/lang/CharSequence;)V

    .line 1219
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/android/inputmethod/latin/LatinIME;->addToUserUnigramAndBigramDictionaries(Ljava/lang/CharSequence;I)V

    .line 1222
    :cond_2a
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    goto :goto_5
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 2450
    invoke-super {p0, p1, p2, p3}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2452
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2453
    .local v0, p:Landroid/util/Printer;
    const-string v1, "LatinIME state :"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2454
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Keyboard mode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2455
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mComposingStringBuilder="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2456
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mIsSuggestionsRequested="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2457
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mCorrectionMode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2458
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mHasUncommittedTypedChars="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2459
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mAutoCorrectEnabled="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCorrectEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2460
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mShouldInsertMagicSpace="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mShouldInsertMagicSpace:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2461
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mApplicationSpecifiedCompletionOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2462
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  TextEntryState.state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->getState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2463
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mSoundOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/Settings$Values;->mSoundOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2464
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mVibrateOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/Settings$Values;->mVibrateOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2465
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mKeyPreviewPopupOn="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/Settings$Values;->mKeyPreviewPopupOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2466
    return-void
.end method

.method public getCurrentAutoCapsState()Z
    .registers 16

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2736
    const/4 v3, 0x0

    .line 2737
    .local v3, caps:I
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 2738
    .local v7, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v7, :cond_e

    .line 2739
    if-eqz v3, :cond_c

    .line 2772
    :cond_b
    :goto_b
    return v10

    :cond_c
    move v10, v11

    .line 2739
    goto :goto_b

    .line 2740
    :cond_e
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    .line 2741
    .local v4, ei:Landroid/view/inputmethod/EditorInfo;
    iget-object v12, v4, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v13, "com.android.email"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_32

    .line 2743
    iget-object v12, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v12, v12, Lcom/android/inputmethod/latin/Settings$Values;->mAutoCap:Z

    if-eqz v12, :cond_2e

    if-eqz v4, :cond_2e

    iget v12, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v12, :cond_2e

    .line 2744
    iget v12, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-interface {v7, v12}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v3

    .line 2746
    :cond_2e
    if-nez v3, :cond_b

    move v10, v11

    goto :goto_b

    .line 2751
    :cond_32
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2752
    .local v6, etr:Landroid/view/inputmethod/ExtractedTextRequest;
    iput v11, v6, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 2753
    invoke-interface {v7, v6, v11}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    .line 2754
    .local v5, et:Landroid/view/inputmethod/ExtractedText;
    if-nez v5, :cond_43

    .line 2755
    if-nez v3, :cond_b

    move v10, v11

    goto :goto_b

    .line 2757
    :cond_43
    iget v12, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v13, v5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2758
    .local v0, a:Ljava/lang/Integer;
    iget v12, v5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v13, v5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    add-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2759
    .local v1, b:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v12, v13, :cond_68

    .line 2760
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2761
    .local v9, tmp:I
    move-object v0, v1

    .line 2762
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2764
    .end local v9           #tmp:I
    :cond_68
    iget v12, v4, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 2765
    .local v8, inputtype:Ljava/lang/Integer;
    iget-object v12, v5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v12, v13, v14}, Lcom/android/inputmethod/latin/LatinIME;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    .line 2766
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2767
    .local v2, cappim:Ljava/lang/Integer;
    if-eqz v4, :cond_c9

    .line 2768
    sget-object v12, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "(((((((((caps ="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "ei.inputType"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "a="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "b"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    :goto_c4
    if-nez v3, :cond_b

    move v10, v11

    goto/16 :goto_b

    .line 2770
    :cond_c9
    sget-object v12, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v13, "ei==null"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4
.end method

.method public getCurrentWord()Lcom/android/inputmethod/latin/WordComposer;
    .registers 2

    .prologue
    .line 2343
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    return-object v0
.end method

.method public hideWindow()V
    .registers 3

    .prologue
    .line 1057
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 1058
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onHideWindow()V

    .line 1061
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1062
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1063
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 1065
    :cond_1c
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1066
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->hideVoiceWindow(Z)V

    .line 1067
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->hideWindow()V

    .line 1068
    return-void
.end method

.method public isCursorTouchingWord()Z
    .registers 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2120
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2121
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_9

    .line 2134
    :cond_8
    :goto_8
    return v3

    .line 2122
    :cond_9
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2123
    .local v1, toLeft:Ljava/lang/CharSequence;
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2124
    .local v2, toRight:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 2125
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_31

    .line 2126
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Settings$Values;->isSuggestedPunctuation(I)Z

    move-result v5

    if-nez v5, :cond_31

    move v3, v4

    .line 2127
    goto :goto_8

    .line 2129
    :cond_31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2130
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v5

    if-nez v5, :cond_8

    .line 2131
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/Settings$Values;->isSuggestedPunctuation(I)Z

    move-result v5

    if-nez v5, :cond_8

    move v3, v4

    .line 2132
    goto :goto_8
.end method

.method public isShowingPunctuationList()Z
    .registers 3

    .prologue
    .line 1701
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SuggestionsView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isShowingSuggestionsStrip()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1705
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionVisibility:I

    const v2, 0x7f0c005d

    if-eq v1, v2, :cond_14

    .line 1706
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionVisibility:I

    const v2, 0x7f0c005e

    if-ne v1, v2, :cond_13

    .line 1707
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    if-eq v1, v0, :cond_14

    :cond_13
    const/4 v0, 0x0

    :cond_14
    return v0
.end method

.method isSoundOn()Z
    .registers 2

    .prologue
    .line 2347
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Settings$Values;->mSoundOn:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSilentModeOn:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isSuggestionsRequested()Z
    .registers 2

    .prologue
    .line 1696
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mIsSettingsSuggestionStripOn:Z

    if-eqz v0, :cond_10

    .line 1697
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    if-gtz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingSuggestionsStrip()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    .line 1696
    goto :goto_f
.end method

.method public isSuggestionsStripVisible()Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1711
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-nez v2, :cond_7

    .line 1719
    :cond_6
    :goto_6
    return v0

    .line 1713
    :cond_7
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestionsView;->isShowingAddToDictionaryHint()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_15
    move v0, v1

    .line 1714
    goto :goto_6

    .line 1715
    :cond_17
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingSuggestionsStrip()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1717
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v0, :cond_23

    move v0, v1

    .line 1718
    goto :goto_6

    .line 1719
    :cond_23
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    goto :goto_6
.end method

.method public isWordSeparator(I)Z
    .registers 3
    .parameter "code"

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v0

    return v0
.end method

.method public launchDebugSettings()V
    .registers 1

    .prologue
    .line 2383
    return-void
.end method

.method protected launchSettings()V
    .registers 2

    .prologue
    .line 2378
    const-class v0, Lcom/android/inputmethod/latin/Settings;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->launchSettingsClass(Ljava/lang/Class;)V

    .line 2379
    return-void
.end method

.method protected launchSettingsClass(Ljava/lang/Class;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<",
            "Lcom/android/inputmethod/latin/Settings;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2387
    .local p1, class1:Ljava/lang/Class;,"Ljava/lang/Class<Lcom/android/inputmethod/latin/Settings;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2388
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2389
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2390
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->startActivity(Landroid/content/Intent;)V

    .line 2391
    return-void
.end method

.method protected launchUserDictionaryEditor()V
    .registers 3

    .prologue
    .line 3034
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    .line 3035
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3036
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/inputmethod/latin/CustomDitctionaryEditor;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3037
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3038
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->startActivity(Landroid/content/Intent;)V

    .line 3039
    return-void
.end method

.method loadSettings()V
    .registers 4

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_a

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 534
    :cond_a
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    if-nez v0, :cond_14

    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 535
    :cond_14
    new-instance v0, Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/inputmethod/latin/Settings$Values;-><init>(Landroid/content/SharedPreferences;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    .line 536
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-nez v0, :cond_3a

    const/4 v0, 0x0

    :goto_28
    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->resetContactsDictionary(Lcom/android/inputmethod/latin/ContactsDictionary;)V

    .line 537
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSoundEffectVolume()V

    .line 538
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateKeypressVibrationDuration()V

    .line 539
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateKeyboardHieght()V

    .line 540
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->getAllSwipesettings(Landroid/content/SharedPreferences;)V

    .line 541
    return-void

    .line 536
    :cond_3a
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->getContactsDictionary()Lcom/android/inputmethod/latin/ContactsDictionary;

    move-result-object v0

    goto :goto_28
.end method

.method public onCancelInput()V
    .registers 2

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCancelInput()V

    .line 1438
    return-void
.end method

.method public onCodeInput(I[III)V
    .registers 16
    .parameter "primaryCode"
    .parameter "keyCodes"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1345
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1346
    .local v3, when:J
    const/4 v5, -0x5

    if-ne p1, v5, :cond_12

    iget-wide v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    const-wide/16 v7, 0xc8

    add-long/2addr v5, v7

    cmp-long v5, v3, v5

    if-lez v5, :cond_14

    .line 1347
    :cond_12
    iput v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 1349
    :cond_14
    iput-wide v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastKeyTime:J

    .line 1350
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1351
    .local v2, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 1352
    .local v0, distinctMultiTouch:Z
    iget-boolean v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustReplacedDoubleSpace:Z

    .line 1353
    .local v1, lastStateOfJustReplacedDoubleSpace:Z
    iput-boolean v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustReplacedDoubleSpace:Z

    .line 1354
    sparse-switch p1, :sswitch_data_84

    .line 1407
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v5, p1}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v5

    if-eqz v5, :cond_80

    .line 1408
    invoke-direct {p0, p1, p3, p4}, Lcom/android/inputmethod/latin/LatinIME;->handleSeparator(III)V

    .line 1412
    :goto_2e
    iput-boolean v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1415
    :cond_30
    :goto_30
    invoke-virtual {v2, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onKey(I)V

    .line 1417
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    .line 1418
    return-void

    .line 1356
    :sswitch_37
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->handleBackspace(Z)V

    .line 1357
    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mDeleteCount:I

    .line 1358
    iput-boolean v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1359
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnDelete()V

    goto :goto_30

    .line 1363
    :sswitch_46
    if-nez v0, :cond_30

    .line 1364
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleShift()V

    goto :goto_30

    .line 1368
    :sswitch_4c
    if-nez v0, :cond_30

    .line 1369
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->changeKeyboardMode()V

    goto :goto_30

    .line 1372
    :sswitch_52
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v5

    if-nez v5, :cond_30

    .line 1373
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleClose()V

    goto :goto_30

    .line 1377
    :sswitch_5c
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->onSettingsKeyPressed()V

    goto :goto_30

    .line 1380
    :sswitch_60
    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->toggleCapsLock()V

    .line 1384
    :sswitch_63
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->vibrate()V

    .line 1385
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->playKeyClick(I)V

    goto :goto_30

    .line 1388
    :sswitch_6a
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_76

    .line 1389
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->switchToShortcutIME()V

    goto :goto_30

    .line 1392
    :cond_76
    iget-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->triggerVoiceIME()V

    goto :goto_30

    .line 1396
    :sswitch_7c
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->handleTab()V

    goto :goto_30

    .line 1410
    :cond_80
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/inputmethod/latin/LatinIME;->handleCharacter(I[III)V

    goto :goto_2e

    .line 1354
    :sswitch_data_84
    .sparse-switch
        -0x62 -> :sswitch_63
        -0x7 -> :sswitch_6a
        -0x6 -> :sswitch_5c
        -0x5 -> :sswitch_37
        -0x4 -> :sswitch_52
        -0x3 -> :sswitch_60
        -0x2 -> :sswitch_4c
        -0x1 -> :sswitch_46
        0x9 -> :sswitch_7c
    .end sparse-switch
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 13
    .parameter "outInsets"

    .prologue
    const/16 v10, 0x8

    const/4 v8, 0x0

    .line 1119
    invoke-super {p0, p1}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 1120
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v9}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v3

    .line 1121
    .local v3, inputView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-eqz v3, :cond_12

    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    if-nez v9, :cond_13

    .line 1150
    :cond_12
    :goto_12
    return-void

    .line 1126
    :cond_13
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v9

    if-eqz v9, :cond_83

    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mExtractArea:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 1127
    .local v2, extractHeight:I
    :goto_1f
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v10, :cond_85

    move v0, v8

    .line 1129
    .local v0, backingHeight:I
    :goto_28
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v10, :cond_8c

    move v4, v8

    .line 1131
    .local v4, suggestionsHeight:I
    :goto_31
    add-int v8, v2, v0

    add-int v1, v8, v4

    .line 1132
    .local v1, extraHeight:I
    move v7, v1

    .line 1134
    .local v7, touchY:I
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 1135
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_47

    .line 1136
    sub-int/2addr v7, v4

    .line 1138
    :cond_47
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardView;->getWidth()I

    move-result v6

    .line 1139
    .local v6, touchWidth:I
    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardView;->getHeight()I

    move-result v8

    add-int/2addr v8, v1

    add-int/lit8 v5, v8, 0x64

    .line 1142
    .local v5, touchHeight:I
    sget-boolean v8, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v8, :cond_7e

    .line 1143
    sget-object v8, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Touchable region: y="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1144
    const-string v10, " height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1143
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    .end local v5           #touchHeight:I
    .end local v6           #touchWidth:I
    :cond_7e
    iput v7, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1149
    iput v7, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    goto :goto_12

    .end local v0           #backingHeight:I
    .end local v1           #extraHeight:I
    .end local v2           #extractHeight:I
    .end local v4           #suggestionsHeight:I
    .end local v7           #touchY:I
    :cond_83
    move v2, v8

    .line 1126
    goto :goto_1f

    .line 1128
    .restart local v2       #extractHeight:I
    :cond_85
    iget-object v9, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_28

    .line 1130
    .restart local v0       #backingHeight:I
    :cond_8c
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v4

    goto :goto_31
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7
    .parameter "conf"

    .prologue
    .line 637
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v3, p1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 638
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/ComposingStateManager;->onFinishComposingText()V

    .line 640
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    iget v4, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_47

    .line 641
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v2

    .line 642
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_27

    .line 644
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 645
    .local v1, p:Landroid/view/ViewParent;
    if-eqz v1, :cond_27

    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_27

    .line 646
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1           #p:Landroid/view/ViewParent;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 649
    :cond_27
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    .line 650
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->startOrientationChanging()V

    .line 651
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 652
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 653
    if-eqz v0, :cond_3c

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 654
    :cond_3c
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v3

    if-eqz v3, :cond_47

    .line 655
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 660
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v2           #v:Landroid/view/View;
    :cond_47
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    .line 661
    invoke-super {p0, p1}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 662
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v3, p1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 663
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mConfigurationChanging:Z

    .line 666
    invoke-static {p1}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 667
    return-void
.end method

.method public onCreate()V
    .registers 11

    .prologue
    .line 472
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 473
    .local v5, prefs:Landroid/content/SharedPreferences;
    iput-object v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mPrefs:Landroid/content/SharedPreferences;

    .line 474
    invoke-static {p0, v5}, Lcom/android/inputmethod/latin/LatinImeLogger;->init(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 475
    invoke-static {p0, v5}, Lcom/android/inputmethod/deprecated/LanguageSwitcherProxy;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 476
    invoke-static {p0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->init(Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;)V

    .line 477
    invoke-static {p0, v5}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;)V

    .line 478
    invoke-static {p0, v5}, Lcom/android/inputmethod/accessibility/AccessibilityUtils;->init(Landroid/inputmethodservice/InputMethodService;Landroid/content/SharedPreferences;)V

    .line 480
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onCreate()V

    .line 482
    invoke-static {}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 483
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/inputmethod/latin/Utils;->getInputMethodId(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputMethodId:Ljava/lang/String;

    .line 484
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 485
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 486
    invoke-static {p0}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->getInstance(Landroid/content/Context;)Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrator:Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    .line 487
    sget-boolean v8, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v8, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    .line 488
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v8}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadSkinData()V

    .line 489
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 490
    .local v6, res:Landroid/content/res/Resources;
    iput-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    .line 494
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 495
    invoke-static {p0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->init(Lcom/android/inputmethod/latin/LatinIME;)V

    .line 498
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/Utils$GCUtils;->reset()V

    .line 499
    const/4 v7, 0x1

    .line 500
    .local v7, tryGC:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5a
    const/4 v8, 0x5

    if-ge v2, v8, :cond_5f

    if-nez v7, :cond_ac

    .line 509
    :cond_5f
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDisplayOrientation:I

    .line 513
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 514
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v8, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 515
    const-string v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 516
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v1}, Lcom/android/inputmethod/latin/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 517
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-static {p0, v5, v8}, Lcom/android/inputmethod/deprecated/VoiceProxy;->init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)Lcom/android/inputmethod/deprecated/VoiceProxy;

    move-result-object v8

    iput-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    .line 519
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 520
    .local v4, packageFilter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 521
    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v8, "package"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 523
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v4}, Lcom/android/inputmethod/latin/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 525
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 527
    .local v3, newDictFilter:Landroid/content/IntentFilter;
    const-string v8, "com.android.inputmethod.latin.dictionarypack.newdict"

    .line 526
    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v3}, Lcom/android/inputmethod/latin/LatinIME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 529
    return-void

    .line 502
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v3           #newDictFilter:Landroid/content/IntentFilter;
    .end local v4           #packageFilter:Landroid/content/IntentFilter;
    :cond_ac
    :try_start_ac
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest()V
    :try_end_af
    .catch Ljava/lang/OutOfMemoryError; {:try_start_ac .. :try_end_af} :catch_b3

    .line 503
    const/4 v7, 0x0

    .line 500
    :goto_b0
    add-int/lit8 v2, v2, 0x1

    goto :goto_5a

    .line 504
    :catch_b3
    move-exception v0

    .line 505
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/android/inputmethod/latin/Utils$GCUtils;->getInstance()Lcom/android/inputmethod/latin/Utils$GCUtils;

    move-result-object v8

    const-string v9, "InitSuggest"

    invoke-virtual {v8, v9, v0}, Lcom/android/inputmethod/latin/Utils$GCUtils;->tryGCOrWait(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v7

    goto :goto_b0
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCreateInputView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCustomRequest(I)Z
    .registers 5
    .parameter "requestCode"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1327
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingOptionDialog()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1336
    :cond_8
    :goto_8
    return v0

    .line 1328
    :cond_9
    packed-switch p1, :pswitch_data_1c

    goto :goto_8

    .line 1330
    :pswitch_d
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-static {v2, v1}, Lcom/android/inputmethod/latin/Utils;->hasMultipleEnabledIMEsOrSubtypes(Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1331
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    invoke-virtual {v0}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->showInputMethodPicker()V

    move v0, v1

    .line 1332
    goto :goto_8

    .line 1328
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v0, :cond_c

    .line 624
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/Suggest;->close()V

    .line 625
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 627
    :cond_c
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 628
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mDictionaryPackInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 629
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->destroy()V

    .line 630
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->commit()V

    .line 631
    invoke-static {}, Lcom/android/inputmethod/latin/LatinImeLogger;->onDestroy()V

    .line 632
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onDestroy()V

    .line 633
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 8
    .parameter "applicationSpecifiedCompletions"

    .prologue
    const/4 v5, 0x0

    .line 1072
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v2, :cond_12

    .line 1073
    sget-object v2, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v3, "Received completions:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    if-eqz p1, :cond_12

    .line 1075
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    array-length v2, p1

    if-lt v1, v2, :cond_1e

    .line 1080
    .end local v1           #i:I
    :cond_12
    iget-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v2, :cond_1d

    .line 1081
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1082
    if-nez p1, :cond_41

    .line 1083
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 1096
    :cond_1d
    :goto_1d
    return-void

    .line 1076
    .restart local v1       #i:I
    :cond_1e
    sget-object v2, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1087
    .end local v1           #i:I
    :cond_41
    new-instance v2, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    .line 1088
    invoke-virtual {v2, p1}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setApplicationSpecifiedCompletions([Landroid/view/inputmethod/CompletionInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v2

    .line 1089
    invoke-virtual {v2, v5}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setTypedWordValid(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v2

    .line 1090
    invoke-virtual {v2, v5}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setHasMinimalSuggestion(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    .line 1092
    .local v0, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1093
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 1094
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShown(Z)V

    goto :goto_1d
.end method

.method public onEvaluateFullscreenMode()Z
    .registers 3

    .prologue
    .line 1154
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onEvaluateFullscreenMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1155
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    .line 1154
    goto :goto_12
.end method

.method public onExtractedCursorMovement(II)V
    .registers 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Settings$Values;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1051
    :cond_c
    :goto_c
    return-void

    .line 1048
    :cond_d
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1050
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onExtractedCursorMovement(II)V

    goto :goto_c
.end method

.method public onExtractedTextClicked()V
    .registers 2

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Settings$Values;->mReCorrectionEnabled:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1033
    :cond_c
    :goto_c
    return-void

    .line 1030
    :cond_d
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1032
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onExtractedTextClicked()V

    goto :goto_c
.end method

.method public onFinishInput()V
    .registers 2

    .prologue
    .line 712
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onFinishInput()V

    .line 713
    return-void
.end method

.method public onFinishInputView(Z)V
    .registers 3
    .parameter "finishingInput"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onFinishInputView(Z)V

    .line 708
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1170
    packed-switch p1, :pswitch_data_2a

    .line 1183
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_8
    :goto_8
    return v1

    .line 1172
    :pswitch_9
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 1173
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v2, :cond_1b

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestionsView;->handleBack()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1176
    :cond_1b
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 1177
    .local v0, keyboardView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->handleBack()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_8

    .line 1170
    :pswitch_data_2a
    .packed-switch 0x4
        :pswitch_9
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 15
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1188
    packed-switch p1, :pswitch_data_46

    .line 1207
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_7
    return v1

    .line 1194
    :pswitch_8
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1195
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isShiftedOrShiftLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1196
    new-instance v0, Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    .line 1197
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    .line 1198
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v9

    .line 1199
    const/16 v10, 0x41

    .line 1196
    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 1200
    .local v0, newEvent:Landroid/view/KeyEvent;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v11

    .line 1201
    .local v11, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v11, :cond_44

    .line 1202
    invoke-interface {v11, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1203
    :cond_44
    const/4 v1, 0x1

    goto :goto_7

    .line 1188
    :pswitch_data_46
    .packed-switch 0x13
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public onPress(IZ)V
    .registers 6
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 2232
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 2233
    .local v1, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isVibrateAndSoundFeedbackRequired()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2234
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->vibrate()V

    .line 2235
    invoke-direct {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->playKeyClick(I)V

    .line 2237
    :cond_e
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 2238
    .local v0, distinctMultiTouch:Z
    if-eqz v0, :cond_1b

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1b

    .line 2239
    invoke-virtual {v1, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onPressShift(Z)V

    .line 2245
    :goto_1a
    return-void

    .line 2240
    :cond_1b
    if-eqz v0, :cond_24

    const/4 v2, -0x2

    if-ne p1, v2, :cond_24

    .line 2241
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onPressSymbol()V

    goto :goto_1a

    .line 2243
    :cond_24
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onOtherKeyPressed()V

    goto :goto_1a
.end method

.method public onRefreshKeyboard(Z)V
    .registers 5
    .parameter "force"

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onCreateInputView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setInputView(Landroid/view/View;)V

    .line 2224
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->loadKeyboard(Landroid/view/inputmethod/EditorInfo;Lcom/android/inputmethod/latin/Settings$Values;Z)V

    .line 2225
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->initSuggest()V

    .line 2226
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->loadSettings()V

    .line 2227
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    .line 2229
    return-void
.end method

.method public onRelease(IZ)V
    .registers 6
    .parameter "primaryCode"
    .parameter "withSliding"

    .prologue
    .line 2248
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 2250
    .local v1, switcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->hasDistinctMultitouch()Z

    move-result v0

    .line 2251
    .local v0, distinctMultiTouch:Z
    if-eqz v0, :cond_f

    const/4 v2, -0x1

    if-ne p1, v2, :cond_f

    .line 2252
    invoke-virtual {v1, p2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onReleaseShift(Z)V

    .line 2256
    :cond_e
    :goto_e
    return-void

    .line 2253
    :cond_f
    if-eqz v0, :cond_e

    const/4 v2, -0x2

    if-ne p1, v2, :cond_e

    .line 2254
    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onReleaseSymbol()V

    goto :goto_e
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 698
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 4
    .parameter "attribute"
    .parameter "restarting"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 703
    return-void
.end method

.method public onTextInput(Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    .line 1421
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->commitVoiceInput()V

    .line 1422
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1423
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_d

    .line 1433
    :goto_c
    return-void

    .line 1424
    :cond_d
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1425
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 1426
    invoke-direct {p0, v0, p1}, Lcom/android/inputmethod/latin/LatinIME;->maybeRemovePreviousPeriod(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 1427
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1428
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 1429
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1430
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onKey(I)V

    .line 1431
    iput-boolean v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 1432
    iput-object p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mEnteredText:Ljava/lang/CharSequence;

    goto :goto_c
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 4
    .parameter "token"
    .parameter "text"

    .prologue
    .line 907
    invoke-super {p0, p1, p2}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 908
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->showPunctuationHintIfNecessary()V

    .line 909
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .registers 15
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    const/4 v0, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 915
    invoke-super/range {p0 .. p6}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onUpdateSelection(IIIIII)V

    .line 918
    sget-boolean v4, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v4, :cond_68

    .line 919
    sget-object v4, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onUpdateSelection: oss="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 920
    const-string v6, ", ose="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 921
    const-string v6, ", lss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 922
    const-string v6, ", lse="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 923
    const-string v6, ", nss="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 924
    const-string v6, ", nse="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 925
    const-string v6, ", cs="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 926
    const-string v6, ", ce="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 919
    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_68
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v4, p4, p3}, Lcom/android/inputmethod/deprecated/VoiceProxy;->setCursorAndSelection(II)V

    .line 933
    if-ne p3, p6, :cond_71

    .line 934
    if-eq p4, p6, :cond_161

    :cond_71
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    if-eq v4, p3, :cond_161

    move v2, v0

    .line 935
    .local v2, selectionChanged:Z
    :goto_76
    if-ne p5, v7, :cond_164

    if-ne p6, v7, :cond_164

    .line 936
    .local v0, candidatesCleared:Z
    :goto_7a
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    if-nez v4, :cond_ba

    .line 937
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_8a

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v4, :cond_92

    .line 938
    :cond_8a
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v4}, Lcom/android/inputmethod/deprecated/VoiceProxy;->isVoiceInputHighlighted()Z

    move-result v4

    if-eqz v4, :cond_167

    .line 939
    :cond_92
    if-nez v2, :cond_96

    if-eqz v0, :cond_167

    .line 940
    :cond_96
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 941
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    .line 942
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 943
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 944
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 945
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_ac

    .line 946
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 948
    :cond_ac
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/ComposingStateManager;->onFinishComposingText()V

    .line 949
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v4, v3}, Lcom/android/inputmethod/deprecated/VoiceProxy;->setVoiceInputHighlighted(Z)V

    .line 964
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_b6
    :goto_b6
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 965
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mJustReplacedDoubleSpace:Z

    .line 967
    :cond_ba
    iput-boolean v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 968
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateShiftKeyState()V

    .line 971
    iput p3, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 972
    iput p4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 974
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v4, v4, Lcom/android/inputmethod/latin/Settings$Values;->mReCorrectionEnabled:Z

    if-eqz v4, :cond_160

    .line 976
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    if-eqz v4, :cond_160

    .line 977
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/InputView;

    move-result-object v4

    if-eqz v4, :cond_160

    .line 978
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInputView()Lcom/android/inputmethod/latin/InputView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/InputView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_160

    .line 980
    sget-object v4, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v5, "OnupdateSelections beforeIsPerdictionOn"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    sget-object v4, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isPredictionOn()"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mHasUncommittedTypedChars"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    sget-object v4, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mVoiceProxy.isVoiceInputHighlighted()"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v6}, Lcom/android/inputmethod/deprecated/VoiceProxy;->isVoiceInputHighlighted()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-direct {p0}, Lcom/android/inputmethod/latin/LatinIME;->isPredictionOn()Z

    move-result v4

    if-eqz v4, :cond_160

    .line 985
    if-eq p5, p6, :cond_138

    .line 986
    if-ne p3, p1, :cond_138

    .line 987
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v4

    if-eqz v4, :cond_160

    .line 988
    :cond_138
    add-int/lit8 v4, p4, -0x1

    if-lt p3, v4, :cond_140

    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v4, :cond_160

    .line 989
    :cond_140
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v4}, Lcom/android/inputmethod/deprecated/VoiceProxy;->isVoiceInputHighlighted()Z

    move-result v4

    if-nez v4, :cond_160

    .line 990
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isCursorTouchingWord()Z

    move-result v4

    if-nez v4, :cond_154

    .line 991
    iget v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    iget v5, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    if-ge v4, v5, :cond_173

    .line 992
    :cond_154
    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v4, "OnupdateSelections postupdateOldSuggestion"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    #calls: Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateOldSuggestions()V
    invoke-static {v3}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->access$0(Lcom/android/inputmethod/latin/LatinIME$UIHandler;)V

    .line 1011
    :cond_160
    :goto_160
    return-void

    .end local v0           #candidatesCleared:Z
    .end local v2           #selectionChanged:Z
    :cond_161
    move v2, v3

    .line 934
    goto/16 :goto_76

    .restart local v2       #selectionChanged:Z
    :cond_164
    move v0, v3

    .line 935
    goto/16 :goto_7a

    .line 950
    .restart local v0       #candidatesCleared:Z
    :cond_167
    iget-boolean v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v4, :cond_b6

    .line 951
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->reset()V

    .line 952
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    goto/16 :goto_b6

    .line 995
    :cond_173
    sget-object v4, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v5, "OnupdateSelections abort"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-direct {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->abortCorrection(Z)V

    .line 1001
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v3, :cond_160

    .line 1002
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingPunctuationList()Z

    move-result v3

    if-nez v3, :cond_160

    .line 1003
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    .line 1004
    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SuggestionsView;->isShowingAddToDictionaryHint()Z

    move-result v3

    if-nez v3, :cond_160

    .line 1005
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_160
.end method

.method public onWindowHidden()V
    .registers 3

    .prologue
    .line 878
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->onWindowHidden()V

    .line 879
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 880
    .local v0, inputView:Lcom/android/inputmethod/keyboard/KeyboardView;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/inputmethod/keyboard/KeyboardView;->closing()V

    .line 881
    :cond_e
    return-void
.end method

.method public paste_from_clipboard()V
    .registers 5

    .prologue
    .line 3041
    const-string v3, "clipboard"

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/LatinIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 3042
    .local v0, cm:Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3043
    .local v2, text:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 3044
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3045
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_25

    .line 3046
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3047
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/inputmethod/latin/EditingUtils;->appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 3048
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 3051
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_25
    return-void
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .registers 20
    .parameter "index"
    .parameter "suggestion"

    .prologue
    .line 1888
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v13}, Lcom/android/inputmethod/latin/ComposingStateManager;->onFinishComposingText()V

    .line 1889
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v13}, Lcom/android/inputmethod/latin/SuggestionsView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v11

    .line 1890
    .local v11, suggestions:Lcom/android/inputmethod/latin/SuggestedWords;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    .line 1891
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v14, v14, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    .line 1890
    move/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1, v14}, Lcom/android/inputmethod/deprecated/VoiceProxy;->flushAndLogAllTextModificationCounters(ILjava/lang/CharSequence;Ljava/lang/String;)V

    .line 1893
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v9

    .line 1894
    .local v9, recorrecting:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 1895
    .local v4, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v4, :cond_2d

    .line 1896
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 1898
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletionOn:Z

    if-eqz v13, :cond_71

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v13, :cond_71

    .line 1899
    if-ltz p1, :cond_71

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v13, v13

    move/from16 v0, p1

    if-ge v0, v13, :cond_71

    .line 1900
    if-eqz v4, :cond_4f

    .line 1901
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mApplicationSpecifiedCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v3, v13, p1

    .line 1902
    .local v3, completionInfo:Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v4, v3}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 1904
    .end local v3           #completionInfo:Landroid/view/inputmethod/CompletionInfo;
    :cond_4f
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mCommittedLength:I

    .line 1905
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v13, :cond_64

    .line 1906
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v13}, Lcom/android/inputmethod/latin/SuggestionsView;->clear()V

    .line 1908
    :cond_64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v13}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->updateShiftState()V

    .line 1909
    if-eqz v4, :cond_70

    .line 1910
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 2009
    :cond_70
    :goto_70
    return-void

    .line 1916
    :cond_71
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_fa

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/inputmethod/latin/Settings$Values;->isWordSeparator(I)Z

    move-result v13

    if-nez v13, :cond_9a

    .line 1917
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    invoke-virtual {v13, v14}, Lcom/android/inputmethod/latin/Settings$Values;->isSuggestedPunctuation(I)Z

    move-result v13

    if-eqz v13, :cond_fa

    .line 1921
    :cond_9a
    const-string v13, ""

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v11, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    .line 1920
    move/from16 v0, p1

    invoke-static {v13, v14, v0, v15}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 1926
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    .line 1928
    .local v8, rawPrimaryCode:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v13}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v5

    .line 1930
    .local v5, keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    iget-boolean v13, v5, Lcom/android/inputmethod/keyboard/LatinKeyboard;->mIsRtlKeyboard:Z

    .line 1929
    invoke-static {v8, v13}, Lcom/android/inputmethod/keyboard/Key;->getRtlParenthesisCode(IZ)I

    move-result v7

    .line 1932
    .local v7, primaryCode:I
    if-eqz v4, :cond_f1

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v4, v13, v14}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1933
    .local v2, beforeText:Ljava/lang/CharSequence;
    :goto_c4
    if-eqz v4, :cond_cc

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f4

    .line 1934
    :cond_cc
    const/4 v12, 0x0

    .line 1935
    .local v12, toLeft:I
    :goto_cd
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 1936
    .local v6, oldMagicSpace:Z
    const/16 v13, 0x20

    if-ne v13, v12, :cond_da

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 1937
    :cond_da
    const/4 v13, 0x1

    new-array v13, v13, [I

    const/4 v14, 0x0

    aput v7, v13, v14

    .line 1938
    const/4 v14, -0x1

    .line 1939
    const/4 v15, -0x1

    .line 1937
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v13, v14, v15}, Lcom/android/inputmethod/latin/LatinIME;->onCodeInput(I[III)V

    .line 1940
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/android/inputmethod/latin/LatinIME;->mJustAddedMagicSpace:Z

    .line 1941
    if-eqz v4, :cond_70

    .line 1942
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_70

    .line 1932
    .end local v2           #beforeText:Ljava/lang/CharSequence;
    .end local v6           #oldMagicSpace:Z
    .end local v12           #toLeft:I
    :cond_f1
    const-string v2, ""

    goto :goto_c4

    .line 1934
    .restart local v2       #beforeText:Ljava/lang/CharSequence;
    :cond_f4
    const/4 v13, 0x0

    invoke-interface {v2, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    goto :goto_cd

    .line 1946
    .end local v2           #beforeText:Ljava/lang/CharSequence;
    .end local v5           #keyboard:Lcom/android/inputmethod/keyboard/LatinKeyboard;
    .end local v7           #primaryCode:I
    .end local v8           #rawPrimaryCode:I
    :cond_fa
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v13, :cond_109

    if-nez v9, :cond_109

    .line 1949
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v13}, Lcom/android/inputmethod/latin/WordComposer;->reset()V

    .line 1951
    :cond_109
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mExpectingUpdateSelection:Z

    .line 1952
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lcom/android/inputmethod/latin/LatinIME;->commitBestWord(Ljava/lang/CharSequence;Z)V

    .line 1954
    if-nez p1, :cond_19c

    .line 1956
    const/4 v13, 0x3

    .line 1955
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/inputmethod/latin/LatinIME;->addToUserUnigramAndBigramDictionaries(Ljava/lang/CharSequence;I)V

    .line 1960
    :goto_11f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1961
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v11, Lcom/android/inputmethod/latin/SuggestedWords;->mWords:Ljava/util/List;

    .line 1960
    move/from16 v0, p1

    invoke-static {v13, v14, v0, v15}, Lcom/android/inputmethod/latin/LatinImeLogger;->logOnManualSuggestion(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 1962
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1964
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinIME;->isWordURLorEmail()Z

    move-result v13

    if-nez v13, :cond_150

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mShouldInsertMagicSpace:Z

    if-eqz v13, :cond_150

    if-nez v9, :cond_150

    .line 1965
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinIME;->sendMagicSpace()V

    .line 1977
    :cond_150
    if-nez p1, :cond_1a6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v13, :cond_1a6

    .line 1979
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v13}, Lcom/android/inputmethod/latin/Suggest;->hasMainDictionary()Z

    move-result v13

    if-eqz v13, :cond_173

    .line 1982
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v13}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/Map;

    move-result-object v13

    const/4 v14, 0x1

    .line 1981
    move-object/from16 v0, p2

    invoke-static {v13, v0, v14}, Lcom/android/inputmethod/latin/AutoCorrection;->isValidWord(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v13

    if-nez v13, :cond_1a6

    :cond_173
    const/4 v10, 0x1

    .line 1984
    .local v10, showingAddToDictionaryHint:Z
    :goto_174
    if-nez v9, :cond_17f

    .line 1988
    const/16 v13, 0x20

    const/4 v14, 0x1

    .line 1989
    const/4 v15, -0x1

    const/16 v16, -0x1

    .line 1988
    invoke-static/range {v13 .. v16}, Lcom/android/inputmethod/latin/TextEntryState;->typedCharacter(CZII)V

    .line 1991
    :cond_17f
    if-nez v10, :cond_184

    .line 1994
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/LatinIME;->updateBigramPredictions()V

    .line 1999
    :cond_184
    if-eqz v10, :cond_195

    .line 2000
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mIsUserDictionaryAvaliable:Z

    if-eqz v13, :cond_1a8

    .line 2001
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/inputmethod/latin/SuggestionsView;->showAddToDictionaryHint(Ljava/lang/CharSequence;)V

    .line 2006
    :cond_195
    :goto_195
    if-eqz v4, :cond_70

    .line 2007
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_70

    .line 1958
    .end local v10           #showingAddToDictionaryHint:Z
    :cond_19c
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/android/inputmethod/latin/LatinIME;->addToOnlyBigramDictionary(Ljava/lang/CharSequence;I)V

    goto/16 :goto_11f

    .line 1981
    :cond_1a6
    const/4 v10, 0x0

    goto :goto_174

    .line 2003
    .restart local v10       #showingAddToDictionaryHint:Z
    :cond_1a8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v13}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->postUpdateSuggestions()V

    goto :goto_195
.end method

.method public preferCapitalization()Z
    .registers 2

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized()Z

    move-result v0

    return v0
.end method

.method resetSuggestMainDict()V
    .registers 5

    .prologue
    .line 615
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v1

    .line 616
    .local v1, localeStr:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/inputmethod/latin/LocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    .line 617
    .local v0, keyboardLocale:Ljava/util/Locale;
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mResources:Landroid/content/res/Resources;

    invoke-static {v3}, Lcom/android/inputmethod/latin/Utils;->getMainDictionaryResourceId(Landroid/content/res/Resources;)I

    move-result v2

    .line 618
    .local v2, mainDicResId:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v3, p0, v2, v0}, Lcom/android/inputmethod/latin/Suggest;->resetMainDict(Landroid/content/Context;ILjava/util/Locale;)V

    .line 619
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 692
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 676
    invoke-super {p0, p1}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->setInputView(Landroid/view/View;)V

    .line 677
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 678
    const v1, 0x102001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 677
    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mExtractArea:Landroid/view/View;

    .line 679
    const v0, 0x7f07003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    .line 680
    const v0, 0x7f07003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsContainer:Landroid/view/View;

    .line 681
    const v0, 0x7f070040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/inputmethod/latin/SuggestionsView;

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    .line 682
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v0, :cond_3e

    .line 683
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v0, p0, p1}, Lcom/android/inputmethod/latin/SuggestionsView;->setListener(Lcom/android/inputmethod/latin/SuggestionsView$Listener;Landroid/view/View;)V

    .line 684
    :cond_3e
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sVISUALDEBUG:Z

    if-eqz v0, :cond_49

    .line 685
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    const/high16 v1, 0x10ff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 687
    :cond_49
    return-void
.end method

.method public setLastSelection(II)V
    .registers 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1014
    iput p1, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionStart:I

    .line 1015
    iput p2, p0, Lcom/android/inputmethod/latin/LatinIME;->mLastSelectionEnd:I

    .line 1016
    return-void
.end method

.method public setPunctuationSuggestions()V
    .registers 2

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v0, v0, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 2064
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsStripVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShown(Z)V

    .line 2065
    return-void
.end method

.method public setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V
    .registers 9
    .parameter "words"

    .prologue
    .line 1748
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    if-eqz v4, :cond_12

    .line 1749
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v4, p1}, Lcom/android/inputmethod/latin/SuggestionsView;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1750
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    .line 1751
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->hasWordAboveAutoCorrectionScoreThreshold()Z

    move-result v5

    .line 1750
    invoke-virtual {v4, v5}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->onAutoCorrectionStateChanged(Z)V

    .line 1755
    :cond_12
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1756
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_5d

    .line 1758
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v4}, Lcom/android/inputmethod/latin/ComposingStateManager;->isAutoCorrectionIndicatorOn()Z

    move-result v2

    .line 1759
    .local v2, oldAutoCorrectionIndicator:Z
    invoke-static {p1}, Lcom/android/inputmethod/latin/Utils;->willAutoCorrect(Lcom/android/inputmethod/latin/SuggestedWords;)Z

    move-result v1

    .line 1760
    .local v1, newAutoCorrectionIndicator:Z
    if-eq v2, v1, :cond_5d

    .line 1761
    sget-boolean v4, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    if-eqz v4, :cond_46

    .line 1762
    sget-object v4, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Flip the indicator. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1763
    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1762
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :cond_46
    if-eqz v1, :cond_5e

    .line 1767
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    .line 1766
    invoke-static {p0, v4}, Lcom/android/inputmethod/compat/SuggestionSpanUtils;->getTextWithAutoCorrectionIndicatorUnderline(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1769
    .local v3, textWithUnderline:Ljava/lang/CharSequence;
    :goto_4e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 1770
    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1772
    :cond_58
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStateManager:Lcom/android/inputmethod/latin/ComposingStateManager;

    invoke-virtual {v4, v1}, Lcom/android/inputmethod/latin/ComposingStateManager;->setAutoCorrectionIndicatorOn(Z)V

    .line 1775
    .end local v1           #newAutoCorrectionIndicator:Z
    .end local v2           #oldAutoCorrectionIndicator:Z
    .end local v3           #textWithUnderline:Ljava/lang/CharSequence;
    :cond_5d
    return-void

    .line 1768
    .restart local v1       #newAutoCorrectionIndicator:Z
    .restart local v2       #oldAutoCorrectionIndicator:Z
    :cond_5e
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mComposingStringBuilder:Ljava/lang/StringBuilder;

    goto :goto_4e
.end method

.method public showSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V
    .registers 5
    .parameter "suggestedWords"
    .parameter "typedWord"

    .prologue
    .line 1850
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-static {p1, v1}, Lcom/android/inputmethod/latin/Utils;->shouldBlockAutoCorrectionBySafetyNet(Lcom/android/inputmethod/latin/SuggestedWords;Lcom/android/inputmethod/latin/Suggest;)Z

    move-result v0

    .line 1851
    .local v0, shouldBlockAutoCorrectionBySafetyNet:Z
    if-eqz v0, :cond_b

    .line 1852
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->setShouldBlockAutoCorrection()V

    .line 1854
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 1855
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->size()I

    move-result v1

    if-lez v1, :cond_31

    .line 1856
    if-eqz v0, :cond_20

    .line 1857
    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    .line 1866
    :goto_18
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsStripVisible()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestionStripShown(Z)V

    .line 1867
    return-void

    .line 1858
    :cond_20
    invoke-virtual {p1}, Lcom/android/inputmethod/latin/SuggestedWords;->hasAutoCorrectionWord()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1859
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/inputmethod/latin/SuggestedWords;->getWord(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_18

    .line 1861
    :cond_2e
    iput-object p2, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_18

    .line 1864
    :cond_31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mBestWord:Ljava/lang/CharSequence;

    goto :goto_18
.end method

.method public swipeDown()V
    .registers 2

    .prologue
    .line 2880
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGestureDown:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->exectueGesture(I)V

    .line 2881
    return-void
.end method

.method public swipeLeft()V
    .registers 2

    .prologue
    .line 2876
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGestureLeft:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->exectueGesture(I)V

    .line 2877
    return-void
.end method

.method public swipeRight()V
    .registers 2

    .prologue
    .line 2871
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGestureRight:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->exectueGesture(I)V

    .line 2873
    return-void
.end method

.method public swipeUp()V
    .registers 2

    .prologue
    .line 2884
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGestureUp:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIME;->exectueGesture(I)V

    .line 2885
    return-void
.end method

.method public switchToKeyboardView()V
    .registers 5

    .prologue
    .line 1723
    sget-boolean v2, Lcom/android/inputmethod/latin/LatinIME;->DEBUG:Z

    if-eqz v2, :cond_b

    .line 1724
    sget-object v2, Lcom/android/inputmethod/latin/LatinIME;->TAG:Ljava/lang/String;

    const-string v3, "Switch to keyboard view."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    :cond_b
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v2}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    .line 1727
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_25

    .line 1729
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1730
    .local v0, p:Landroid/view/ViewParent;
    if-eqz v0, :cond_22

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_22

    .line 1731
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #p:Landroid/view/ViewParent;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1733
    :cond_22
    invoke-virtual {p0, v1}, Lcom/android/inputmethod/latin/LatinIME;->setInputView(Landroid/view/View;)V

    .line 1735
    :cond_25
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/latin/LatinIME;->onRefreshKeyboard(Z)V

    .line 1736
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    .line 1741
    return-void
.end method

.method public updateBigramPredictions()V
    .registers 6

    .prologue
    .line 2040
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2060
    :cond_a
    :goto_a
    return-void

    .line 2043
    :cond_b
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v2, v2, Lcom/android/inputmethod/latin/Settings$Values;->mBigramPredictionEnabled:Z

    if-nez v2, :cond_15

    .line 2044
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_a

    .line 2048
    :cond_15
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2049
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v3, v3, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    .line 2048
    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/EditingUtils;->getThisWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2050
    .local v1, prevWord:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    sget-object v3, Lcom/android/inputmethod/latin/LatinIME;->sEmptyWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    .line 2051
    iget-object v4, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v4

    .line 2050
    invoke-virtual {v2, v3, v1, v4}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWordBuilder(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v0

    .line 2053
    .local v0, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->size()I

    move-result v2

    if-lez v2, :cond_43

    .line 2056
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 2058
    :cond_43
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isShowingPunctuationList()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_a
.end method

.method public updateFullscreenMode()V
    .registers 3

    .prologue
    .line 1160
    invoke-super {p0}, Lcom/android/inputmethod/compat/InputMethodServiceCompatWrapper;->updateFullscreenMode()V

    .line 1162
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 1166
    :goto_7
    return-void

    .line 1165
    :cond_8
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyPreviewBackingView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v0, 0x8

    :goto_12
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public updateSuggestions()V
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1779
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    if-eqz v10, :cond_c

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->isSuggestionsRequested()Z

    move-result v10

    if-nez v10, :cond_15

    .line 1780
    :cond_c
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mVoiceProxy:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v10}, Lcom/android/inputmethod/deprecated/VoiceProxy;->isVoiceInputHighlighted()Z

    move-result v10

    if-nez v10, :cond_15

    .line 1846
    :cond_14
    :goto_14
    return-void

    .line 1784
    :cond_15
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateSuggestions()V

    .line 1785
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->cancelUpdateBigramPredictions()V

    .line 1787
    iget-boolean v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mHasUncommittedTypedChars:Z

    if-nez v10, :cond_27

    .line 1788
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->setPunctuationSuggestions()V

    goto :goto_14

    .line 1792
    :cond_27
    iget-object v7, p0, Lcom/android/inputmethod/latin/LatinIME;->mWordComposer:Lcom/android/inputmethod/latin/WordComposer;

    .line 1794
    .local v7, wordComposer:Lcom/android/inputmethod/latin/WordComposer;
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 1796
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v3, :cond_a7

    .line 1797
    const/4 v4, 0x0

    .line 1802
    .local v4, prevWord:Ljava/lang/CharSequence;
    :goto_30
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    .line 1803
    iget-object v11, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v11}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getLatinKeyboard()Lcom/android/inputmethod/keyboard/LatinKeyboard;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/inputmethod/keyboard/LatinKeyboard;->getProximityInfo()Lcom/android/inputmethod/keyboard/ProximityInfo;

    move-result-object v11

    .line 1802
    invoke-virtual {v10, v7, v4, v11}, Lcom/android/inputmethod/latin/Suggest;->getSuggestedWordBuilder(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/keyboard/ProximityInfo;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v2

    .line 1805
    .local v2, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    iget-boolean v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mInputTypeNoAutoCorrect:Z

    if-nez v10, :cond_b0

    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/Suggest;->hasAutoCorrection()Z

    move-result v10

    if-eqz v10, :cond_b0

    move v1, v8

    .line 1806
    .local v1, autoCorrectionAvailable:Z
    :goto_4d
    invoke-virtual {v7}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/String;

    move-result-object v6

    .line 1814
    .local v6, typedWord:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggest:Lcom/android/inputmethod/latin/Suggest;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/Suggest;->getUnigramDictionaries()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/LatinIME;->preferCapitalization()Z

    move-result v11

    .line 1813
    invoke-static {v10, v6, v11}, Lcom/android/inputmethod/latin/AutoCorrection;->allowsToBeAutoCorrected(Ljava/util/Map;Ljava/lang/CharSequence;Z)Z

    move-result v0

    .line 1815
    .local v0, allowsToBeAutoCorrected:Z
    iget v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v11, 0x2

    if-eq v10, v11, :cond_69

    .line 1816
    iget v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mCorrectionMode:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_6d

    .line 1817
    :cond_69
    if-eqz v0, :cond_b2

    move v10, v9

    :goto_6c
    or-int/2addr v1, v10

    .line 1820
    :cond_6d
    invoke-virtual {v7}, Lcom/android/inputmethod/latin/WordComposer;->isMostlyCaps()Z

    move-result v10

    if-eqz v10, :cond_b4

    move v10, v9

    :goto_74
    and-int/2addr v1, v10

    .line 1821
    invoke-static {}, Lcom/android/inputmethod/latin/TextEntryState;->isRecorrecting()Z

    move-result v10

    if-eqz v10, :cond_b6

    move v10, v9

    :goto_7c
    and-int/2addr v1, v10

    .line 1829
    if-eqz v6, :cond_9e

    .line 1830
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->size()I

    move-result v10

    if-gt v10, v8, :cond_95

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-eq v10, v8, :cond_95

    if-eqz v0, :cond_95

    .line 1831
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v10}, Lcom/android/inputmethod/latin/SuggestionsView;->isShowingAddToDictionaryHint()Z

    move-result v10

    if-eqz v10, :cond_ba

    .line 1832
    :cond_95
    if-eqz v0, :cond_b8

    :goto_97
    invoke-virtual {v2, v9}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setTypedWordValid(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setHasMinimalSuggestion(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 1845
    :cond_9e
    :goto_9e
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v8

    invoke-virtual {p0, v8, v6}, Lcom/android/inputmethod/latin/LatinIME;->showSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 1799
    .end local v0           #allowsToBeAutoCorrected:Z
    .end local v1           #autoCorrectionAvailable:Z
    .end local v2           #builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .end local v4           #prevWord:Ljava/lang/CharSequence;
    .end local v6           #typedWord:Ljava/lang/CharSequence;
    :cond_a7
    iget-object v10, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v10, v10, Lcom/android/inputmethod/latin/Settings$Values;->mWordSeparators:Ljava/lang/String;

    invoke-static {v3, v10}, Lcom/android/inputmethod/latin/EditingUtils;->getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4       #prevWord:Ljava/lang/CharSequence;
    goto :goto_30

    .restart local v2       #builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    :cond_b0
    move v1, v9

    .line 1805
    goto :goto_4d

    .restart local v0       #allowsToBeAutoCorrected:Z
    .restart local v1       #autoCorrectionAvailable:Z
    .restart local v6       #typedWord:Ljava/lang/CharSequence;
    :cond_b2
    move v10, v8

    .line 1817
    goto :goto_6c

    :cond_b4
    move v10, v8

    .line 1820
    goto :goto_74

    :cond_b6
    move v10, v8

    .line 1821
    goto :goto_7c

    :cond_b8
    move v9, v8

    .line 1832
    goto :goto_97

    .line 1835
    :cond_ba
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSuggestionsView:Lcom/android/inputmethod/latin/SuggestionsView;

    invoke-virtual {v8}, Lcom/android/inputmethod/latin/SuggestionsView;->getSuggestions()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v5

    .line 1836
    .local v5, previousSuggestions:Lcom/android/inputmethod/latin/SuggestedWords;
    iget-object v8, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-object v8, v8, Lcom/android/inputmethod/latin/Settings$Values;->mSuggestPuncList:Lcom/android/inputmethod/latin/SuggestedWords;

    if-ne v5, v8, :cond_ce

    .line 1837
    invoke-virtual {v2}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->size()I

    move-result v8

    if-eqz v8, :cond_14

    .line 1840
    sget-object v5, Lcom/android/inputmethod/latin/SuggestedWords;->EMPTY:Lcom/android/inputmethod/latin/SuggestedWords;

    .line 1842
    :cond_ce
    invoke-virtual {v2, v6, v5}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addTypedWordAndPreviousSuggestions(Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/SuggestedWords;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    goto :goto_9e
.end method

.method public updateSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 4
    .parameter "sp"
    .parameter "key"

    .prologue
    .line 2961
    const-string v0, "swipe_right"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2962
    const-string v0, "swipe_right"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGestureRight:I

    .line 2970
    :cond_10
    :goto_10
    return-void

    .line 2963
    :cond_11
    const-string v0, "swipe_left"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2964
    const-string v0, "swipe_left"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGestureLeft:I

    goto :goto_10

    .line 2965
    :cond_22
    const-string v0, "swipe_up"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2966
    const-string v0, "swipe_up"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGestureUp:I

    goto :goto_10

    .line 2967
    :cond_33
    const-string v0, "swipe_down"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2968
    const-string v0, "swipe_down"

    invoke-direct {p0, p1, v0}, Lcom/android/inputmethod/latin/LatinIME;->getSwipesettings(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIME;->mGestureDown:I

    goto :goto_10
.end method

.method public vibrate()V
    .registers 6

    .prologue
    .line 2326
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mSettingsValues:Lcom/android/inputmethod/latin/Settings$Values;

    iget-boolean v1, v1, Lcom/android/inputmethod/latin/Settings$Values;->mVibrateOn:Z

    if-nez v1, :cond_7

    .line 2340
    :cond_6
    :goto_6
    return-void

    .line 2329
    :cond_7
    iget-wide v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeypressVibrationDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1d

    .line 2331
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeyboardSwitcher:Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v0

    .line 2332
    .local v0, inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    if-eqz v0, :cond_6

    .line 2334
    const/4 v1, 0x3

    .line 2335
    const/4 v2, 0x2

    .line 2333
    invoke-virtual {v0, v1, v2}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->performHapticFeedback(II)Z

    goto :goto_6

    .line 2337
    .end local v0           #inputView:Lcom/android/inputmethod/keyboard/LatinKeyboardView;
    :cond_1d
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrator:Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    if-eqz v1, :cond_6

    .line 2338
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIME;->mVibrator:Lcom/android/inputmethod/compat/VibratorCompatWrapper;

    iget-wide v2, p0, Lcom/android/inputmethod/latin/LatinIME;->mKeypressVibrationDuration:J

    invoke-virtual {v1, v2, v3}, Lcom/android/inputmethod/compat/VibratorCompatWrapper;->vibrate(J)V

    goto :goto_6
.end method

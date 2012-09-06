.class public Lcom/android/inputmethod/deprecated/VoiceProxy;
.super Ljava/lang/Object;
.source "VoiceProxy.java"

# interfaces
.implements Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;,
        Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;,
        Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DEFAULT_VOICE_INPUT_SUPPORTED_LOCALES:Ljava/lang/String; = "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

.field private static final ENABLE_VOICE_BUTTON:Z = true

.field private static final PREF_HAS_USED_VOICE_INPUT:Ljava/lang/String; = "has_used_voice_input"

.field private static final PREF_HAS_USED_VOICE_INPUT_UNSUPPORTED_LOCALE:Ljava/lang/String; = "has_used_voice_input_unsupported_locale"

.field private static final PREF_VOICE_MODE:Ljava/lang/String; = "voice_mode"

.field private static final RECOGNITIONVIEW_HEIGHT_THRESHOLD_RATIO:I = 0x6

.field private static final RECOGNITIONVIEW_MINIMUM_HEIGHT_DIP:I = 0xf4

.field private static final TAG:Ljava/lang/String; = null

.field public static final VOICE_INSTALLED:Z = true

.field private static final sInstance:Lcom/android/inputmethod/deprecated/VoiceProxy;


# instance fields
.field private mAfterVoiceInput:Z

.field private mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

.field private mHasUsedVoiceInput:Z

.field private mHasUsedVoiceInputUnsupportedLocale:Z

.field private mHints:Lcom/android/inputmethod/deprecated/voice/Hints;

.field private mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

.field private mImmediatelyAfterVoiceInput:Z

.field private mIsShowingHint:Z

.field private mLocaleSupportedForVoiceInput:Z

.field private mMinimumVoiceRecognitionViewHeightPixel:I

.field private mPasswordText:Z

.field private mRecognizing:Z

.field private mService:Lcom/android/inputmethod/latin/LatinIME;

.field private mShowingVoiceSuggestions:Z

.field private mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

.field private mVoiceButtonEnabled:Z

.field private mVoiceButtonOnPrimary:Z

.field private mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

.field private mVoiceInputHighlighted:Z

.field private final mVoiceResults:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;

.field private mVoiceWarningDialog:Landroid/app/AlertDialog;

.field private final mWordToSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-direct {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;-><init>()V

    sput-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->sInstance:Lcom/android/inputmethod/deprecated/VoiceProxy;

    .line 89
    const-class v0, Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->TAG:Ljava/lang/String;

    .line 90
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->DEBUG:Z

    .line 71
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;

    invoke-direct {v0}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceResults:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mWordToSuggestions:Ljava/util/Map;

    .line 150
    return-void
.end method

.method static synthetic access$0(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/latin/LatinIME;
    .registers 2
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/inputmethod/deprecated/VoiceProxy;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mIsShowingHint:Z

    return-void
.end method

.method static synthetic access$2(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/deprecated/voice/VoiceInput;
    .registers 2
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/inputmethod/deprecated/VoiceProxy;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 647
    invoke-direct {p0, p1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->reallyStartListening(Z)V

    return-void
.end method

.method static synthetic access$4(Lcom/android/inputmethod/deprecated/VoiceProxy;)V
    .registers 1
    .parameter

    .prologue
    .line 611
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->switchToLastInputMethod()V

    return-void
.end method

.method static synthetic access$5(Lcom/android/inputmethod/deprecated/VoiceProxy;Z)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mRecognizing:Z

    return-void
.end method

.method static synthetic access$6(Lcom/android/inputmethod/deprecated/VoiceProxy;)I
    .registers 2
    .parameter

    .prologue
    .line 105
    iget v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mMinimumVoiceRecognitionViewHeightPixel:I

    return v0
.end method

.method static synthetic access$7(Lcom/android/inputmethod/deprecated/VoiceProxy;)Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;
    .registers 2
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    return-object v0
.end method

.method static synthetic access$8()Z
    .registers 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$9()Ljava/lang/String;
    .registers 1

    .prologue
    .line 89
    sget-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private fieldCanDoVoice(Lcom/android/inputmethod/deprecated/voice/FieldContext;)Z
    .registers 3
    .parameter "fieldContext"

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mPasswordText:Z

    if-nez v0, :cond_12

    .line 694
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    if-eqz v0, :cond_12

    .line 695
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->isBlacklistedField(Lcom/android/inputmethod/deprecated/voice/FieldContext;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    .line 693
    goto :goto_11
.end method

.method public static getInstance()Lcom/android/inputmethod/deprecated/VoiceProxy;
    .registers 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->sInstance:Lcom/android/inputmethod/deprecated/VoiceProxy;

    return-object v0
.end method

.method public static getSupportedLocalesString(Landroid/content/ContentResolver;)Ljava/lang/String;
    .registers 3
    .parameter "resolver"

    .prologue
    .line 875
    .line 876
    const-string v0, "latin_ime_voice_input_supported_locales"

    .line 877
    const-string v1, "en en_US en_GB en_AU en_CA en_IE en_IN en_NZ en_SG en_ZA "

    .line 874
    invoke-static {p0, v0, v1}, Lcom/android/inputmethod/deprecated/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)Lcom/android/inputmethod/deprecated/VoiceProxy;
    .registers 4
    .parameter "context"
    .parameter "prefs"
    .parameter "h"

    .prologue
    .line 120
    sget-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->sInstance:Lcom/android/inputmethod/deprecated/VoiceProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/inputmethod/deprecated/VoiceProxy;->initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)V

    .line 121
    sget-object v0, Lcom/android/inputmethod/deprecated/VoiceProxy;->sInstance:Lcom/android/inputmethod/deprecated/VoiceProxy;

    return-object v0
.end method

.method private initInternal(Lcom/android/inputmethod/latin/LatinIME;Landroid/content/SharedPreferences;Lcom/android/inputmethod/latin/LatinIME$UIHandler;)V
    .registers 6
    .parameter "service"
    .parameter "prefs"
    .parameter "h"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    .line 133
    iput-object p3, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    .line 135
    invoke-static {p1}, Lcom/android/inputmethod/latin/Utils;->getDipScale(Landroid/content/Context;)F

    move-result v0

    const/16 v1, 0xf4

    .line 134
    invoke-static {v0, v1}, Lcom/android/inputmethod/latin/Utils;->dipToPixel(FI)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mMinimumVoiceRecognitionViewHeightPixel:I

    .line 136
    invoke-static {}, Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;->getInstance()Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mImm:Lcom/android/inputmethod/compat/InputMethodManagerCompatWrapper;

    .line 137
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    .line 138
    new-instance v0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-direct {v0, p1, p0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;-><init>(Landroid/content/Context;Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;)V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    .line 139
    new-instance v0, Lcom/android/inputmethod/deprecated/voice/Hints;

    new-instance v1, Lcom/android/inputmethod/deprecated/VoiceProxy$1;

    invoke-direct {v1, p0}, Lcom/android/inputmethod/deprecated/VoiceProxy$1;-><init>(Lcom/android/inputmethod/deprecated/VoiceProxy;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/android/inputmethod/deprecated/voice/Hints;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/android/inputmethod/deprecated/voice/Hints$Display;)V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHints:Lcom/android/inputmethod/deprecated/voice/Hints;

    .line 146
    return-void
.end method

.method public static isRecognitionAvailable(Landroid/content/Context;)Z
    .registers 2
    .parameter "context"

    .prologue
    .line 708
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private makeFieldContext()Lcom/android/inputmethod/deprecated/voice/FieldContext;
    .registers 7

    .prologue
    .line 813
    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v0

    .line 814
    .local v0, switcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;
    new-instance v1, Lcom/android/inputmethod/deprecated/voice/FieldContext;

    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 815
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v4

    .line 816
    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getEnabledLanguages()[Ljava/lang/String;

    move-result-object v5

    .line 814
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/inputmethod/deprecated/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1
.end method

.method private reallyStartListening(Z)V
    .registers 6
    .parameter "swipe"

    .prologue
    const/4 v3, 0x1

    .line 651
    iget-boolean v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHasUsedVoiceInput:Z

    if-nez v2, :cond_19

    .line 655
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 656
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_used_voice_input"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 657
    invoke-static {v1}, Lcom/android/inputmethod/compat/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 658
    iput-boolean v3, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHasUsedVoiceInput:Z

    .line 661
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_19
    iget-boolean v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mLocaleSupportedForVoiceInput:Z

    if-nez v2, :cond_35

    iget-boolean v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v2, :cond_35

    .line 665
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 666
    .restart local v1       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "has_used_voice_input_unsupported_locale"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 667
    invoke-static {v1}, Lcom/android/inputmethod/compat/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 668
    iput-boolean v3, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 672
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_35
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->clearSuggestions()V

    .line 674
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->makeFieldContext()Lcom/android/inputmethod/deprecated/voice/FieldContext;

    move-result-object v0

    .line 675
    .local v0, context:Lcom/android/inputmethod/deprecated/voice/FieldContext;
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v2, v0, p1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->startListening(Lcom/android/inputmethod/deprecated/voice/FieldContext;Z)V

    .line 676
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/inputmethod/deprecated/VoiceProxy;->switchToRecognitionStatusView(Landroid/content/res/Configuration;)V

    .line 677
    return-void
.end method

.method private revertVoiceInput()V
    .registers 4

    .prologue
    .line 384
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 385
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_e

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 386
    :cond_e
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 387
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInputHighlighted:Z

    .line 388
    return-void
.end method

.method private shouldShowVoiceButton(Lcom/android/inputmethod/deprecated/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z
    .registers 8
    .parameter "fieldContext"
    .parameter "attribute"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 699
    const/4 v3, 0x0

    .line 700
    const-string v4, "nm"

    .line 699
    invoke-static {v3, v4, p2}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 701
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/LatinIME;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 702
    const-string v4, "noMicrophoneKey"

    .line 701
    invoke-static {v3, v4, p2}, Lcom/android/inputmethod/latin/Utils;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v3

    if-nez v3, :cond_2b

    move v0, v1

    .line 703
    .local v0, noMic:Z
    :goto_1a
    invoke-direct {p0, p1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->fieldCanDoVoice(Lcom/android/inputmethod/deprecated/voice/FieldContext;)Z

    move-result v3

    if-eqz v3, :cond_2d

    if-nez v0, :cond_2d

    .line 704
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {v3}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2d

    :goto_2a
    return v2

    .end local v0           #noMic:Z
    :cond_2b
    move v0, v2

    .line 701
    goto :goto_1a

    .restart local v0       #noMic:Z
    :cond_2d
    move v2, v1

    .line 703
    goto :goto_2a
.end method

.method private showVoiceWarningDialog(ZLandroid/os/IBinder;)V
    .registers 15
    .parameter "swipe"
    .parameter "token"

    .prologue
    const v11, 0x7f0c00d3

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 188
    iget-object v4, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 239
    :goto_13
    return-void

    .line 191
    :cond_14
    new-instance v0, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;

    iget-object v4, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-direct {v0, v4}, Lcom/android/inputmethod/deprecated/VoiceProxy$UrlLinkAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 193
    const v4, 0x7f02002f

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 194
    const v4, 0x104000a

    new-instance v5, Lcom/android/inputmethod/deprecated/VoiceProxy$2;

    invoke-direct {v5, p0, p1}, Lcom/android/inputmethod/deprecated/VoiceProxy$2;-><init>(Lcom/android/inputmethod/deprecated/VoiceProxy;Z)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 201
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/inputmethod/deprecated/VoiceProxy$3;

    invoke-direct {v5, p0}, Lcom/android/inputmethod/deprecated/VoiceProxy$3;-><init>(Lcom/android/inputmethod/deprecated/VoiceProxy;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    new-instance v4, Lcom/android/inputmethod/deprecated/VoiceProxy$4;

    invoke-direct {v4, p0}, Lcom/android/inputmethod/deprecated/VoiceProxy$4;-><init>(Lcom/android/inputmethod/deprecated/VoiceProxy;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    iget-boolean v4, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mLocaleSupportedForVoiceInput:Z

    if-eqz v4, :cond_94

    .line 219
    new-array v4, v10, [Ljava/lang/CharSequence;

    .line 220
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v5, v11}, Lcom/android/inputmethod/latin/LatinIME;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "\n\n"

    aput-object v5, v4, v7

    .line 221
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    const v6, 0x7f0c00d4

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/LatinIME;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 228
    .local v2, message:Ljava/lang/CharSequence;
    :goto_62
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    const v4, 0x7f0c00d1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 230
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 231
    iget-object v4, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 232
    .local v3, window:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 233
    .local v1, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object p2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 234
    const/16 v4, 0x3eb

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 235
    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 236
    const/high16 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 237
    iget-object v4, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v4}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logKeyboardWarningDialogShown()V

    .line 238
    iget-object v4, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto :goto_13

    .line 223
    .end local v1           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v2           #message:Ljava/lang/CharSequence;
    .end local v3           #window:Landroid/view/Window;
    :cond_94
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/CharSequence;

    .line 224
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    const v6, 0x7f0c00d2

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/latin/LatinIME;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "\n\n"

    aput-object v5, v4, v7

    .line 225
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v5, v11}, Lcom/android/inputmethod/latin/LatinIME;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v9

    const-string v5, "\n\n"

    aput-object v5, v4, v10

    const/4 v5, 0x4

    .line 226
    iget-object v6, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    const v7, 0x7f0c00d4

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/LatinIME;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2       #message:Ljava/lang/CharSequence;
    goto :goto_62
.end method

.method private switchToLastInputMethod()V
    .registers 4

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 616
    .local v0, token:Landroid/os/IBinder;
    new-instance v1, Lcom/android/inputmethod/deprecated/VoiceProxy$6;

    invoke-direct {v1, p0, v0}, Lcom/android/inputmethod/deprecated/VoiceProxy$6;-><init>(Lcom/android/inputmethod/deprecated/VoiceProxy;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 644
    invoke-virtual {v1, v2}, Lcom/android/inputmethod/deprecated/VoiceProxy$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 645
    return-void
.end method


# virtual methods
.method public applyVoiceAlternatives(Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;)Z
    .registers 12
    .parameter "touching"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 447
    iget-object v7, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, selectedWord:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 449
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 451
    :cond_18
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_86

    .line 452
    iput-boolean v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mShowingVoiceSuggestions:Z

    .line 453
    iget-object v7, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 454
    .local v3, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v0, Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;-><init>()V

    .line 457
    .local v0, builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    iget-object v7, p1, Lcom/android/inputmethod/latin/EditingUtils$SelectedWord;->mWord:Ljava/lang/CharSequence;

    invoke-interface {v7, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 458
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_56

    .line 466
    :goto_45
    invoke-virtual {v0, v5}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setTypedWordValid(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->setHasMinimalSuggestion(Z)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    .line 467
    iget-object v6, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->build()Lcom/android/inputmethod/latin/SuggestedWords;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/inputmethod/latin/LatinIME;->setSuggestions(Lcom/android/inputmethod/latin/SuggestedWords;)V

    .line 471
    .end local v0           #builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .end local v3           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :goto_55
    return v5

    .line 458
    .restart local v0       #builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .restart local v3       #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_56
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 459
    .local v4, word:Ljava/lang/CharSequence;
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    .local v2, str:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 461
    invoke-virtual {v0, v4}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWord(Ljava/lang/CharSequence;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    goto :goto_3f

    .line 464
    .end local v2           #str:Ljava/lang/String;
    .end local v4           #word:Ljava/lang/CharSequence;
    :cond_81
    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lcom/android/inputmethod/latin/SuggestedWords$Builder;->addWords(Ljava/util/List;Ljava/util/List;)Lcom/android/inputmethod/latin/SuggestedWords$Builder;

    goto :goto_45

    .end local v0           #builder:Lcom/android/inputmethod/latin/SuggestedWords$Builder;
    .end local v3           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_86
    move v5, v6

    .line 471
    goto :goto_55
.end method

.method public commitVoiceInput()V
    .registers 3

    .prologue
    .line 391
    iget-boolean v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInputHighlighted:Z

    if-eqz v1, :cond_17

    .line 392
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 393
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 394
    :cond_f
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->updateSuggestions()V

    .line 395
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInputHighlighted:Z

    .line 397
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_17
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 733
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    if-eqz v0, :cond_9

    .line 734
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->destroy()V

    .line 736
    :cond_9
    return-void
.end method

.method public flushAndLogAllTextModificationCounters(ILjava/lang/CharSequence;Ljava/lang/String;)V
    .registers 7
    .parameter "index"
    .parameter "suggestion"
    .parameter "wordSeparators"

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mAfterVoiceInput:Z

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mShowingVoiceSuggestions:Z

    if-eqz v0, :cond_1c

    .line 180
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 182
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 182
    invoke-virtual {v0, v1, p1, p3, v2}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logTextModifiedByChooseSuggestion(Ljava/lang/String;ILjava/lang/String;Landroid/view/inputmethod/InputConnection;)V

    .line 185
    :cond_1c
    return-void
.end method

.method public flushVoiceInputLogs(Z)V
    .registers 3
    .parameter "configurationChanged"

    .prologue
    .line 164
    if-nez p1, :cond_1a

    .line 165
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mAfterVoiceInput:Z

    if-eqz v0, :cond_10

    .line 166
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 167
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logInputEnded()V

    .line 169
    :cond_10
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->flushLogs()V

    .line 170
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->cancel()V

    .line 172
    :cond_1a
    return-void
.end method

.method public getAndResetIsShowingHint()Z
    .registers 3

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mIsShowingHint:Z

    .line 379
    .local v0, ret:Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mIsShowingHint:Z

    .line 380
    return v0
.end method

.method public handleBackspace()V
    .registers 3

    .prologue
    .line 478
    iget-boolean v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mAfterVoiceInput:Z

    if-eqz v1, :cond_1f

    .line 481
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->getCursorPos()I

    move-result v1

    if-lez v1, :cond_1f

    .line 484
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->getSelectionSpan()I

    move-result v1

    if-lez v1, :cond_20

    .line 485
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->getSelectionSpan()I

    move-result v0

    .line 486
    .local v0, deleteLen:I
    :goto_1a
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 489
    .end local v0           #deleteLen:I
    :cond_1f
    return-void

    .line 485
    :cond_20
    const/4 v0, 0x1

    goto :goto_1a
.end method

.method public handleCharacter()V
    .registers 3

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->commitVoiceInput()V

    .line 496
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mAfterVoiceInput:Z

    if-eqz v0, :cond_d

    .line 498
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->incrementTextModificationInsertCount(I)V

    .line 500
    :cond_d
    return-void
.end method

.method public handleClose()V
    .registers 2

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mRecognizing:Z

    if-eqz v0, :cond_9

    .line 518
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->cancel()V

    .line 520
    :cond_9
    return-void
.end method

.method public handleSeparator()V
    .registers 3

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->commitVoiceInput()V

    .line 507
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mAfterVoiceInput:Z

    if-eqz v0, :cond_d

    .line 509
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->incrementTextModificationInsertPunctuationCount(I)V

    .line 511
    :cond_d
    return-void
.end method

.method public handleVoiceResults(Z)V
    .registers 12
    .parameter "capitalizeFirstWord"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 527
    iput-boolean v8, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mAfterVoiceInput:Z

    .line 528
    iput-boolean v8, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mImmediatelyAfterVoiceInput:Z

    .line 530
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 531
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME;->isFullscreenMode()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 533
    if-eqz v2, :cond_1e

    .line 534
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 535
    .local v4, req:Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-interface {v2, v4, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    .line 538
    .end local v4           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_1e
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v5}, Lcom/android/inputmethod/latin/LatinIME;->vibrate()V

    .line 540
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v3, nBest:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceResults:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;

    iget-object v5, v5, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3d

    .line 547
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6a

    .line 562
    :goto_3c
    return-void

    .line 541
    :cond_3d
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    .local v1, c:Ljava/lang/String;
    if-eqz p1, :cond_66

    .line 543
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    :cond_66
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 550
    .end local v1           #c:Ljava/lang/String;
    :cond_6a
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, bestResult:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logVoiceInputDelivered(I)V

    .line 552
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHints:Lcom/android/inputmethod/deprecated/voice/Hints;

    invoke-virtual {v5, v0}, Lcom/android/inputmethod/deprecated/voice/Hints;->registerVoiceResult(Ljava/lang/String;)V

    .line 554
    if-eqz v2, :cond_87

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 555
    :cond_87
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v5, v2}, Lcom/android/inputmethod/latin/LatinIME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 556
    invoke-static {v2, v0}, Lcom/android/inputmethod/latin/EditingUtils;->appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 557
    if-eqz v2, :cond_94

    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 559
    :cond_94
    iput-boolean v8, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInputHighlighted:Z

    .line 560
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mWordToSuggestions:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceResults:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;

    iget-object v6, v6, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;->alternatives:Ljava/util/Map;

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 561
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->onCancelVoice()V

    goto :goto_3c
.end method

.method public hideVoiceWindow(Z)V
    .registers 3
    .parameter "configurationChanging"

    .prologue
    .line 323
    if-nez p1, :cond_2d

    .line 324
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mAfterVoiceInput:Z

    if-eqz v0, :cond_b

    .line 325
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logInputEnded()V

    .line 326
    :cond_b
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 327
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logKeyboardWarningDialogDismissed()V

    .line 328
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 331
    :cond_24
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mRecognizing:Z

    if-eqz v0, :cond_2d

    .line 332
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->cancel()V

    .line 335
    :cond_2d
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 336
    return-void
.end method

.method public isRecognizing()Z
    .registers 2

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mRecognizing:Z

    return v0
.end method

.method public isVoiceButtonEnabled()Z
    .registers 2

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceButtonEnabled:Z

    return v0
.end method

.method public isVoiceButtonOnPrimary()Z
    .registers 2

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceButtonOnPrimary:Z

    return v0
.end method

.method public isVoiceInputHighlighted()Z
    .registers 2

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInputHighlighted:Z

    return v0
.end method

.method public loadSettings(Landroid/view/inputmethod/EditorInfo;Landroid/content/SharedPreferences;)V
    .registers 8
    .parameter "attribute"
    .parameter "sp"

    .prologue
    const v4, 0x7f0c0065

    const/4 v1, 0x0

    .line 715
    const-string v2, "has_used_voice_input"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHasUsedVoiceInput:Z

    .line 717
    const-string v2, "has_used_voice_input_unsupported_locale"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 716
    iput-boolean v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 720
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-static {}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInstance()Lcom/android/inputmethod/latin/SubtypeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->getInputLocaleStr()Ljava/lang/String;

    move-result-object v3

    .line 719
    invoke-static {v2, v3}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceSupported(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mLocaleSupportedForVoiceInput:Z

    .line 722
    const-string v2, "voice_mode"

    .line 723
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3, v4}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 722
    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 724
    .local v0, voiceMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    const v3, 0x7f0c0067

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 725
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->makeFieldContext()Lcom/android/inputmethod/deprecated/voice/FieldContext;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->shouldShowVoiceButton(Lcom/android/inputmethod/deprecated/voice/FieldContext;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v1, 0x1

    .line 724
    :cond_4a
    iput-boolean v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceButtonEnabled:Z

    .line 726
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1, v4}, Lcom/android/inputmethod/latin/LatinIME;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceButtonOnPrimary:Z

    .line 727
    return-void
.end method

.method public logAndRevertVoiceInput()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 403
    iget-boolean v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInputHighlighted:Z

    if-eqz v1, :cond_20

    .line 404
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    .line 405
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceResults:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;

    iget-object v2, v2, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 404
    invoke-virtual {v1, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 406
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->revertVoiceInput()V

    .line 407
    const/4 v0, 0x1

    .line 409
    :cond_20
    return v0
.end method

.method public needsToShowWarningDialog()Z
    .registers 2

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHasUsedVoiceInput:Z

    if-eqz v0, :cond_e

    .line 374
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mLocaleSupportedForVoiceInput:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    .line 373
    goto :goto_d
.end method

.method public onAttachedToWindow()V
    .registers 4

    .prologue
    .line 763
    invoke-static {}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->getInstance()Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    #calls: Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->setVoiceInput(Lcom/android/inputmethod/deprecated/voice/VoiceInput;Lcom/android/inputmethod/latin/SubtypeSwitcher;)V
    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;->access$0(Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceInputWrapper;Lcom/android/inputmethod/deprecated/voice/VoiceInput;Lcom/android/inputmethod/latin/SubtypeSwitcher;)V

    .line 764
    return-void
.end method

.method public onCancelVoice()V
    .registers 2

    .prologue
    .line 780
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mRecognizing:Z

    if-eqz v0, :cond_f

    .line 781
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 786
    invoke-direct {p0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->switchToLastInputMethod()V

    .line 796
    :cond_f
    :goto_f
    return-void

    .line 787
    :cond_10
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isKeyboardMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 792
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mRecognizing:Z

    .line 793
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME;->switchToKeyboardView()V

    goto :goto_f
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "configuration"

    .prologue
    .line 770
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mRecognizing:Z

    if-eqz v0, :cond_7

    .line 771
    invoke-virtual {p0, p1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->switchToRecognitionStatusView(Landroid/content/res/Configuration;)V

    .line 773
    :cond_7
    return-void
.end method

.method public onStartInputView(Landroid/os/IBinder;)V
    .registers 4
    .parameter "keyboardViewToken"

    .prologue
    .line 743
    if-eqz p1, :cond_27

    move-object v0, p1

    .line 747
    .local v0, windowToken:Landroid/os/IBinder;
    :goto_3
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mSubtypeSwitcher:Lcom/android/inputmethod/latin/SubtypeSwitcher;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/SubtypeSwitcher;->isVoiceMode()Z

    move-result v1

    if-eqz v1, :cond_26

    if-eqz v0, :cond_26

    .line 749
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 750
    invoke-static {}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getInstance()Lcom/android/inputmethod/keyboard/KeyboardSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/KeyboardSwitcher;->getKeyboardView()Lcom/android/inputmethod/keyboard/LatinKeyboardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/inputmethod/keyboard/LatinKeyboardView;->purgeKeyboardAndClosing()V

    .line 751
    :cond_22
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->startListening(ZLandroid/os/IBinder;)V

    .line 755
    :cond_26
    return-void

    .line 744
    .end local v0           #windowToken:Landroid/os/IBinder;
    :cond_27
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3
.end method

.method public onVoiceResults(Ljava/util/List;Ljava/util/Map;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 804
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, alternatives:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/CharSequence;>;>;"
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mRecognizing:Z

    if-nez v0, :cond_5

    .line 810
    :goto_4
    return-void

    .line 807
    :cond_5
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceResults:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;

    iput-object p1, v0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;->candidates:Ljava/util/List;

    .line 808
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceResults:Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;

    iput-object p2, v0, Lcom/android/inputmethod/deprecated/VoiceProxy$VoiceResults;->alternatives:Ljava/util/Map;

    .line 809
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->updateVoiceResults()V

    goto :goto_4
.end method

.method public rememberReplacedWord(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 7
    .parameter "suggestion"
    .parameter "wordSeparators"

    .prologue
    .line 417
    iget-boolean v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mShowingVoiceSuggestions:Z

    if-eqz v2, :cond_44

    .line 420
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v2}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 419
    invoke-static {v2, p2}, Lcom/android/inputmethod/latin/EditingUtils;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, wordToBeReplaced:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 422
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 424
    :cond_1a
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 425
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 426
    .local v0, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 427
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 429
    :cond_33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mWordToSuggestions:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .end local v0           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v1           #wordToBeReplaced:Ljava/lang/String;
    :cond_44
    return-void
.end method

.method public resetVoiceStates(Z)V
    .registers 3
    .parameter "isPasswordText"

    .prologue
    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mAfterVoiceInput:Z

    .line 154
    iput-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mImmediatelyAfterVoiceInput:Z

    .line 155
    iput-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mShowingVoiceSuggestions:Z

    .line 156
    iput-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInputHighlighted:Z

    .line 157
    iput-boolean p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mPasswordText:Z

    .line 158
    return-void
.end method

.method public setCursorAndSelection(II)V
    .registers 5
    .parameter "newSelEnd"
    .parameter "newSelStart"

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mAfterVoiceInput:Z

    if-eqz v0, :cond_10

    .line 343
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->setCursorPos(I)V

    .line 344
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    sub-int v1, p1, p2

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->setSelectionSpan(I)V

    .line 346
    :cond_10
    return-void
.end method

.method public setShowingVoiceSuggestions(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mShowingVoiceSuggestions:Z

    .line 354
    return-void
.end method

.method public setVoiceInputHighlighted(Z)V
    .registers 2
    .parameter "b"

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInputHighlighted:Z

    .line 350
    return-void
.end method

.method public showPunctuationHintIfNecessary()V
    .registers 3

    .prologue
    .line 310
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v1}, Lcom/android/inputmethod/latin/LatinIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 311
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    iget-boolean v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mImmediatelyAfterVoiceInput:Z

    if-nez v1, :cond_1d

    iget-boolean v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mAfterVoiceInput:Z

    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 312
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHints:Lcom/android/inputmethod/deprecated/voice/Hints;

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/deprecated/voice/Hints;->showPunctuationHintIfNecessary(Landroid/view/inputmethod/InputConnection;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 313
    iget-object v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mVoiceInput:Lcom/android/inputmethod/deprecated/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logPunctuationHintDisplayed()V

    .line 316
    :cond_1d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mImmediatelyAfterVoiceInput:Z

    .line 317
    return-void
.end method

.method public startListening(ZLandroid/os/IBinder;)V
    .registers 4
    .parameter "swipe"
    .parameter "token"

    .prologue
    .line 684
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/VoiceProxy;->needsToShowWarningDialog()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 686
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/deprecated/VoiceProxy;->showVoiceWarningDialog(ZLandroid/os/IBinder;)V

    .line 690
    :goto_9
    return-void

    .line 688
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/inputmethod/deprecated/VoiceProxy;->reallyStartListening(Z)V

    goto :goto_9
.end method

.method public switchToRecognitionStatusView(Landroid/content/res/Configuration;)V
    .registers 4
    .parameter "configuration"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/VoiceProxy;->mHandler:Lcom/android/inputmethod/latin/LatinIME$UIHandler;

    new-instance v1, Lcom/android/inputmethod/deprecated/VoiceProxy$5;

    invoke-direct {v1, p0, p1}, Lcom/android/inputmethod/deprecated/VoiceProxy$5;-><init>(Lcom/android/inputmethod/deprecated/VoiceProxy;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/LatinIME$UIHandler;->post(Ljava/lang/Runnable;)Z

    .line 609
    return-void
.end method

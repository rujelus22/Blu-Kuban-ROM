.class public Lcom/sec/android/inputmethod/axt9/AxT9IME;
.super Landroid/inputmethodservice/InputMethodService;
.source "AxT9IME.java"

# interfaces
.implements Lcom/android/inputmethod/voice/VoiceInput$UiListener;
.implements Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9IME$33;,
        Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;,
        Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;,
        Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;,
        Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;,
        Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;,
        Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;
    }
.end annotation


# static fields
.field public static CANDIDATEVIEW_HEIGHT:I

.field public static IS_CORE_INIT:Z

.field static VOICE_INSTALLED:Z

.field public static WINDOW_HEIGHT:I

.field public static WINDOW_WIDTH:I

.field private static final ivt:[B


# instance fields
.field private final BTKEYBOARD_ACTION_STATE_CHANGED:Ljava/lang/String;

.field private final BTKEYBOARD_EXTRA_STATE:Ljava/lang/String;

.field private final BTKEYBOARD_STATE_CONNECTED:I

.field private final BTKEYBOARD_STATE_CONNECTING:I

.field private final BTKEYBOARD_STATE_DISCONNECTED:I

.field private final BTKEYBOARD_STATE_DISCONNECTING:I

.field private final EMAIL_PACKAGE_NAME:Ljava/lang/String;

.field private EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final ERROR:Z

.field private final FX_VOLUME:F

.field private final GOOGLE_TALK_EDITOR:Ljava/lang/String;

.field private final INFO:Z

.field private LANGUAGE_NUM:I

.field private final MAX_KEY_EVENT_COUNT:I

.field private MY_VIBETONZ_LICENSE_KEY:Ljava/lang/String;

.field private final POPUP_DIALOG_BUTTON_TEXT_SIZE:I

.field private final POPUP_DIALOG_FR_TITLE_TEXT_SIZE:I

.field private final POPUP_DIALOG_TITLE_TEXT_SIZE:I

.field private activityresult:Landroid/content/BroadcastReceiver;

.field private currSymbolsPageNum:I

.field private delayStartInputView:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

.field private doubleSpaceAbleChars:Ljava/lang/String;

.field final mActionClickListener:Landroid/view/View$OnClickListener;

.field private mAfterVoiceInput:Z

.field private mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mAlternativeChar:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoAppendOn:Z

.field private mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

.field private mAutoCapsOn:Z

.field private mAutoLangOn:Z

.field private mAutoPeriodOn:Z

.field private mAutoSpace:Z

.field private mAutoSubstitutionOn:Z

.field private mAxT9WordCompletionCount:S

.field private mBTKeyboardConnected:Z

.field private mBubblePreviewOn:Z

.field private mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

.field private mCapsLock:Z

.field private mCapsStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mChangeConfigRequested:Z

.field private mCommitAlternative:Landroid/content/BroadcastReceiver;

.field private mCommitedLength:I

.field private mCompletionOn:Z

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mComposing:Ljava/lang/StringBuilder;

.field public mConf:Lcom/sec/android/inputmethod/axt9/AxT9Config;

.field private mConfigurationChanging:Z

.field private mConnectBTKeyboard:Landroid/content/BroadcastReceiver;

.field private mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field private mCorrectionOn:Z

.field private final mCountOfCompletionList:I

.field private mCurrentInputMethodType:I

.field public mCurrentLang:I

.field private mCursorHandleReceiver:Landroid/content/BroadcastReceiver;

.field private mCustomExtractViewEnabled:Z

.field protected mDeleteCount:I

.field private mDioDictConfigReceiver:Landroid/content/BroadcastReceiver;

.field private mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

.field private mDocKeyboardConnected:Z

.field private mDoubleSpaceCancelLv1:Z

.field private mDoubleSpaceCanceled:Z

.field private mEditinfo:Landroid/view/inputmethod/EditorInfo;

.field private mEditorAction:I

.field private mEditorAutoComplete:Z

.field private mEditorMessage:Z

.field private mEditorTypeMultiLine:Z

.field private mEditorTypeSearch:Z

.field private mEnableVoice:Z

.field final mExtractBtnDnClickListener:Landroid/view/View$OnClickListener;

.field final mExtractBtnUpClickListener:Landroid/view/View$OnClickListener;

.field private mForcedCapslock:Z

.field private mHWKeyMgr:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

.field private mHWKeyboardConnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasUsedVoiceInput:Z

.field private mHasUsedVoiceInputUnsupportedLocale:Z

.field private mHeightRequestReceiver:Landroid/content/BroadcastReceiver;

.field private mHints:Lcom/sec/android/inputmethod/axt9/Hints;

.field private mHwrPenColor:I

.field private mHwrPenThickness:I

.field private mHwrRecognitionTime:I

.field private mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

.field private mImmediatelyAfterVoiceInput:Z

.field private mImmediatelyAfterVoiceSuggestions:Z

.field private mInputLangOptMenuEnabled:Z

.field protected mInputLanguage:S

.field private mInputLanguageString:[Ljava/lang/CharSequence;

.field private mInputMethodOptMenuEnabled:Z

.field private mInputMethodOptionList:[Ljava/lang/CharSequence;

.field mIsEditorHasText:Z

.field mIsEmailEditor:Z

.field private mIsEmoticonUsable:Z

.field mIsEngToggle:Z

.field mIsGoogleTalk:Z

.field private mIsHWCtrlPressed:Z

.field private mIsHWPopupShown:Z

.field private mIsHWShiftPressed:Z

.field private mIsInputUmlautSymbol:Z

.field private mIsInputViewhandler:Z

.field private mIsMiniKeyboardInput:Z

.field mIsNoSetting:Z

.field private mIsScreenLocked:Z

.field private mIsSettingLangKorean:Z

.field private mIsShiftedHWkey:Z

.field protected mIsShouldwwwDisplayed:Z

.field private mIsSoftkeyShown:Z

.field mIsStartSelectText:Z

.field mIsTextSelected:Z

.field private mIsUmlautOn:Z

.field private mIsVisibleWindow:Z

.field private mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

.field public mLandInputViewHeight:I

.field mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field public mLanguageCodeList:[Ljava/lang/String;

.field public mLanguageDbId:[S

.field public mLanguageIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mLanguageList:[Ljava/lang/String;

.field private mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

.field private mLastEngT9Mode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

.field private mLastHangulKey:I

.field private mLastInputKeyCodeForOnUpdateSelection:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastSoundId:I

.field private mLocaleSupportedForVoiceInput:Z

.field private mOldLocale:Ljava/util/Locale;

.field private mOnSpaceTapKey:Z

.field private mOnlyAbcMode:Z

.field private mOptionDlg:Landroid/app/AlertDialog;

.field private mPasswordMode:Z

.field public mPopupCurrentLang:I

.field private mPopupMenuShown:Z

.field private mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

.field public mPortInputViewHeight:I

.field private mPredictionOn:Z

.field private mPressedShiftOnCapsLock:Z

.field private mRecaptureOn:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecognizing:Z

.field private mRegionalCorrectionOn:Z

.field private mRestartInGSearch:Z

.field private mRestartRequested:Z

.field private mRestarting:Z

.field private mScreenLockReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectLanguage:I

.field private mSetShiftMode:Z

.field private mShowingVoiceSuggestions:Z

.field private mShowinputReceiver:Landroid/content/BroadcastReceiver;

.field private mSilentMode:Z

.field private mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

.field private mSoundNVibrateHandler:Landroid/os/Handler;

.field private mSoundOn:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialActionEditor:Z

.field private mSuggestionListTest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSweepingOn:Z

.field private mSwipeTriggerTimeMillis:J

.field mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field private mTraceOn:Z

.field private mUmlautKey:I

.field public mUmlautLanguageDbId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateDuration:J

.field private mVibrateOn:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceHandler:Landroid/os/Handler;

.field private mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

.field private mVoiceInputHighlighted:Z

.field private mVoiceInputOn:Z

.field private mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

.field private mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

.field private mVoiceWarningDialog:Landroid/app/AlertDialog;

.field private mWordToSuggestions:Ljava/util/Map;
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

.field mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

.field private mXt9Enabled:Z

.field private m_bIsTracing:Z

.field private m_isNoMatchWord:Z

.field private m_nTracePointCount:I

.field private m_tracePointInfo:[Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;

.field private mbLangChangedForEditor:Z

.field private misLandscapeMode:Z

.field private misUserDefineEditor:Z

.field private multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

.field onPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field onPopupDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    .line 101
    const/16 v0, 0x1e0

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    .line 102
    const/16 v0, 0x140

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    .line 104
    const/16 v0, 0x161

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->CANDIDATEVIEW_HEIGHT:I

    .line 448
    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->ivt:[B

    .line 484
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    return-void

    .line 448
    :array_1c
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x30t
        0x0t
        0x31t
        0x0t
        0x5ft
        0x0t
        0x30t
        0xd1t
        0x58t
        0xcet
        0xa4t
        0xc2t
        0xc0t
        0xd0t
        0xb8t
        0xd2t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v0, 0x18

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 95
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->INFO:Z

    .line 96
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->ERROR:Z

    .line 106
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPortInputViewHeight:I

    .line 107
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLandInputViewHeight:I

    .line 109
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->POPUP_DIALOG_BUTTON_TEXT_SIZE:I

    .line 110
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->POPUP_DIALOG_TITLE_TEXT_SIZE:I

    .line 111
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->POPUP_DIALOG_FR_TITLE_TEXT_SIZE:I

    .line 213
    const/16 v0, 0x40

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->MAX_KEY_EVENT_COUNT:I

    .line 232
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    .line 233
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupCurrentLang:I

    .line 235
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    .line 277
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    .line 279
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    .line 281
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsMiniKeyboardInput:Z

    .line 282
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    .line 284
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSoftkeyShown:Z

    .line 317
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    .line 318
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    .line 320
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 321
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    .line 322
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEditorHasText:Z

    .line 324
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    .line 325
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    .line 326
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsGoogleTalk:Z

    .line 327
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmailEditor:Z

    .line 335
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoLangOn:Z

    .line 338
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misUserDefineEditor:Z

    .line 340
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupMenuShown:Z

    .line 343
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsVisibleWindow:Z

    .line 348
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    .line 349
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mChangeConfigRequested:Z

    .line 352
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    .line 355
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorTypeMultiLine:Z

    .line 356
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorTypeSearch:Z

    .line 357
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSpecialActionEditor:Z

    .line 366
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    .line 367
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    .line 368
    const-string v0, "#)\'\"%>"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->doubleSpaceAbleChars:Ljava/lang/String;

    .line 370
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAction:I

    .line 373
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    .line 377
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    .line 380
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 383
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;->UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngT9Mode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    .line 399
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->FX_VOLUME:F

    .line 404
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastSoundId:I

    .line 421
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    .line 426
    const/16 v0, 0x9

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    .line 431
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCountOfCompletionList:I

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSuggestionListTest:Ljava/util/List;

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->EMPTY_LIST:Ljava/util/List;

    .line 435
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    .line 437
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastHangulKey:I

    .line 446
    const-string v0, "SWTL4GTU6QRDN8FZZZPP67ZBXMLVB9E4"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->MY_VIBETONZ_LICENSE_KEY:Ljava/lang/String;

    .line 465
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOnSpaceTapKey:Z

    .line 470
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_bIsTracing:Z

    .line 471
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_isNoMatchWord:Z

    .line 486
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$1;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    .line 491
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEnableVoice:Z

    .line 498
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mWordToSuggestions:Ljava/util/Map;

    .line 550
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsUmlautOn:Z

    .line 551
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyboardConnected:Z

    .line 552
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mBTKeyboardConnected:Z

    .line 553
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDocKeyboardConnected:Z

    .line 570
    const-string v0, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->BTKEYBOARD_ACTION_STATE_CHANGED:Ljava/lang/String;

    .line 571
    const-string v0, "com.broadcom.bt.service.hid.extra.STATE"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->BTKEYBOARD_EXTRA_STATE:Ljava/lang/String;

    .line 572
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->BTKEYBOARD_STATE_DISCONNECTED:I

    .line 573
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->BTKEYBOARD_STATE_CONNECTING:I

    .line 574
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->BTKEYBOARD_STATE_CONNECTED:I

    .line 575
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->BTKEYBOARD_STATE_DISCONNECTING:I

    .line 580
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShiftedHWkey:Z

    .line 581
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPressedShiftOnCapsLock:Z

    .line 582
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWPopupShown:Z

    .line 583
    const/16 v0, -0xff

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mUmlautKey:I

    .line 584
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsInputUmlautSymbol:Z

    .line 585
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWShiftPressed:Z

    .line 586
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWCtrlPressed:Z

    .line 591
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsInputViewhandler:Z

    .line 593
    const-string v0, "com.google.android.talk"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->GOOGLE_TALK_EDITOR:Ljava/lang/String;

    .line 594
    const-string v0, "com.android.email"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->EMAIL_PACKAGE_NAME:Ljava/lang/String;

    .line 611
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundNVibrateHandler:Landroid/os/Handler;

    .line 625
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHandler:Landroid/os/Handler;

    .line 627
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceHandler:Landroid/os/Handler;

    .line 670
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 690
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mExtractBtnUpClickListener:Landroid/view/View$OnClickListener;

    .line 696
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mExtractBtnDnClickListener:Landroid/view/View$OnClickListener;

    .line 713
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    .line 722
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->delayStartInputView:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    .line 4218
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->activityresult:Landroid/content/BroadcastReceiver;

    .line 4271
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$11;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$11;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioDictConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 4294
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHeightRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 4331
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$13;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$13;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mScreenLockReceiver:Landroid/content/BroadcastReceiver;

    .line 4343
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 4350
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCursorHandleReceiver:Landroid/content/BroadcastReceiver;

    .line 4386
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 4411
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$17;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$17;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 4421
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$18;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$18;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCommitAlternative:Landroid/content/BroadcastReceiver;

    .line 4433
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$19;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$19;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConnectBTKeyboard:Landroid/content/BroadcastReceiver;

    .line 4448
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$20;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$20;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mShowinputReceiver:Landroid/content/BroadcastReceiver;

    .line 5582
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$21;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$21;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 6663
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$26;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$26;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 6672
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$27;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$27;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onPopupDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method private HWKeyProcess(ILandroid/view/KeyEvent;)V
    .registers 4
    .parameter "convertedCode"
    .parameter "event"

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1292
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->koreanHWkeyProcess(ILandroid/view/KeyEvent;)V

    .line 1296
    :goto_9
    return-void

    .line 1294
    :cond_a
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->latinHWkeyProcess(ILandroid/view/KeyEvent;)V

    goto :goto_9
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleVoiceResults()V

    return-void
.end method

.method static synthetic access$1002(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsInputViewhandler:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/view/inputmethod/EditorInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditinfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestarting:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Ljava/lang/StringBuilder;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9IME;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKeyTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/sec/android/inputmethod/axt9/AxT9IME;Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoLangOn(Z)V

    return-void
.end method

.method static synthetic access$2502(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/sec/android/inputmethod/axt9/AxT9IME;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlternativeChar:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->settingHWKeyboardConnection(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSwipeTriggerTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/android/inputmethod/voice/VoiceInput;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startListening(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;
    .registers 2
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    return-void
.end method

.method private canUseT9(I)Z
    .registers 4
    .parameter

    .prologue
    .line 2783
    .line 2784
    const-string v0, "-%$#\'"

    .line 2785
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v1

    if-nez v1, :cond_13

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_13
    const/4 v0, 0x1

    .line 2786
    :goto_14
    return v0

    .line 2785
    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private changeToCode(I)V
    .registers 4
    .parameter "code"

    .prologue
    .line 3873
    const/16 v0, -0x89

    if-ne p1, v0, :cond_c

    .line 3874
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_c

    .line 3875
    const/16 p1, -0x7c

    .line 3879
    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 3880
    return-void
.end method

.method private checkDoubleSpaceCanceled(I)V
    .registers 4
    .parameter "primaryCode"

    .prologue
    const/4 v1, 0x0

    .line 9506
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x20

    if-eq p1, v0, :cond_c

    .line 9507
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    .line 9511
    :cond_b
    :goto_b
    return-void

    .line 9508
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    if-eqz v0, :cond_b

    const/4 v0, -0x5

    if-eq p1, v0, :cond_b

    .line 9509
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    goto :goto_b
.end method

.method private checkMultitapTimeout(I)V
    .registers 3
    .parameter "primaryCode"

    .prologue
    .line 9516
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isMultitapMode()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 9517
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 9518
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 9519
    if-gez p1, :cond_25

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_25

    const/4 v0, -0x5

    if-eq p1, v0, :cond_25

    .line 9520
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 9528
    :cond_25
    return-void
.end method

.method private clearBuffersAtEmptyEditText()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 9531
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 9532
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2e

    .line 9533
    const/4 v2, 0x1

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 9534
    .local v1, str:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2e

    .line 9535
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2e

    .line 9536
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 9537
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 9538
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 9539
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 9541
    :cond_29
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 9545
    .end local v1           #str:Ljava/lang/CharSequence;
    :cond_2e
    return-void
.end method

.method private commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .registers 4
    .parameter "ic"
    .parameter "text"

    .prologue
    .line 8605
    if-nez p1, :cond_3

    .line 8611
    :goto_2
    return-void

    .line 8608
    :cond_3
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_2
.end method

.method private commitTyped(Landroid/view/inputmethod/InputConnection;)V
    .registers 4
    .parameter "inputConnection"

    .prologue
    .line 9201
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 9202
    if-eqz p1, :cond_10

    .line 9203
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 9206
    :cond_10
    return-void
.end method

.method private commitVoiceInput()V
    .registers 3

    .prologue
    .line 9186
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 9187
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 9188
    :cond_9
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    .line 9189
    return-void
.end method

.method public static containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 6066
    if-nez p1, :cond_4

    .line 6072
    :cond_3
    :goto_3
    return v0

    .line 6068
    :cond_4
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_c
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 6069
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 6070
    const/4 v0, 0x1

    goto :goto_3

    .line 6068
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method private convertCyrillicUmlaut(I)I
    .registers 5
    .parameter "keyCode"

    .prologue
    .line 9636
    move v0, p1

    .line 9637
    .local v0, convertedCode:I
    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0x61

    if-ne v1, v2, :cond_26

    .line 9638
    sparse-switch p1, :sswitch_data_34

    .line 9675
    :cond_a
    :goto_a
    return v0

    .line 9640
    :sswitch_b
    const/16 v0, 0x6a

    .line 9641
    goto :goto_a

    .line 9643
    :sswitch_e
    const/16 v0, 0x77

    .line 9644
    goto :goto_a

    .line 9646
    :sswitch_11
    const/16 v0, 0x6e

    .line 9647
    goto :goto_a

    .line 9649
    :sswitch_14
    const/16 v0, 0x64

    .line 9650
    goto :goto_a

    .line 9652
    :sswitch_17
    const/16 v0, 0x79

    .line 9653
    goto :goto_a

    .line 9655
    :sswitch_1a
    const/16 v0, 0x7a

    .line 9656
    goto :goto_a

    .line 9658
    :sswitch_1d
    const/16 v0, 0x68

    .line 9659
    goto :goto_a

    .line 9661
    :sswitch_20
    const/16 v0, 0x76

    .line 9662
    goto :goto_a

    .line 9664
    :sswitch_23
    const/16 v0, 0x7b

    .line 9665
    goto :goto_a

    .line 9669
    :cond_26
    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0x22

    if-ne v1, v2, :cond_a

    .line 9670
    const/16 v1, 0x44f

    if-ne p1, v1, :cond_a

    .line 9671
    const/16 v0, 0x7d

    goto :goto_a

    .line 9638
    nop

    :sswitch_data_34
    .sparse-switch
        0x433 -> :sswitch_14
        0x437 -> :sswitch_1d
        0x439 -> :sswitch_b
        0x43d -> :sswitch_11
        0x445 -> :sswitch_20
        0x446 -> :sswitch_e
        0x448 -> :sswitch_17
        0x449 -> :sswitch_1a
        0x44a -> :sswitch_23
    .end sparse-switch
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .registers 5
    .parameter "string"

    .prologue
    .line 3923
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 3925
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_17

    .line 3926
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 3925
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 3929
    :cond_17
    return-object v1
.end method

.method private decreaseSymbolsPageNumber()V
    .registers 7

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 4055
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v4, :cond_3b

    .line 4056
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-nez v4, :cond_26

    .line 4059
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v2, v5, :cond_1f

    .line 4060
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v2, :cond_1d

    :goto_1a
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    .line 4102
    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v0, v1

    .line 4060
    goto :goto_1a

    .line 4062
    :cond_1f
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4065
    :cond_26
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v5, :cond_34

    .line 4066
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v0, :cond_32

    move v0, v2

    :goto_2f
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    :cond_32
    move v0, v3

    goto :goto_2f

    .line 4068
    :cond_34
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4072
    :cond_3b
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-ne v4, v3, :cond_57

    .line 4073
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v5, :cond_50

    .line 4074
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v0, :cond_4e

    :goto_4b
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    :cond_4e
    move v2, v3

    goto :goto_4b

    .line 4076
    :cond_50
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4078
    :cond_57
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-nez v4, :cond_89

    .line 4079
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v4

    if-ne v4, v2, :cond_75

    .line 4080
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v5, :cond_6e

    .line 4081
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4083
    :cond_6e
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4086
    :cond_75
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v2, v5, :cond_82

    .line 4087
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v2, :cond_80

    :goto_7d
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    :cond_80
    move v0, v1

    goto :goto_7d

    .line 4089
    :cond_82
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4092
    :cond_89
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v5, :cond_1c

    .line 4093
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v5, :cond_98

    .line 4094
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4096
    :cond_98
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto/16 :goto_1c
.end method

.method private displayHangul(Landroid/view/inputmethod/InputConnection;)V
    .registers 9
    .parameter "ic"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2758
    if-nez p1, :cond_5

    .line 2775
    :goto_4
    return-void

    .line 2762
    :cond_5
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getHangulWord()Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    move-result-object v1

    .line 2763
    .local v1, hangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;
    iget-short v2, v1, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->wComplete:S

    if-lez v2, :cond_3e

    .line 2764
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2766
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-short v3, v1, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->wComplete:S

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2767
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-short v3, v1, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->wComplete:S

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2768
    .local v0, cs:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2769
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2770
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {p1, v2, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2771
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_4

    .line 2773
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_3e
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {p1, v2, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_4
.end method

.method private doDoubleSpace()V
    .registers 9

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8382
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 8383
    if-nez v0, :cond_c

    .line 8415
    :cond_b
    :goto_b
    :pswitch_b
    return-void

    .line 8384
    :cond_c
    const/4 v1, 0x3

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 8385
    if-eqz v1, :cond_b

    .line 8387
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_60

    goto :goto_b

    .line 8395
    :pswitch_1b
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->doubleSpaceAbleChars:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_3b
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_b

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_b

    .line 8400
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    if-eqz v1, :cond_4e

    .line 8401
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    goto :goto_b

    .line 8404
    :cond_4e
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 8405
    invoke-interface {v0, v6, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 8407
    const-string v1, ". "

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 8408
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 8409
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    goto :goto_b

    .line 8387
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_1b
    .end packed-switch
.end method

.method private doNextWordPrediction()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 5266
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 5267
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_8

    .line 5282
    :goto_7
    return-void

    .line 5271
    :cond_8
    const/4 v2, 0x2

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5273
    .local v0, charBeforeCorsor:Ljava/lang/CharSequence;
    if-eqz v0, :cond_29

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_29

    .line 5275
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v2

    if-nez v2, :cond_25

    .line 5276
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 5281
    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateComposerFromXT9()V

    goto :goto_7

    .line 5279
    :cond_29
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    goto :goto_25
.end method

.method private getCountryCode()I
    .registers 4

    .prologue
    .line 9490
    const/4 v0, 0x0

    .line 9491
    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0x9

    if-ne v1, v2, :cond_20

    .line 9492
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    .line 9493
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isComCodeBSE()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 9494
    const/4 v0, 0x4

    .line 9502
    :cond_20
    :goto_20
    return v0

    .line 9495
    :cond_21
    const-string v1, "en(UK)"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 9496
    const/4 v0, 0x2

    goto :goto_20

    .line 9498
    :cond_2b
    const/4 v0, 0x1

    goto :goto_20
.end method

.method private getDefaultLocalLanguge()S
    .registers 5

    .prologue
    .line 6393
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 6395
    const-string v1, "nb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 6396
    const-string v0, "no"

    move-object v1, v0

    .line 6399
    :goto_19
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    move v2, v0

    :goto_21
    if-ge v2, v3, :cond_4e

    .line 6400
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 6401
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    .line 6405
    :goto_49
    return v0

    .line 6399
    :cond_4a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_21

    .line 6405
    :cond_4e
    const/16 v0, 0x9

    goto :goto_49

    :cond_51
    move-object v1, v0

    goto :goto_19
.end method

.method private getFlagIsAutoCapsOn()Z
    .registers 2

    .prologue
    .line 6846
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapsOn:Z

    return v0
.end method

.method private getFlagIsAutoSubstitutionOn()Z
    .registers 2

    .prologue
    .line 6902
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoSubstitutionOn:Z

    return v0
.end method

.method private getFlagIsPredictionOn()Z
    .registers 2

    .prologue
    .line 6860
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPredictionOn:Z

    return v0
.end method

.method private getFlagIsSoundOn()Z
    .registers 2

    .prologue
    .line 6839
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundOn:Z

    return v0
.end method

.method private getFlagIsSpellCorrectionOn()Z
    .registers 2

    .prologue
    .line 6888
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCorrectionOn:Z

    return v0
.end method

.method private getFlagIsVibrateOn()Z
    .registers 2

    .prologue
    .line 6832
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVibrateOn:Z

    return v0
.end method

.method private getFrenchConvertedKeycode(I)I
    .registers 6
    .parameter "keyCode"

    .prologue
    const/16 v3, 0x7a

    const/16 v2, 0x77

    const/16 v1, 0x71

    const/16 v0, 0x61

    .line 9771
    if-eq p1, v1, :cond_10

    if-eq p1, v0, :cond_10

    if-eq p1, v2, :cond_10

    if-ne p1, v3, :cond_14

    .line 9772
    :cond_10
    if-ne p1, v1, :cond_15

    .line 9773
    const/16 p1, 0x61

    .line 9783
    :cond_14
    :goto_14
    return p1

    .line 9774
    :cond_15
    if-ne p1, v0, :cond_1a

    .line 9775
    const/16 p1, 0x71

    goto :goto_14

    .line 9776
    :cond_1a
    if-ne p1, v3, :cond_1f

    .line 9777
    const/16 p1, 0x77

    goto :goto_14

    .line 9778
    :cond_1f
    if-ne p1, v2, :cond_14

    .line 9779
    const/16 p1, 0x7a

    goto :goto_14
.end method

.method private getImTypeString(I)Ljava/lang/String;
    .registers 6
    .parameter

    .prologue
    const v3, 0x7f0a002b

    const v2, 0x7f0a002d

    .line 7662
    const-string v0, ""

    .line 7663
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 7665
    packed-switch p1, :pswitch_data_160

    .line 7700
    :goto_13
    return-object v0

    .line 7667
    :pswitch_14
    const-string v0, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 7668
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 3x4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 7670
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3x4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    .line 7675
    :pswitch_6c
    const-string v0, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    const-string v0, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    const-string v0, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8c

    const-string v0, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 7676
    :cond_8c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 5x3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 7678
    :cond_a9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5x3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 7683
    :pswitch_c6
    const-string v0, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    const-string v0, "pl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    const-string v0, "es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e6

    const-string v0, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 7684
    :cond_e6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 7686
    :cond_10f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 7691
    :pswitch_138
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 7694
    :pswitch_145
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 7697
    :pswitch_152
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0080

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_13

    .line 7665
    nop

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_14
        :pswitch_6c
        :pswitch_c6
        :pswitch_138
        :pswitch_145
        :pswitch_152
    .end packed-switch
.end method

.method private getIsAutoSpace()Z
    .registers 2

    .prologue
    .line 6947
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoSpace:Z

    return v0
.end method

.method private getIsSilentMode()Z
    .registers 2

    .prologue
    .line 7018
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSilentMode:Z

    return v0
.end method

.method private getIsVisibleWindow()Z
    .registers 2

    .prologue
    .line 7003
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsVisibleWindow:Z

    return v0
.end method

.method private getKeycodeFromKeyEvent(IZZ)I
    .registers 14
    .parameter "key"
    .parameter "shiftPress"
    .parameter "altgrPress"

    .prologue
    const/16 v9, 0x4b

    const/16 v8, 0x44

    const/16 v7, 0x2d

    const/4 v4, 0x0

    .line 9296
    move v3, p1

    .line 9297
    .local v3, ret:I
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShiftedHWkey:Z

    .line 9299
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 9300
    const/16 v5, 0x43

    if-ne v3, v5, :cond_16

    .line 9301
    const/4 v3, -0x5

    .line 9341
    :cond_15
    :goto_15
    return v3

    .line 9302
    :cond_16
    const/16 v5, 0x42

    if-ne v3, v5, :cond_1d

    .line 9303
    const/16 v3, 0xa

    goto :goto_15

    .line 9304
    :cond_1d
    const/16 v5, 0x3e

    if-ne v3, v5, :cond_24

    .line 9305
    const/16 v3, 0x20

    goto :goto_15

    .line 9307
    :cond_24
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCountryCode()I

    move-result v1

    .line 9308
    .local v1, countryCode:I
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyMgr:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    invoke-virtual {v5, v6, v1, p1}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->getHWKeyInfo(SII)Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;

    move-result-object v2

    .line 9313
    .local v2, currentInfo:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;
    if-eqz v2, :cond_15

    .line 9314
    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPressedShiftOnCapsLock:Z

    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    or-int v0, v5, v6

    .line 9315
    .local v0, capsLock:Z
    if-eqz p2, :cond_4e

    if-eqz p3, :cond_4e

    .line 9316
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->getShiftedAltGrKeyvalue()I

    move-result v3

    .line 9337
    :goto_40
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->getNormalKeyValues()I

    move-result v5

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->getShiftedKeyvalue()I

    move-result v6

    if-ne v5, v6, :cond_4b

    const/4 v4, 0x1

    :cond_4b
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShiftedHWkey:Z

    goto :goto_15

    .line 9317
    :cond_4e
    if-eqz p3, :cond_55

    .line 9318
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->getAltGrKeyValues()I

    move-result v3

    goto :goto_40

    .line 9319
    :cond_55
    iget-short v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v6, 0x8

    if-ne v5, v6, :cond_61

    if-eq p1, v7, :cond_90

    const/16 v5, 0x33

    if-eq p1, v5, :cond_90

    :cond_61
    iget-short v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6c

    if-eq p1, v7, :cond_90

    const/16 v5, 0x48

    if-eq p1, v5, :cond_90

    :cond_6c
    iget-short v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v6, 0xc

    if-ne v5, v6, :cond_74

    if-eq p1, v9, :cond_90

    :cond_74
    iget-short v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v6, 0x19

    if-ne v5, v6, :cond_7c

    if-eq p1, v8, :cond_90

    :cond_7c
    iget-short v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v6, 0x22

    if-ne v5, v6, :cond_84

    if-eq p1, v8, :cond_90

    :cond_84
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isComCodeBSE()Z

    move-result v5

    if-eqz v5, :cond_a8

    if-eq p1, v9, :cond_90

    const/16 v5, 0x12

    if-ne p1, v5, :cond_a8

    .line 9325
    :cond_90
    if-eqz v0, :cond_94

    if-eqz p2, :cond_9e

    :cond_94
    if-nez v0, :cond_98

    if-nez p2, :cond_9e

    :cond_98
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isForcedCapsLockForGreek()Z

    move-result v5

    if-eqz v5, :cond_a3

    .line 9328
    :cond_9e
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->getShiftedKeyvalue()I

    move-result v3

    goto :goto_40

    .line 9330
    :cond_a3
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->getNormalKeyValues()I

    move-result v3

    goto :goto_40

    .line 9332
    :cond_a8
    if-eqz p2, :cond_af

    .line 9333
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->getShiftedKeyvalue()I

    move-result v3

    goto :goto_40

    .line 9335
    :cond_af
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr$HWKeyInfo;->getNormalKeyValues()I

    move-result v3

    goto :goto_40
.end method

.method private getKeyfromKeycode(I)Landroid/inputmethodservice/Keyboard$Key;
    .registers 7
    .parameter "keyCode"

    .prologue
    .line 9680
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 9681
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 9682
    .local v2, keyList:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v0, 0x0

    .line 9683
    .local v0, dialogkey:Landroid/inputmethodservice/Keyboard$Key;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_31

    .line 9684
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v3, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v3, p1, :cond_32

    .line 9685
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #dialogkey:Landroid/inputmethodservice/Keyboard$Key;
    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 9691
    .end local v1           #i:I
    .end local v2           #keyList:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    :cond_31
    :goto_31
    return-object v0

    .line 9683
    .restart local v0       #dialogkey:Landroid/inputmethodservice/Keyboard$Key;
    .restart local v1       #i:I
    .restart local v2       #keyList:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 9691
    .end local v0           #dialogkey:Landroid/inputmethodservice/Keyboard$Key;
    .end local v1           #i:I
    .end local v2           #keyList:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    :cond_35
    const/4 v0, 0x0

    goto :goto_31
.end method

.method private getLabelFromCode(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    const v2, 0x7f0a003f

    const/4 v1, 0x2

    .line 8311
    const-string v0, ""

    .line 8313
    sparse-switch p1, :sswitch_data_80

    .line 8345
    :goto_9
    return-object v0

    .line 8315
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 8318
    :sswitch_16
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 8321
    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 8324
    :sswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 8327
    :sswitch_3a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 8330
    :sswitch_46
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_57

    .line 8331
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 8333
    :cond_57
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 8337
    :sswitch_63
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_74

    .line 8338
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 8340
    :cond_74
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 8313
    :sswitch_data_80
    .sparse-switch
        -0x89 -> :sswitch_2e
        -0x88 -> :sswitch_3a
        -0x87 -> :sswitch_22
        -0x86 -> :sswitch_a
        -0x85 -> :sswitch_16
        -0x6e -> :sswitch_63
        -0x6d -> :sswitch_46
    .end sparse-switch
.end method

.method private getLastWordBeforeCorsor()Ljava/lang/String;
    .registers 13

    .prologue
    const/16 v11, 0x20

    const/16 v10, 0xa

    const/4 v9, -0x1

    const/4 v7, 0x0

    .line 5290
    const-string v5, ""

    .line 5291
    .local v5, returnText:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 5292
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_11

    .line 5294
    const-string v7, ""

    .line 5325
    :goto_10
    return-object v7

    .line 5297
    :cond_11
    const/16 v8, 0x40

    invoke-interface {v0, v8, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 5298
    .local v6, text:Ljava/lang/String;
    if-nez v6, :cond_1e

    .line 5300
    const-string v7, ""

    goto :goto_10

    .line 5303
    :cond_1e
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 5304
    .local v4, length:I
    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 5305
    .local v3, lastSpaceIndex:I
    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 5307
    .local v1, lastEnterIndex:I
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5309
    .local v2, lastIndexOfDevider:I
    if-nez v4, :cond_34

    .line 5310
    const-string v5, ""

    :goto_32
    move-object v7, v5

    .line 5325
    goto :goto_10

    .line 5311
    :cond_34
    if-ne v2, v9, :cond_38

    .line 5312
    move-object v5, v6

    goto :goto_32

    .line 5313
    :cond_38
    add-int/lit8 v8, v4, -0x1

    if-ne v2, v8, :cond_5f

    .line 5314
    :goto_3c
    add-int/lit8 v8, v4, -0x1

    if-ne v2, v8, :cond_55

    .line 5315
    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 5316
    invoke-virtual {v6, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 5317
    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 5318
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5319
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_3c

    .line 5321
    :cond_55
    if-ne v2, v9, :cond_5c

    :goto_57
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_32

    :cond_5c
    add-int/lit8 v7, v2, 0x1

    goto :goto_57

    .line 5323
    :cond_5f
    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_32
.end method

.method private getLastWordDividerIndex()I
    .registers 14

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0xa

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 5329
    const/4 v6, -0x1

    .line 5331
    .local v6, returnIndex:I
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 5332
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_e

    .line 5366
    :cond_d
    :goto_d
    return v8

    .line 5337
    :cond_e
    const/16 v9, 0x40

    invoke-interface {v0, v9, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5338
    .local v7, text:Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 5342
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 5343
    .local v4, length:I
    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 5344
    .local v3, lastSpaceIndex:I
    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 5346
    .local v1, lastEnterIndex:I
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5348
    .local v2, lastIndexOfDevider:I
    if-nez v4, :cond_2d

    .line 5349
    const/4 v6, 0x0

    :goto_2b
    move v8, v6

    .line 5366
    goto :goto_d

    .line 5350
    :cond_2d
    if-ne v2, v10, :cond_34

    .line 5351
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_2b

    .line 5352
    :cond_34
    add-int/lit8 v9, v4, -0x1

    if-ne v2, v9, :cond_66

    .line 5353
    const/4 v5, 0x0

    .line 5354
    .local v5, numberOfDeletingChar:I
    :goto_39
    add-int/lit8 v9, v4, -0x1

    if-ne v2, v9, :cond_56

    if-ltz v2, :cond_56

    .line 5355
    invoke-virtual {v7, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 5356
    invoke-virtual {v7, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 5357
    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 5358
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 5359
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .line 5360
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 5362
    :cond_56
    if-ne v2, v10, :cond_63

    :goto_58
    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int v6, v8, v5

    .line 5363
    goto :goto_2b

    .line 5362
    :cond_63
    add-int/lit8 v8, v2, 0x1

    goto :goto_58

    .line 5364
    .end local v5           #numberOfDeletingChar:I
    :cond_66
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_2b
.end method

.method private getSettingLanguage()V
    .registers 14

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0x12

    const/16 v10, 0x10

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 6204
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 6207
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6208
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6209
    const/4 v1, -0x1

    .line 6210
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v5

    move v2, v3

    :goto_1e
    if-ge v2, v5, :cond_90

    .line 6211
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v0

    .line 6212
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    .line 6213
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    .line 6214
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    if-ne v0, v11, :cond_63

    move v1, v2

    .line 6217
    :cond_63
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-interface {v7, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 6218
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6219
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6210
    :cond_8d
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 6222
    :cond_90
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    .line 6224
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    array-length v5, v0

    move v2, v3

    :goto_9c
    if-ge v2, v5, :cond_b0

    .line 6225
    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    aput-short v0, v8, v2

    .line 6224
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9c

    .line 6230
    :cond_b0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v2, v3

    :goto_b7
    if-ge v2, v4, :cond_2cd

    .line 6231
    const/16 v5, 0x9

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    if-ne v5, v0, :cond_181

    .line 6237
    :goto_cd
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 6238
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getDefaultLocalLanguge()S

    move-result v5

    move v4, v3

    .line 6240
    :goto_da
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v0

    if-ge v4, v0, :cond_ff

    .line 6241
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    if-ne v5, v0, :cond_185

    .line 6242
    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    .line 6243
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6247
    :cond_ff
    if-ne v5, v11, :cond_18a

    .line 6248
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6249
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassText()Z

    move-result v0

    if-eqz v0, :cond_130

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-eq v0, v12, :cond_12c

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-eq v0, v10, :cond_12c

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_12c

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v2, 0x90

    if-ne v0, v2, :cond_130

    .line 6254
    :cond_12c
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    .line 6255
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    .line 6321
    :cond_130
    :goto_130
    const-string v0, "select_language"

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6322
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_170

    .line 6323
    if-ne v0, v1, :cond_2c3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassText()Z

    move-result v2

    if-eqz v2, :cond_2c3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v2

    if-eq v2, v12, :cond_170

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v2

    if-eq v2, v10, :cond_170

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v2

    const/16 v4, 0x80

    if-eq v2, v4, :cond_170

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v2

    const/16 v4, 0x90

    if-ne v2, v4, :cond_2c3

    .line 6335
    :cond_170
    :goto_170
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 6339
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    if-ne v0, v1, :cond_179

    move v3, v6

    :cond_179
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    .line 6340
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 6341
    return-void

    .line 6230
    :cond_181
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b7

    .line 6240
    :cond_185
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_da

    .line 6257
    :cond_18a
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    if-eqz v0, :cond_130

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_130

    const/16 v0, 0x9

    if-eq v5, v0, :cond_130

    .line 6258
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6259
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    .line 6260
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    goto :goto_130

    .line 6264
    :cond_1a8
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v6, :cond_217

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    aget-short v0, v0, v3

    if-ne v0, v11, :cond_217

    .line 6266
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6272
    :cond_1bf
    :goto_1bf
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 6273
    const/4 v5, -0x1

    .line 6274
    const-string v2, "en"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23d

    .line 6275
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 6276
    const-string v2, "GB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22f

    .line 6277
    const-string v0, "en(UK)"

    :goto_1e2
    move-object v2, v0

    .line 6289
    :goto_1e3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    move v4, v3

    :goto_1ee
    if-ge v4, v8, :cond_249

    .line 6290
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    .line 6291
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c7

    move v0, v4

    .line 6289
    :goto_213
    add-int/lit8 v4, v4, 0x1

    move v5, v0

    goto :goto_1ee

    .line 6267
    :cond_217
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    if-eqz v0, :cond_1bf

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    aget-short v0, v0, v3

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1bf

    .line 6268
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 6269
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    goto :goto_1bf

    .line 6278
    :cond_22f
    const-string v2, "US"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23a

    .line 6279
    const-string v0, "en(US)"

    goto :goto_1e2

    .line 6281
    :cond_23a
    const-string v0, "en(UK)"

    goto :goto_1e2

    .line 6285
    :cond_23d
    const-string v2, "nb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2ca

    .line 6286
    const-string v0, "no"

    move-object v2, v0

    goto :goto_1e3

    .line 6296
    :cond_249
    const/4 v0, -0x1

    if-ne v5, v0, :cond_280

    .line 6297
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassText()Z

    move-result v0

    if-eqz v0, :cond_270

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-eq v0, v12, :cond_26e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-eq v0, v10, :cond_26e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_26e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v2, 0x90

    if-ne v0, v2, :cond_270

    .line 6302
    :cond_26e
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    .line 6306
    :cond_270
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    goto/16 :goto_130

    .line 6307
    :cond_280
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    array-length v0, v0

    if-ne v0, v6, :cond_2bf

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    aget-short v0, v0, v3

    if-ne v0, v11, :cond_2bf

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassText()Z

    move-result v0

    if-eqz v0, :cond_2bf

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-eq v0, v12, :cond_2ad

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-eq v0, v10, :cond_2ad

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_2ad

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v2, 0x90

    if-ne v0, v2, :cond_2bf

    .line 6314
    :cond_2ad
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    .line 6315
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    goto/16 :goto_130

    .line 6317
    :cond_2bf
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    goto/16 :goto_130

    .line 6331
    :cond_2c3
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    goto/16 :goto_170

    :cond_2c7
    move v0, v5

    goto/16 :goto_213

    :cond_2ca
    move-object v2, v0

    goto/16 :goto_1e3

    :cond_2cd
    move v2, v3

    goto/16 :goto_cd
.end method

.method private getSettingValues()V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6091
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 6092
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6095
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_13d

    move v0, v1

    :goto_16
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setVibrateOn(Z)V

    .line 6097
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_140

    move v0, v1

    :goto_26
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSoundOn(Z)V

    .line 6100
    const-string v0, "Auto_capitalization"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoCapsOn(Z)V

    .line 6102
    const-string v0, "Auto_period"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoPeriodOn:Z

    .line 6105
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "noMicrophoneKey"

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditinfo:Landroid/view/inputmethod/EditorInfo;

    invoke-static {v0, v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-nez v0, :cond_53

    const/4 v0, 0x0

    const-string v3, "nm"

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditinfo:Landroid/view/inputmethod/EditorInfo;

    invoke-static {v0, v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_143

    :cond_53
    move v0, v1

    .line 6109
    :goto_54
    if-eqz v0, :cond_146

    .line 6110
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    .line 6118
    :goto_58
    const-string v0, "xt9_enabled"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    .line 6121
    const-string v0, "word_completion"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoCompletionOn(Z)V

    .line 6122
    const-string v0, "next_word_prediction"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPredictionOn(Z)V

    .line 6123
    const-string v0, "spell_correction"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpellCorrectionOn(Z)V

    .line 6124
    const-string v0, "auto_append"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoAppendOn(Z)V

    .line 6125
    const-string v0, "auto_subtitution"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoSubstitutionOn(Z)V

    .line 6126
    const-string v0, "regional_correction"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setRegionalCorrectionOn(Z)V

    .line 6127
    const-string v0, "recapture"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setRecaptureOn(Z)V

    .line 6128
    const-string v0, "trace"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setTraceOn(Z)V

    .line 6130
    const-string v0, "inputmethod_type"

    const-string v3, "-1"

    invoke-interface {v4, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 6131
    const/4 v0, -0x1

    if-ne v3, v0, :cond_154

    .line 6132
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const-string v5, "qwertykeyboard"

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->parseImTypeValue(Ljava/lang/String;)I

    move-result v5

    .line 6133
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodListSize()I

    move-result v6

    :goto_c5
    if-ge v2, v6, :cond_154

    .line 6134
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_150

    move v0, v2

    .line 6141
    :goto_da
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentInputMethodType:I

    .line 6143
    const-string v0, "word_completion_point"

    const-string v2, "2"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAxT9WordCompletionCount:S

    .line 6145
    const-string v0, "keypad_sweeping"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSweepingOn:Z

    .line 6146
    const-string v0, "bubble_preview"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mBubblePreviewOn:Z

    .line 6149
    const-string v0, "recognition_time"

    const-string v1, "500"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrRecognitionTime:I

    .line 6151
    const-string v0, "pen_thickness"

    const-string v1, "4"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenThickness:I

    .line 6153
    const-string v0, "pen_color"

    const-string v1, "blue"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6154
    const/16 v0, 0xff

    const/16 v1, 0x2d

    const/16 v2, 0x5a

    const/16 v3, 0x8c

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenColor:I

    .line 6201
    return-void

    :cond_13d
    move v0, v2

    .line 6095
    goto/16 :goto_16

    :cond_140
    move v0, v2

    .line 6097
    goto/16 :goto_26

    :cond_143
    move v0, v2

    .line 6105
    goto/16 :goto_54

    .line 6112
    :cond_146
    const-string v0, "voice_input_enabled"

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    goto/16 :goto_58

    .line 6133
    :cond_150
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c5

    :cond_154
    move v0, v3

    goto :goto_da
.end method

.method private getUmlautLanguage()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 1830
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1832
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mUmlautLanguageDbId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1833
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v1, v2

    :goto_11
    if-ge v1, v4, :cond_75

    .line 1834
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v0

    .line 1835
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .line 1837
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "_uml"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1838
    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 1839
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mUmlautLanguageDbId:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1833
    :cond_71
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 1842
    :cond_75
    return-void
.end method

.method private handleClose()V
    .registers 3

    .prologue
    .line 5387
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v0, :cond_10

    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_10

    .line 5388
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 5391
    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 5392
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->requestHideSelf(I)V

    .line 5393
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_21

    .line 5394
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->closing()V

    .line 5397
    :cond_21
    return-void
.end method

.method private handleInputEmailAddress(I)V
    .registers 4
    .parameter

    .prologue
    .line 4468
    const/16 v0, -0x6b

    if-ne p1, v0, :cond_31

    .line 4469
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4474
    :goto_f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4475
    if-eqz v1, :cond_1b

    .line 4476
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4477
    invoke-direct {p0, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 4479
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4481
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v0, v1, :cond_3d

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4482
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 4486
    :cond_30
    :goto_30
    return-void

    .line 4471
    :cond_31
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    .line 4483
    :cond_3d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v0, :cond_30

    .line 4484
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_30
.end method

.method private handleModeChange([IZ)V
    .registers 8
    .parameter "enableInputMode"
    .parameter "isRight"

    .prologue
    .line 3844
    if-eqz p1, :cond_5

    array-length v3, p1

    if-gtz v3, :cond_6

    .line 3870
    :cond_5
    :goto_5
    return-void

    .line 3848
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputModeCode()I

    move-result v2

    .line 3849
    .local v2, modeCode:I
    const/4 v0, -0x1

    .line 3850
    .local v0, currentIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    array-length v3, p1

    if-ge v1, v3, :cond_14

    .line 3851
    aget v3, p1, v1

    if-ne v2, v3, :cond_23

    .line 3852
    move v0, v1

    .line 3857
    :cond_14
    if-eqz p2, :cond_2d

    .line 3858
    array-length v3, p1

    add-int/lit8 v4, v0, 0x1

    if-le v3, v4, :cond_26

    .line 3859
    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->changeToCode(I)V

    goto :goto_5

    .line 3850
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3861
    :cond_26
    const/4 v3, 0x0

    aget v3, p1, v3

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->changeToCode(I)V

    goto :goto_5

    .line 3864
    :cond_2d
    if-nez v0, :cond_38

    .line 3865
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->changeToCode(I)V

    goto :goto_5

    .line 3866
    :cond_38
    add-int/lit8 v3, v0, -0x1

    if-ltz v3, :cond_5

    add-int/lit8 v3, v0, -0x1

    array-length v4, p1

    if-ge v3, v4, :cond_5

    .line 3867
    add-int/lit8 v3, v0, -0x1

    aget v3, p1, v3

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->changeToCode(I)V

    goto :goto_5
.end method

.method private handleMoveSymbolPage(I)V
    .registers 4
    .parameter "Arrow"

    .prologue
    .line 4125
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 4137
    :goto_9
    return-void

    .line 4128
    :cond_a
    const/16 v0, -0x68

    if-ne p1, v0, :cond_1d

    .line 4130
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->decreaseSymbolsPageNumber()V

    .line 4131
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_9

    .line 4134
    :cond_1d
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->increaseSymbolsPageNumber()V

    .line 4135
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_9
.end method

.method private handleShiftkey()V
    .registers 9

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 4552
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 4553
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-eqz v4, :cond_a5

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-ne v4, v3, :cond_a5

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 4560
    :goto_21
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 4562
    :cond_26
    const/4 v1, 0x3

    .line 4564
    .local v1, bPostShiftMode:B
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v4, :cond_aa

    .line 4565
    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 4566
    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 4567
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 4568
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v4

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 4569
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 4570
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 4572
    :cond_4f
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4, v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 4573
    const/4 v1, 0x0

    .line 4609
    :goto_55
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 4611
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 4612
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    .line 4613
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectListPostShift(B)B

    .line 4614
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4615
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4616
    .local v0, InputWord:Ljava/lang/CharSequence;
    if-eqz v0, :cond_95

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_95

    .line 4617
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4618
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 4619
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_95

    .line 4620
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v4, v5}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4623
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_95
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v6

    invoke-virtual {p0, v4, v5, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 4626
    .end local v0           #InputWord:Ljava/lang/CharSequence;
    :cond_a4
    return-void

    .line 4558
    .end local v1           #bPostShiftMode:B
    :cond_a5
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    goto/16 :goto_21

    .line 4574
    .restart local v1       #bPostShiftMode:B
    :cond_aa
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v4

    if-eqz v4, :cond_d5

    .line 4584
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 4585
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 4586
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 4587
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v4

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 4588
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->CAPSLOCK:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 4589
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 4590
    const/4 v1, 0x2

    goto :goto_55

    .line 4593
    :cond_d5
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 4594
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 4597
    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 4598
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 4599
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v4

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 4600
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v4

    if-eqz v4, :cond_fe

    .line 4601
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 4603
    :cond_fe
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v4

    if-nez v4, :cond_10c

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-eqz v4, :cond_10d

    :cond_10c
    move v3, v5

    .line 4605
    .local v3, shiftMode:B
    :cond_10d
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 4606
    const/4 v1, 0x1

    goto/16 :goto_55
.end method

.method private handleT9OnOff()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3939
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3966
    :goto_a
    return-void

    .line 3943
    :cond_b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v1, :cond_33

    .line 3945
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3946
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3947
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 3949
    :cond_23
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setXt9SettingEnabled(Z)V

    .line 3951
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3965
    :cond_2b
    :goto_2b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    goto :goto_a

    .line 3952
    :cond_33
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_2b

    .line 3954
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3955
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setXt9SettingEnabled(Z)V

    .line 3956
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 3957
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_54

    .line 3958
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3960
    :cond_54
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 3963
    :cond_57
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_2b
.end method

.method private handleVoiceResults()V
    .registers 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 9116
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAfterVoiceInput:Z

    .line 9117
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mImmediatelyAfterVoiceInput:Z

    .line 9119
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 9120
    .local v4, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isFullscreenMode()Z

    move-result v7

    if-nez v7, :cond_1a

    .line 9122
    if-eqz v4, :cond_1a

    .line 9123
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 9124
    .local v6, req:Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-interface {v4, v6, v9}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    .line 9128
    .end local v6           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->vibrate()V

    .line 9129
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->switchToKeyboardView()V

    .line 9131
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9132
    .local v5, nBest:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isShifted()Z

    move-result v2

    .line 9133
    .local v2, capitalizeFirstWord:Z
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9134
    .local v1, c:Ljava/lang/String;
    if-eqz v2, :cond_62

    .line 9135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9137
    :cond_62
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 9140
    .end local v1           #c:Ljava/lang/String;
    :cond_66
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_6d

    .line 9176
    :goto_6c
    return-void

    .line 9144
    :cond_6d
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9146
    .local v0, bestResult:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/voice/VoiceInput;->logVoiceInputDelivered(I)V

    .line 9148
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHints:Lcom/sec/android/inputmethod/axt9/Hints;

    invoke-virtual {v7, v0}, Lcom/sec/android/inputmethod/axt9/Hints;->registerVoiceResult(Ljava/lang/String;)V

    .line 9150
    if-eqz v4, :cond_8a

    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 9152
    :cond_8a
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 9153
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v7

    if-nez v7, :cond_9d

    .line 9154
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v7

    if-eqz v7, :cond_c1

    .line 9155
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 9160
    :cond_9d
    :goto_9d
    if-eqz v4, :cond_a8

    .line 9161
    invoke-static {v4, v0}, Lcom/android/inputmethod/voice/EditingUtil;->appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 9162
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 9163
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 9167
    :cond_a8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_b5

    .line 9168
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mImmediatelyAfterVoiceSuggestions:Z

    .line 9169
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mShowingVoiceSuggestions:Z

    .line 9171
    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 9173
    :cond_b5
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    .line 9174
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mWordToSuggestions:Ljava/util/Map;

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    iget-object v8, v8, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;->alternatives:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_6c

    .line 9156
    :cond_c1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 9157
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9d
.end method

.method public static inPrivateImeOptions(Ljava/lang/String;Ljava/lang/String;Landroid/view/inputmethod/EditorInfo;)Z
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 6077
    if-nez p2, :cond_4

    .line 6078
    const/4 v0, 0x0

    .line 6079
    :goto_3
    return v0

    :cond_4
    if-eqz p0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1d
    iget-object v0, p2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->containsInCsv(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_3
.end method

.method private increaseSymbolsPageNumber()V
    .registers 7

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 3998
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v4, :cond_3a

    .line 3999
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-nez v4, :cond_26

    .line 4002
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v3, :cond_1d

    :goto_18
    if-ne v2, v0, :cond_1f

    .line 4003
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    .line 4045
    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v0, v1

    .line 4002
    goto :goto_18

    .line 4005
    :cond_1f
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4008
    :cond_26
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v1, :cond_31

    :goto_2c
    if-ne v0, v2, :cond_33

    .line 4009
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    :cond_31
    move v2, v3

    .line 4008
    goto :goto_2c

    .line 4011
    :cond_33
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4015
    :cond_3a
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-ne v4, v3, :cond_57

    .line 4016
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v0, :cond_4e

    move v0, v2

    :goto_49
    if-ne v1, v0, :cond_50

    .line 4017
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    :cond_4e
    move v0, v3

    .line 4016
    goto :goto_49

    .line 4019
    :cond_50
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4021
    :cond_57
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-nez v4, :cond_89

    .line 4022
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v4

    if-ne v4, v2, :cond_75

    .line 4023
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v3, :cond_6e

    .line 4024
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4026
    :cond_6e
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4029
    :cond_75
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v3, :cond_80

    :goto_7b
    if-ne v2, v0, :cond_82

    .line 4030
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    :cond_80
    move v0, v1

    .line 4029
    goto :goto_7b

    .line 4032
    :cond_82
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4035
    :cond_89
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v5, :cond_1c

    .line 4036
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v3, :cond_98

    .line 4037
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1c

    .line 4039
    :cond_98
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto/16 :goto_1c
.end method

.method private initSounds()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 5594
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_e

    .line 5595
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    .line 5598
    :cond_e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    if-nez v0, :cond_75

    .line 5599
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    .line 5600
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f060003

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5601
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f060002

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5602
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5603
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f060001

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5606
    :cond_75
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_86

    .line 5607
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    .line 5608
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateRingerMode()V

    .line 5610
    :cond_86
    return-void
.end method

.method private isBTPeripheralConnected()Z
    .registers 12

    .prologue
    const/16 v10, 0xc

    const/4 v7, 0x0

    .line 9709
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 9710
    .local v3, btAdapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v3, :cond_15

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 9711
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v8

    if-eq v8, v10, :cond_16

    .line 9767
    :cond_15
    :goto_15
    return v7

    .line 9739
    :cond_16
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 9740
    .local v2, bdSet:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_15

    .line 9741
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v6

    .line 9743
    .local v6, size:I
    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 9744
    .local v5, obj:[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_25
    if-ge v4, v6, :cond_15

    .line 9745
    aget-object v1, v5, v4

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 9746
    .local v1, bd:Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_43

    .line 9752
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 9753
    .local v0, bc:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_43

    .line 9758
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v8

    if-ne v8, v10, :cond_43

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v8

    const/16 v9, 0x500

    if-ne v8, v9, :cond_43

    .line 9760
    const/4 v7, 0x1

    goto :goto_15

    .line 9744
    .end local v0           #bc:Landroid/bluetooth/BluetoothClass;
    :cond_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_25
.end method

.method private isFunctionKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 8505
    const/4 v0, 0x0

    .line 8507
    .local v0, isFunction:Z
    packed-switch p1, :pswitch_data_8

    .line 8527
    :pswitch_4
    const/4 v0, 0x0

    .line 8530
    :goto_5
    return v0

    .line 8524
    :pswitch_6
    const/4 v0, 0x1

    .line 8525
    goto :goto_5

    .line 8507
    :pswitch_data_8
    .packed-switch -0x7d
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private isNeedMainProcessHWKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 9548
    const/16 v0, 0x61

    if-lt p1, v0, :cond_8

    const/16 v0, 0x7a

    if-le p1, v0, :cond_17

    :cond_8
    const/4 v0, -0x5

    if-eq p1, v0, :cond_17

    const/16 v0, -0xff

    if-eq p1, v0, :cond_17

    const/16 v0, 0xa

    if-eq p1, v0, :cond_17

    const/16 v0, 0x20

    if-ne p1, v0, :cond_19

    .line 9553
    :cond_17
    const/4 v0, 0x1

    .line 9555
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private isNumericKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 2138
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method private isSentenceSeparator(Ljava/lang/String;)Z
    .registers 4
    .parameter

    .prologue
    .line 8355
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 8356
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isShouldSetShifted(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4966
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    move v0, v1

    .line 4998
    :cond_f
    :goto_f
    :pswitch_f
    return v0

    .line 4971
    :cond_10
    if-eqz p1, :cond_14

    if-nez p2, :cond_16

    :cond_14
    move v0, v1

    .line 4972
    goto :goto_f

    .line 4977
    :cond_16
    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9IME$33;->$SwitchMap$com$sec$android$inputmethod$axt9$AxT9IME$Capitalize:[I

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_80

    :cond_23
    move v0, v1

    .line 4998
    goto :goto_f

    .line 4979
    :pswitch_25
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_f

    .line 4984
    :pswitch_3e
    const-string v2, ". "

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "? "

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "! "

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, ".\n"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "?\n"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "!\n"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_f

    .line 4977
    nop

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_25
        :pswitch_3e
        :pswitch_f
    .end packed-switch
.end method

.method private isShouldSetShiftedForEnter(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 5008
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_e
    move v0, v1

    .line 5035
    :cond_f
    :goto_f
    :pswitch_f
    return v0

    .line 5013
    :cond_10
    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9IME$33;->$SwitchMap$com$sec$android$inputmethod$axt9$AxT9IME$Capitalize:[I

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_40

    :cond_1d
    move v0, v1

    .line 5035
    goto :goto_f

    .line 5021
    :pswitch_1f
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "?"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "!"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_f

    .line 5013
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1f
        :pswitch_f
    .end packed-switch
.end method

.method private isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z
    .registers 3
    .parameter "run"

    .prologue
    .line 2129
    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->isRunning()Z

    move-result v0

    return v0
.end method

.method private isUpperCase(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 2156
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    return v0
.end method

.method private isUsingHWKeypad()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9348
    const/4 v0, 0x0

    .line 9353
    .local v0, ret:Z
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyboardConnected:Z

    if-nez v1, :cond_15

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isBTPeripheralConnected()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 9354
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mBTKeyboardConnected:Z

    .line 9355
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->settingHWKeyboardConnection(Z)V

    .line 9362
    :cond_12
    :goto_12
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyboardConnected:Z

    .line 9364
    return v0

    .line 9356
    :cond_15
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyboardConnected:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mBTKeyboardConnected:Z

    if-eqz v1, :cond_12

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isBTPeripheralConnected()Z

    move-result v1

    if-nez v1, :cond_12

    .line 9357
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mBTKeyboardConnected:Z

    .line 9358
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDocKeyboardConnected:Z

    if-nez v1, :cond_12

    .line 9359
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->settingHWKeyboardConnection(Z)V

    goto :goto_12
.end method

.method private koreanHWkeyProcess(ILandroid/view/KeyEvent;)V
    .registers 5
    .parameter "convertedCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 1301
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1302
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    .line 1305
    :cond_a
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->checkDoubleSpaceCanceled(I)V

    .line 1306
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->checkMultitapTimeout(I)V

    .line 1307
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearBuffersAtEmptyEditText()V

    .line 1308
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNeedMainProcessHWKey(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1309
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 1313
    :goto_1c
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWShiftPressed:Z

    if-eqz v0, :cond_23

    .line 1314
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 1316
    :cond_23
    return-void

    .line 1311
    :cond_24
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleCharacter(I[I)V

    goto :goto_1c
.end method

.method private latinHWkeyProcess(ILandroid/view/KeyEvent;)V
    .registers 14
    .parameter "convertedCode"
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, -0x5

    const/4 v7, 0x1

    const/16 v6, -0xff

    .line 1319
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isForcedCapsLockForGreek()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1320
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v3, :cond_30

    .line 1321
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 1322
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPressedShiftOnCapsLock:Z

    .line 1332
    :cond_1b
    :goto_1b
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsUmlautOn:Z

    if-nez v3, :cond_25

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_25
    if-eq p1, v8, :cond_3c

    .line 1333
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->umlautHWkeyProcess(I)V

    .line 1391
    :cond_2a
    :goto_2a
    if-eq p1, v8, :cond_2f

    .line 1392
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setHWCapslockState()V

    .line 1394
    :cond_2f
    :goto_2f
    return-void

    .line 1324
    :cond_30
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPressedShiftOnCapsLock:Z

    if-eqz v3, :cond_38

    .line 1325
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_1b

    .line 1327
    :cond_38
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    goto :goto_1b

    .line 1335
    :cond_3c
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->checkDoubleSpaceCanceled(I)V

    .line 1336
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->checkMultitapTimeout(I)V

    .line 1337
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearBuffersAtEmptyEditText()V

    .line 1339
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCountryCode()I

    move-result v0

    .line 1341
    .local v0, countryCode:I
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNeedMainProcessHWKey(I)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 1342
    if-eq p1, v8, :cond_7e

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mUmlautKey:I

    if-eq v3, v6, :cond_7e

    if-eq p1, v6, :cond_7e

    .line 1345
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v4, 0xc

    if-ne v3, v4, :cond_61

    .line 1346
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFrenchConvertedKeycode(I)I

    move-result p1

    .line 1349
    :cond_61
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyMgr:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

    iget-short v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mUmlautKey:I

    invoke-virtual {v3, v4, v0, v5, p1}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->getUmlautCode(IIII)I

    move-result v2

    .line 1350
    .local v2, umlautCode:I
    if-eq v2, p1, :cond_77

    if-eq v2, v6, :cond_77

    .line 1351
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1352
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v1, v7, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1353
    move p1, v2

    .line 1356
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_77
    invoke-virtual {p0, p1, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleCharacter(I[I)V

    .line 1358
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setUmlautSymbol(I)V

    goto :goto_2a

    .line 1360
    .end local v2           #umlautCode:I
    :cond_7e
    invoke-virtual {p0, p1, v9, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[IZ)V

    .line 1361
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setUmlautSymbol(I)V

    goto :goto_2a

    .line 1364
    :cond_85
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyMgr:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

    iget-short v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    invoke-virtual {v3, p1, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->isUmlautSymbol(III)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 1365
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setUmlautSymbol(I)V

    .line 1384
    :cond_92
    :goto_92
    invoke-virtual {p0, p1, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleCharacter(I[I)V

    .line 1386
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1387
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_2a

    .line 1366
    :cond_ab
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mUmlautKey:I

    if-eq v3, v6, :cond_bb

    const/16 v3, 0x20

    if-ne p1, v3, :cond_bb

    .line 1368
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setUmlautSymbol(I)V

    .line 1369
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setHWCapslockState()V

    goto/16 :goto_2f

    .line 1371
    :cond_bb
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyMgr:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

    invoke-virtual {v3, p1}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->isGreekKey(I)Z

    move-result v3

    if-eqz v3, :cond_92

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mUmlautKey:I

    if-eq v3, v6, :cond_92

    .line 1374
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyMgr:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

    iget-short v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mUmlautKey:I

    invoke-virtual {v3, v4, v0, v5, p1}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->getUmlautCode(IIII)I

    move-result v2

    .line 1375
    .restart local v2       #umlautCode:I
    if-eq v2, p1, :cond_dd

    if-eq v2, v6, :cond_dd

    .line 1376
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1377
    .restart local v1       #ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v1, v7, v10}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1378
    move p1, v2

    .line 1381
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_dd
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setUmlautSymbol(I)V

    goto :goto_92
.end method

.method private onKeyDownUpHandle(I)V
    .registers 5
    .parameter "keyCodes"

    .prologue
    .line 2890
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2891
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_18

    .line 2892
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2893
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2895
    :cond_18
    return-void
.end method

.method private onMultitapShiftModeProc()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 734
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v3, v4, :cond_12

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 735
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 757
    :cond_11
    :goto_11
    return-void

    .line 736
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v3

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v3, :cond_11

    .line 737
    const-string v1, ""

    .line 738
    .local v1, lastOneChar:Ljava/lang/String;
    const-string v2, ""

    .line 739
    .local v2, lastTwoChar:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 740
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_33

    .line 741
    const/4 v3, 0x1

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #lastOneChar:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 742
    .restart local v1       #lastOneChar:Ljava/lang/String;
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2           #lastTwoChar:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 744
    .restart local v2       #lastTwoChar:Ljava/lang/String;
    :cond_33
    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isShouldSetShifted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 747
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v3

    if-ne v3, v6, :cond_47

    .line 748
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    goto :goto_11

    .line 751
    :cond_47
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isShiftPressed()Z

    move-result v3

    if-nez v3, :cond_11

    .line 752
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_11
.end method

.method private onMultitapTimeOut()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2088
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2089
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_31

    .line 2090
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 2091
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastHangulKey:I

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    if-eqz v1, :cond_32

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 2092
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 2093
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastHangulKey:I

    .line 2100
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 2101
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 2121
    :cond_31
    :goto_31
    return-void

    .line 2095
    :cond_32
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v1, :cond_26

    .line 2096
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->invokeTimeOut()V

    goto :goto_26

    .line 2107
    :cond_3c
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2109
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v1, :cond_48

    .line 2110
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 2113
    :cond_48
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5d

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSentenceSeparator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 2117
    :cond_5d
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2118
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto :goto_31
.end method

.method private playKeySound(I)V
    .registers 9
    .parameter

    .prologue
    .line 5617
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_38

    .line 5619
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastSoundId:I

    if-eqz v0, :cond_f

    .line 5620
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 5622
    :cond_f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=1;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 5623
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastSoundId:I

    .line 5625
    :cond_38
    return-void
.end method

.method private reallyStartListening(Z)V
    .registers 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 8971
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHasUsedVoiceInput:Z

    if-nez v1, :cond_19

    .line 8974
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 8976
    const-string v2, "has_used_voice_input"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8977
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8978
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHasUsedVoiceInput:Z

    .line 8981
    :cond_19
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLocaleSupportedForVoiceInput:Z

    if-nez v1, :cond_33

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v1, :cond_33

    .line 8984
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 8986
    const-string v2, "has_used_voice_input_unsupported_locale"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8987
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8988
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 8995
    :cond_33
    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    packed-switch v1, :pswitch_data_ca

    :pswitch_38
    move-object v1, v0

    .line 9056
    :goto_39
    new-instance v2, Lcom/android/inputmethod/voice/FieldContext;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/inputmethod/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    .line 9061
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0, v2, p1}, Lcom/android/inputmethod/voice/VoiceInput;->startListening(Lcom/android/inputmethod/voice/FieldContext;Z)V

    .line 9062
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->switchToRecognitionStatusView()V

    .line 9063
    return-void

    .line 8997
    :pswitch_4f
    const-string v1, "de"

    .line 8998
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_39

    .line 9001
    :pswitch_56
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v0

    .line 9002
    const v1, 0x7f0a0049

    if-ne v0, v1, :cond_77

    .line 9003
    const-string v0, "en_GB"

    .line 9012
    :goto_6f
    new-array v1, v3, [Ljava/lang/String;

    aput-object v0, v1, v4

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 9013
    goto :goto_39

    .line 9004
    :cond_77
    const v1, 0x7f0a004a

    if-ne v0, v1, :cond_7f

    .line 9005
    const-string v0, "en_US"

    goto :goto_6f

    .line 9007
    :cond_7f
    const-string v0, "en"

    goto :goto_6f

    .line 9015
    :pswitch_82
    const-string v1, "es"

    .line 9016
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_39

    .line 9019
    :pswitch_89
    const-string v1, "fr"

    .line 9020
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_39

    .line 9023
    :pswitch_90
    const-string v1, "it"

    .line 9024
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_39

    .line 9027
    :pswitch_97
    const-string v1, "ko_KR"

    .line 9028
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_39

    .line 9031
    :pswitch_9e
    const-string v1, "nl"

    .line 9032
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_39

    .line 9035
    :pswitch_a5
    const-string v1, "pl"

    .line 9036
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_39

    .line 9039
    :pswitch_ac
    const-string v1, "pt"

    .line 9040
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_39

    .line 9043
    :pswitch_b3
    const-string v1, "tr"

    .line 9044
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    goto :goto_39

    .line 9047
    :pswitch_ba
    const-string v1, "cs"

    .line 9048
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    goto/16 :goto_39

    .line 9051
    :pswitch_c2
    const-string v1, "ru"

    .line 9052
    new-array v0, v3, [Ljava/lang/String;

    aput-object v1, v0, v4

    goto/16 :goto_39

    .line 8995
    :pswitch_data_ca
    .packed-switch 0x5
        :pswitch_ba
        :pswitch_38
        :pswitch_4f
        :pswitch_38
        :pswitch_56
        :pswitch_82
        :pswitch_38
        :pswitch_89
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_90
        :pswitch_38
        :pswitch_97
        :pswitch_9e
        :pswitch_38
        :pswitch_a5
        :pswitch_ac
        :pswitch_38
        :pswitch_38
        :pswitch_c2
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_b3
    .end packed-switch
.end method

.method private revertVoiceInput()V
    .registers 4

    .prologue
    .line 9179
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 9180
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_c

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 9182
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    .line 9183
    return-void
.end method

.method private sendInputLanguage()V
    .registers 4

    .prologue
    .line 6691
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6692
    const-string v1, "inputLanguageAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6693
    const-string v1, "AxT9IME.inputLanguage"

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6694
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendBroadcast(Landroid/content/Intent;)V

    .line 6695
    return-void
.end method

.method private sendKey(I[IZ)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v9, 0x42

    const/16 v8, 0x3e8

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2436
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 2437
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v7, :cond_96

    move v0, v2

    .line 2438
    :goto_14
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v1

    .line 2439
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastHangulKey:I

    .line 2441
    const/16 v4, 0xa

    if-ne p1, v4, :cond_d7

    .line 2442
    const-string v0, ""

    .line 2443
    const-string v1, ""

    .line 2444
    if-eqz v5, :cond_3f7

    .line 2445
    invoke-interface {v5, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2446
    invoke-interface {v5, v7, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2447
    if-nez v0, :cond_36

    const-string v0, ""

    .line 2448
    :cond_36
    if-nez v1, :cond_3a

    const-string v1, ""

    :cond_3a
    move-object v4, v0

    .line 2453
    :goto_3b
    if-eqz v4, :cond_3f4

    if-eqz v1, :cond_3f4

    .line 2454
    invoke-direct {p0, v4, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isShouldSetShiftedForEnter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2457
    :goto_43
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_57

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v1

    if-lez v1, :cond_70

    .line 2459
    :cond_57
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoAppendOn()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 2460
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->noteWordDone(I)V

    .line 2462
    :cond_68
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 2463
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2470
    :cond_70
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMultiLineEditorflag()Z

    move-result v1

    if-eqz v1, :cond_99

    .line 2471
    if-eqz v5, :cond_81

    .line 2473
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_81

    .line 2474
    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendDownUpKeyEvents(I)V

    .line 2478
    :cond_81
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2491
    :cond_86
    :goto_86
    if-eqz v0, :cond_b9

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v1

    if-nez v1, :cond_b9

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v1, :cond_b9

    .line 2492
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    .line 2713
    :cond_95
    :goto_95
    return-void

    :cond_96
    move v0, v3

    .line 2437
    goto/16 :goto_14

    .line 2479
    :cond_99
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSpecialActionflag()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 2480
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2481
    if-eqz v5, :cond_86

    if-eqz v1, :cond_86

    .line 2482
    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    invoke-interface {v5, v1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_86

    .line 2486
    :cond_af
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_86

    .line 2487
    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendDownUpKeyEvents(I)V

    goto :goto_86

    .line 2493
    :cond_b9
    if-nez v0, :cond_95

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    if-eqz v0, :cond_95

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v0, :cond_95

    const-string v0, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    const-string v0, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 2496
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_95

    .line 2498
    :cond_d7
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-eqz v4, :cond_391

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v4

    if-nez v4, :cond_f1

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v4

    if-nez v4, :cond_f1

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRussianAlphaKey(I)Z

    move-result v4

    if-eqz v4, :cond_391

    :cond_f1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v4

    if-eq v4, v2, :cond_391

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isInMultiTap()Z

    move-result v4

    if-nez v4, :cond_391

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isKeyLongPressed()Z

    move-result v4

    if-eqz v4, :cond_111

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-eqz v4, :cond_391

    .line 2503
    :cond_111
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/16 v6, 0x40

    if-gt v4, v6, :cond_95

    .line 2508
    if-eqz v1, :cond_18b

    .line 2509
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v4

    if-eqz v4, :cond_130

    .line 2510
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2511
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2512
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V

    .line 2557
    :cond_130
    :goto_130
    sget-boolean v4, Lcom/sec/android/inputmethod/axt9/AxT9Config;->USE_TRACE:Z

    if-eqz v4, :cond_223

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_nTracePointCount:I

    if-le v4, v7, :cond_223

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsTraceOn()Z

    move-result v4

    if-eqz v4, :cond_223

    .line 2558
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_bIsTracing:Z

    .line 2559
    new-array v4, v2, [Z

    .line 2561
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_tracePointInfo:[Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;

    iget v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_nTracePointCount:I

    invoke-virtual {v6, v7, v8, v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->IsAutoAcceptBeforeTrace([Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;I[Z)Z

    move-result v6

    if-eqz v6, :cond_16f

    .line 2562
    aget-boolean v4, v4, v3

    if-eqz v4, :cond_21c

    .line 2563
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 2565
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_162

    .line 2566
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitCurrentComposing()V

    .line 2568
    :cond_162
    if-eqz v5, :cond_169

    .line 2569
    const-string v4, " "

    invoke-direct {p0, v5, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2571
    :cond_169
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList(Z)V

    .line 2572
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 2577
    :cond_16f
    :goto_16f
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_tracePointInfo:[Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;

    iget v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_nTracePointCount:I

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->ProcessTrace([Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;IB)S

    move-result v4

    .line 2578
    if-eqz v4, :cond_17c

    .line 2582
    :cond_17c
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    move-result v4

    if-nez v4, :cond_25a

    .line 2583
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    goto/16 :goto_95

    .line 2515
    :cond_18b
    if-eqz v0, :cond_1b4

    .line 2516
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v4

    if-eqz v4, :cond_19b

    .line 2517
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2518
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V

    .line 2520
    :cond_19b
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    if-eq v4, p1, :cond_130

    .line 2521
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v4

    if-nez v4, :cond_1b0

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRussianAlphaKey(I)Z

    move-result v4

    if-nez v4, :cond_1b0

    .line 2522
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 2524
    :cond_1b0
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    goto/16 :goto_130

    .line 2528
    :cond_1b4
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2529
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;I)V

    .line 2531
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    if-eq v4, p1, :cond_1ea

    .line 2532
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    if-eqz v4, :cond_1d1

    .line 2533
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1d1

    .line 2534
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V

    .line 2538
    :cond_1d1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v4

    if-eqz v4, :cond_1e6

    .line 2539
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2540
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2541
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;I)V

    .line 2543
    :cond_1e6
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    goto/16 :goto_130

    .line 2544
    :cond_1ea
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    if-ne v4, p1, :cond_20a

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentMultitapSequence()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-ne v4, v2, :cond_20a

    .line 2545
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2546
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V

    .line 2547
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2548
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;I)V

    goto/16 :goto_130

    .line 2549
    :cond_20a
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isTapingBeforeTimeout()Z

    move-result v4

    if-nez v4, :cond_130

    .line 2550
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2551
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->invokeTimeOut()V

    goto/16 :goto_130

    .line 2575
    :cond_21c
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    goto/16 :goto_16f

    .line 2588
    :cond_223
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_bIsTracing:Z

    .line 2589
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    int-to-short v6, p1

    invoke-virtual {v4, v6, p3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->processKey(SZ)S

    move-result v4

    .line 2590
    if-eqz v4, :cond_252

    .line 2591
    iget-short v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v6, 0x1f

    if-eq v4, v6, :cond_240

    const/16 v4, 0x131

    if-ne p1, v4, :cond_240

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v4

    if-eqz v4, :cond_240

    .line 2594
    const/16 p1, 0x130

    .line 2600
    :cond_240
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v4

    if-eqz v4, :cond_320

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUpperCase(I)Z

    move-result v4

    if-eqz v4, :cond_320

    .line 2601
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    int-to-short v6, p1

    invoke-virtual {v4, v6, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->explictSymb(SB)S

    .line 2609
    :cond_252
    :goto_252
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    move-result v4

    if-eqz v4, :cond_95

    .line 2615
    :cond_25a
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_26e

    .line 2616
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2617
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2619
    :cond_26e
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isMultitapMode()Z

    move-result v4

    if-eqz v4, :cond_2c3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-nez v4, :cond_2c3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v4

    if-ne v4, v2, :cond_2c3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-nez v4, :cond_2c3

    .line 2623
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_2c3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2c3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v4

    if-eqz v4, :cond_2c3

    .line 2625
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    int-to-short v6, p1

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->processKey(S)S

    .line 2626
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    .line 2627
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2628
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2632
    :cond_2c3
    if-eqz v5, :cond_2fe

    .line 2633
    if-eqz v0, :cond_362

    if-nez v1, :cond_362

    .line 2634
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_338

    .line 2635
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v0

    if-eqz v0, :cond_334

    .line 2636
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 2639
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2641
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2646
    :goto_2e5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_2fe

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v0, :cond_2fe

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2fe

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2fe

    .line 2647
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 2687
    :cond_2fe
    :goto_2fe
    if-eqz v1, :cond_95

    .line 2688
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 2690
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v0, v1, :cond_37a

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    if-eqz v0, :cond_37a

    .line 2691
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto/16 :goto_95

    .line 2602
    :cond_320
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    if-eqz v4, :cond_32c

    .line 2603
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    int-to-short v6, p1

    invoke-virtual {v4, v6, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->explictSymb(SB)S

    goto/16 :goto_252

    .line 2605
    :cond_32c
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    int-to-short v6, p1

    invoke-virtual {v4, v6, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->explictSymb(SB)S

    goto/16 :goto_252

    .line 2643
    :cond_334
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->displayHangul(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_2e5

    .line 2650
    :cond_338
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v0

    if-eqz v0, :cond_358

    .line 2652
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2660
    :cond_346
    :goto_346
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_34f

    .line 2661
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2664
    :cond_34f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 2665
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V

    goto :goto_2fe

    .line 2655
    :cond_358
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_346

    .line 2656
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v5, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    goto :goto_346

    .line 2676
    :cond_362
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 2677
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v0, :cond_2fe

    .line 2678
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_374

    .line 2679
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->displayHangul(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_2fe

    .line 2681
    :cond_374
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v5, v0, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_2fe

    .line 2692
    :cond_37a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_95

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v0, :cond_95

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_95

    .line 2693
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_95

    .line 2696
    :cond_391
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->canUseT9(I)Z

    move-result v0

    if-eqz v0, :cond_3da

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_3da

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v0

    if-lez v0, :cond_3da

    if-eqz v1, :cond_3da

    .line 2697
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->explictSymb(S)S

    .line 2698
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    .line 2699
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2700
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2701
    if-eqz v5, :cond_3c9

    .line 2702
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v5, v0, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2704
    :cond_3c9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v1

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    goto/16 :goto_95

    .line 2706
    :cond_3da
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleCharacter(I[I)V

    .line 2709
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v0, v1, :cond_95

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_95

    .line 2710
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto/16 :goto_95

    :cond_3f4
    move v0, v3

    goto/16 :goto_43

    :cond_3f7
    move-object v4, v0

    goto/16 :goto_3b
.end method

.method private setAutoAppendOn(Z)V
    .registers 2
    .parameter "autoappend"

    .prologue
    .line 6892
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoAppendOn:Z

    .line 6893
    return-void
.end method

.method private setAutoCapsOn(Z)V
    .registers 2
    .parameter "autoCaps"

    .prologue
    .line 6843
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapsOn:Z

    .line 6844
    return-void
.end method

.method private setAutoCompletionOn(Z)V
    .registers 2
    .parameter "completion"

    .prologue
    .line 6864
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletionOn:Z

    .line 6865
    return-void
.end method

.method private setAutoLangOn(Z)V
    .registers 2
    .parameter "autoLang"

    .prologue
    .line 6850
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoLangOn:Z

    .line 6851
    return-void
.end method

.method private setAutoSpace(Z)V
    .registers 2
    .parameter "AutoSpace"

    .prologue
    .line 6944
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoSpace:Z

    .line 6945
    return-void
.end method

.method private setAutoSubstitutionOn(Z)V
    .registers 2
    .parameter "subtitution"

    .prologue
    .line 6899
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoSubstitutionOn:Z

    .line 6900
    return-void
.end method

.method private setCapsLockOn(Z)V
    .registers 2
    .parameter "CapsLock"

    .prologue
    .line 6951
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    .line 6952
    return-void
.end method

.method private setCustomExtractViewEnabled(Z)V
    .registers 2
    .parameter "enable"

    .prologue
    .line 7054
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCustomExtractViewEnabled:Z

    .line 7055
    return-void
.end method

.method private setDefaultInputmehtod()V
    .registers 3

    .prologue
    .line 8818
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getDefaultInputmethod()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 8835
    :goto_9
    return-void

    .line 8820
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto :goto_9

    .line 8823
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto :goto_9

    .line 8826
    :pswitch_18
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto :goto_9

    .line 8829
    :pswitch_1f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto :goto_9

    .line 8832
    :pswitch_26
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto :goto_9

    .line 8818
    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_a
        :pswitch_11
        :pswitch_18
        :pswitch_1f
        :pswitch_26
    .end packed-switch
.end method

.method private setDefaultInputmode()V
    .registers 3

    .prologue
    .line 8799
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getDefaultInputmode()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 8815
    :goto_9
    :pswitch_9
    return-void

    .line 8809
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_9

    .line 8812
    :pswitch_11
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_9

    .line 8799
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_11
    .end packed-switch
.end method

.method private setFlagIsSoftkeyShown(Z)V
    .registers 2
    .parameter "isShown"

    .prologue
    .line 7043
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSoftkeyShown:Z

    .line 7044
    return-void
.end method

.method private setFlagIsVisibleWindow(Z)V
    .registers 2
    .parameter "isVisibleWindow"

    .prologue
    .line 7000
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsVisibleWindow:Z

    .line 7001
    return-void
.end method

.method private setHWCapslockState()V
    .registers 2

    .prologue
    .line 9696
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 9697
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v0, :cond_e

    .line 9698
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 9705
    :cond_d
    :goto_d
    return-void

    .line 9699
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWShiftPressed:Z

    if-nez v0, :cond_1c

    .line 9700
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    goto :goto_d

    .line 9702
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_d
.end method

.method private setInputLangOptMenuEnabled(Z)V
    .registers 2
    .parameter "isEnabled"

    .prologue
    .line 6972
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLangOptMenuEnabled:Z

    .line 6973
    return-void
.end method

.method private setInputLanguage(I)V
    .registers 4
    .parameter "selectLanguage"

    .prologue
    .line 6422
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 6423
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputLanguage(II)S

    move-result v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    .line 6424
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_26

    .line 6425
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 6426
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->releaseSlidingDrawable()V

    .line 6428
    :cond_26
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    if-eqz v0, :cond_42

    .line 6429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    .line 6436
    :goto_2d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 6437
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 6439
    :cond_41
    return-void

    .line 6432
    :cond_42
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitInputLanguage(I)V

    goto :goto_2d
.end method

.method private setInputMethodOptMenuEnabled(Z)V
    .registers 2
    .parameter "isEnabled"

    .prologue
    .line 6965
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputMethodOptMenuEnabled:Z

    .line 6966
    return-void
.end method

.method private setInputType()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 8762
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    packed-switch v3, :pswitch_data_7e

    .line 8796
    :cond_a
    :goto_a
    :pswitch_a
    return-void

    .line 8764
    :pswitch_b
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_a

    .line 8767
    :pswitch_11
    const/4 v1, -0x1

    .line 8768
    .local v1, koreanIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v2

    .local v2, n:I
    :goto_19
    if-ge v0, v2, :cond_33

    .line 8769
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_30

    .line 8770
    move v1, v0

    .line 8768
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 8774
    :cond_33
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 8775
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8777
    :cond_48
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    if-ne v3, v1, :cond_a

    .line 8778
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    goto :goto_a

    .line 8785
    .end local v0           #i:I
    .end local v1           #koreanIndex:I
    .end local v2           #n:I
    :pswitch_5e
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v3, :cond_a

    .line 8786
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getMmsRecipientLastInputMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_a

    .line 8790
    :pswitch_72
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_a

    .line 8793
    :pswitch_78
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_a

    .line 8762
    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_b
        :pswitch_11
        :pswitch_a
        :pswitch_5e
        :pswitch_72
        :pswitch_78
    .end packed-switch
.end method

.method private setIsEditorAutoCompletion(Z)V
    .registers 2
    .parameter "completionEditor"

    .prologue
    .line 6871
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    .line 6872
    return-void
.end method

.method private setIsEditorMessage(Z)V
    .registers 2
    .parameter "messageEditor"

    .prologue
    .line 6878
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorMessage:Z

    .line 6879
    return-void
.end method

.method private setOnlyAbcMode(Z)V
    .registers 2
    .parameter "OnlyAbcMode"

    .prologue
    .line 6979
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOnlyAbcMode:Z

    .line 6980
    return-void
.end method

.method private setPasswordMode(Z)V
    .registers 2
    .parameter "PasswordMode"

    .prologue
    .line 6937
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    .line 6938
    return-void
.end method

.method private setPredictionOn(Z)V
    .registers 2
    .parameter "prediction"

    .prologue
    .line 6857
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPredictionOn:Z

    .line 6858
    return-void
.end method

.method private setRecaptureOn(Z)V
    .registers 2
    .parameter "recapture"

    .prologue
    .line 6913
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecaptureOn:Z

    .line 6914
    return-void
.end method

.method private setRegionalCorrectionOn(Z)V
    .registers 2
    .parameter "regionalCorrection"

    .prologue
    .line 6906
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRegionalCorrectionOn:Z

    .line 6907
    return-void
.end method

.method private setSearchEditorflag(Z)V
    .registers 2
    .parameter "search"

    .prologue
    .line 7029
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorTypeSearch:Z

    .line 7030
    return-void
.end method

.method private setSettingValues()V
    .registers 3

    .prologue
    .line 6350
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsPredictionOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setNextWordPrediction(Z)V

    .line 6351
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoAppendOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setAutoAppend(Z)V

    .line 6352
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoSubstitutionOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setAutoSubstitution(Z)V

    .line 6353
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsRecaptureOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setRecapture(Z)V

    .line 6354
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsTraceOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setTrace(Z)V

    .line 6355
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCompletionOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setWordCompletion(Z)V

    .line 6356
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCompletionOn()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 6357
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAxT9WordCompletionCount:S

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setWordCompletionPoint(S)V

    .line 6359
    :cond_43
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsSpellCorrectionOn()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 6360
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setCorrection(B)V

    .line 6365
    :goto_4f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRegionalCorrectionOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setRegionalCorrectionOn(Z)S

    .line 6368
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrRecognitionTime:I

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrRecognitionTime(I)V

    .line 6369
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenColor:I

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrPenColor(I)V

    .line 6370
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenThickness:I

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrPenThickness(I)V

    .line 6371
    return-void

    .line 6362
    :cond_6c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setCorrection(B)V

    goto :goto_4f
.end method

.method private setShiftMode(Z)V
    .registers 2
    .parameter "shiftMode"

    .prologue
    .line 6958
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    .line 6959
    return-void
.end method

.method private setSilentMode(Z)V
    .registers 2
    .parameter "SilentMode"

    .prologue
    .line 7015
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSilentMode:Z

    .line 7016
    return-void
.end method

.method private setSoundOn(Z)V
    .registers 2
    .parameter "sound"

    .prologue
    .line 6836
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundOn:Z

    .line 6837
    return-void
.end method

.method private setSpellCorrectionOn(Z)V
    .registers 2
    .parameter "correction"

    .prologue
    .line 6885
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCorrectionOn:Z

    .line 6886
    return-void
.end method

.method private setTraceOn(Z)V
    .registers 2
    .parameter "trace"

    .prologue
    .line 6920
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mTraceOn:Z

    .line 6921
    return-void
.end method

.method private setUmlautSymbol(I)V
    .registers 3
    .parameter "umlautSymCode"

    .prologue
    .line 1278
    const/16 v0, -0xff

    if-ne p1, v0, :cond_a

    .line 1279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsInputUmlautSymbol:Z

    .line 1284
    :goto_7
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mUmlautKey:I

    .line 1285
    return-void

    .line 1281
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsInputUmlautSymbol:Z

    goto :goto_7
.end method

.method private setVibrateOn(Z)V
    .registers 2
    .parameter "vibrate"

    .prologue
    .line 6829
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVibrateOn:Z

    .line 6830
    return-void
.end method

.method private settingHWKeyboardConnection(Z)V
    .registers 5
    .parameter "connect"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9369
    if-eqz p1, :cond_20

    .line 9374
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_1d

    .line 9375
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 9376
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 9378
    :cond_13
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 9379
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputMode(I)V

    .line 9385
    :cond_1d
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyboardConnected:Z

    .line 9400
    :goto_1f
    return-void

    .line 9391
    :cond_20
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_29

    .line 9392
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputMode(I)V

    .line 9398
    :cond_29
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyboardConnected:Z

    goto :goto_1f
.end method

.method private showCyrillicDialogKeys(I)V
    .registers 4
    .parameter "keyCode"

    .prologue
    .line 9603
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->convertCyrillicUmlaut(I)I

    move-result v0

    .line 9604
    .local v0, convertedCode:I
    const/4 v1, 0x0

    .line 9605
    .local v1, dialogKey:Landroid/inputmethodservice/Keyboard$Key;
    if-eq v0, p1, :cond_b

    .line 9606
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getKeyfromKeycode(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v1

    .line 9609
    :cond_b
    if-eqz v1, :cond_10

    .line 9610
    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showUmlautDialogKeys(Landroid/inputmethodservice/Keyboard$Key;)V

    .line 9612
    :cond_10
    return-void
.end method

.method private showInputMethodSelectOptionMenu()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 5745
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isPopupMenuShown()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5892
    :goto_9
    return-void

    .line 5751
    :cond_a
    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 5752
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->INPUTMETHOD:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    .line 5833
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodListSize()I

    move-result v4

    move v2, v1

    :goto_18
    if-ge v2, v4, :cond_b9

    .line 5835
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v5

    if-ne v0, v5, :cond_38

    .line 5842
    :goto_32
    if-ne v2, v3, :cond_3b

    .line 5844
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    goto :goto_9

    .line 5833
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 5848
    :cond_3b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodListSize()I

    move-result v3

    :goto_41
    if-ge v1, v3, :cond_5f

    .line 5849
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5850
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputMethodOptionList:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getImTypeString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 5848
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_41

    .line 5853
    :cond_5f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5854
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5855
    const v1, 0x7f0a0014

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5856
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputMethodOptionList:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5881
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5882
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    .line 5883
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onPopupDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5884
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5885
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5886
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5887
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5888
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5889
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5890
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_9

    :cond_b9
    move v2, v3

    goto/16 :goto_32
.end method

.method private showNordicDialogKeys(I)V
    .registers 6
    .parameter "keyCode"

    .prologue
    .line 9588
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyMgr:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

    invoke-virtual {v3, p1}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->getNordicSymbolPopupKey(I)I

    move-result v1

    .line 9589
    .local v1, popupKey:I
    if-eq v1, p1, :cond_16

    .line 9590
    new-instance v2, Ljava/lang/StringBuilder;

    int-to-char v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9591
    .local v2, sUmlautString:Ljava/lang/CharSequence;
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startHWkeyboardPopup(Ljava/lang/CharSequence;)V

    .line 9598
    .end local v2           #sUmlautString:Ljava/lang/CharSequence;
    :cond_15
    :goto_15
    return-void

    .line 9593
    :cond_16
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getKeyfromKeycode(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v0

    .line 9594
    .local v0, dialogKey:Landroid/inputmethodservice/Keyboard$Key;
    if-eqz v0, :cond_15

    .line 9595
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showUmlautDialogKeys(Landroid/inputmethodservice/Keyboard$Key;)V

    goto :goto_15
.end method

.method private showUmlautDialogKeys(Landroid/inputmethodservice/Keyboard$Key;)V
    .registers 6
    .parameter "dialogkey"

    .prologue
    .line 9578
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v1, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getCurrentUmlautString(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 9579
    .local v0, popupCharaters:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_10

    .line 9580
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startHWkeyboardPopup(Ljava/lang/CharSequence;)V

    .line 9584
    :goto_f
    return-void

    .line 9582
    :cond_10
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[IZ)V

    goto :goto_f
.end method

.method private startHWkeyboardPopup(Ljava/lang/CharSequence;)V
    .registers 4
    .parameter

    .prologue
    .line 9615
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 9616
    const-class v1, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 9617
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9618
    const-string v1, "umlautlist"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 9619
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startActivity(Landroid/content/Intent;)V

    .line 9620
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWPopupShown:Z

    .line 9621
    return-void
.end method

.method private startListening(Z)V
    .registers 2
    .parameter "swipe"

    .prologue
    .line 8967
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->reallyStartListening(Z)V

    .line 8968
    return-void
.end method

.method private startTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;I)V
    .registers 6
    .parameter "run"
    .parameter "msec"

    .prologue
    .line 2079
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->setRunning(Z)V

    .line 2080
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2081
    return-void
.end method

.method private stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V
    .registers 3
    .parameter "run"

    .prologue
    .line 2069
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->setRunning(Z)V

    .line 2070
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2071
    return-void
.end method

.method private switchToKeyboardView()V
    .registers 3

    .prologue
    .line 8938
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$29;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$29;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8946
    return-void
.end method

.method private switchToRecognitionStatusView()V
    .registers 4

    .prologue
    .line 8949
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConfigurationChanging:Z

    .line 8950
    .local v0, configChanged:Z
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9IME$30;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$30;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8964
    return-void
.end method

.method static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "s"

    .prologue
    const/4 v2, 0x1

    .line 9252
    if-eqz p0, :cond_9

    .line 9253
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 9260
    .end local p0
    :cond_9
    :goto_9
    return-object p0

    .line 9255
    .restart local p0
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_15

    .line 9256
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    .line 9258
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_9
.end method

.method private umlautHWkeyProcess(I)V
    .registers 5
    .parameter "convertedCode"

    .prologue
    .line 9560
    const/4 v1, -0x5

    if-eq p1, v1, :cond_13

    .line 9561
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getKeyfromKeycode(I)Landroid/inputmethodservice/Keyboard$Key;

    move-result-object v0

    .line 9563
    .local v0, dialogkey:Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNordic()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 9564
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showNordicDialogKeys(I)V

    .line 9571
    :cond_10
    :goto_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsUmlautOn:Z

    .line 9573
    .end local v0           #dialogkey:Landroid/inputmethodservice/Keyboard$Key;
    :cond_13
    return-void

    .line 9565
    .restart local v0       #dialogkey:Landroid/inputmethodservice/Keyboard$Key;
    :cond_14
    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0x61

    if-eq v1, v2, :cond_20

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0x22

    if-ne v1, v2, :cond_24

    .line 9567
    :cond_20
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showCyrillicDialogKeys(I)V

    goto :goto_10

    .line 9568
    :cond_24
    if-eqz v0, :cond_10

    .line 9569
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showUmlautDialogKeys(Landroid/inputmethodservice/Keyboard$Key;)V

    goto :goto_10
.end method

.method private updateRingerMode()V
    .registers 3

    .prologue
    .line 5641
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_e

    .line 5642
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    .line 5644
    :cond_e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1f

    .line 5645
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v0, 0x1

    :goto_1c
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSilentMode(Z)V

    .line 5647
    :cond_1f
    return-void

    .line 5645
    :cond_20
    const/4 v0, 0x0

    goto :goto_1c
.end method


# virtual methods
.method public XT9AddTracePoint(JJZ)Z
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "bStart"

    .prologue
    const/4 v0, 0x0

    .line 2735
    if-eqz p5, :cond_5

    .line 2736
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_nTracePointCount:I

    .line 2738
    :cond_5
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_nTracePointCount:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_c

    .line 2750
    :goto_b
    return v0

    .line 2741
    :cond_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_tracePointInfo:[Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_nTracePointCount:I

    aget-object v0, v0, v1

    if-nez v0, :cond_27

    .line 2742
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_tracePointInfo:[Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_nTracePointCount:I

    new-instance v2, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;-><init>(JJ)V

    aput-object v2, v0, v1

    .line 2749
    :goto_1f
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_nTracePointCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_nTracePointCount:I

    .line 2750
    const/4 v0, 0x1

    goto :goto_b

    .line 2745
    :cond_27
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_tracePointInfo:[Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_nTracePointCount:I

    aget-object v0, v0, v1

    iput-wide p1, v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;->nX:J

    .line 2746
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_tracePointInfo:[Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_nTracePointCount:I

    aget-object v0, v0, v1

    iput-wide p3, v0, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;->nY:J

    goto :goto_1f
.end method

.method public changeInputMode(I)V
    .registers 3
    .parameter "vInputMode"

    .prologue
    .line 6624
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_9

    .line 6625
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputMode(I)V

    .line 6627
    :cond_9
    return-void
.end method

.method public changeKDBNum(I)V
    .registers 4
    .parameter "inputMethodType"

    .prologue
    .line 6604
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_f

    .line 6605
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->changeKDBNum(II)V

    .line 6607
    :cond_f
    return-void
.end method

.method clearCurrentComposing()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 6045
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 6046
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_f

    .line 6047
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 6048
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6052
    :cond_f
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6053
    return-void
.end method

.method public clearLastKey()V
    .registers 2

    .prologue
    .line 7065
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    .line 7066
    return-void
.end method

.method public commitAndInitComposing()V
    .registers 4

    .prologue
    .line 8592
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_e

    .line 8602
    :cond_d
    :goto_d
    return-void

    .line 8594
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 8595
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_d

    .line 8599
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 8600
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8601
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    goto :goto_d
.end method

.method public commitCurrentComposing()V
    .registers 4

    .prologue
    .line 6036
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 6037
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_b

    .line 6038
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 6041
    :cond_b
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6042
    return-void
.end method

.method public commitInputLanguage(I)V
    .registers 5
    .parameter

    .prologue
    .line 6574
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6575
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6576
    const-string v1, "select_language"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6577
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 6579
    if-nez v0, :cond_19

    .line 6582
    :cond_19
    return-void
.end method

.method public commitInputMethodType(I)V
    .registers 5
    .parameter

    .prologue
    .line 6589
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6590
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6591
    const-string v1, "inputmethod_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6592
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 6593
    if-nez v0, :cond_19

    .line 6596
    :cond_19
    return-void
.end method

.method protected convertIntArrToStringArr([I)[Ljava/lang/String;
    .registers 5
    .parameter "intArr"

    .prologue
    .line 8302
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 8303
    .local v1, strings:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 8304
    .local v0, i:I
    const/4 v0, 0x0

    :goto_5
    array-length v2, p1

    if-ge v0, v2, :cond_13

    .line 8305
    aget v2, p1, v0

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLabelFromCode(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 8304
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 8307
    :cond_13
    return-object v1
.end method

.method protected convertIntArrtoCharSequence([I)Ljava/lang/CharSequence;
    .registers 5
    .parameter "intArr"

    .prologue
    .line 8290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8291
    .local v1, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 8292
    .local v0, i:I
    const/4 v0, 0x0

    :goto_7
    array-length v2, p1

    if-ge v0, v2, :cond_17

    .line 8293
    aget v2, p1, v0

    if-eqz v2, :cond_14

    .line 8294
    aget v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8292
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 8297
    :cond_17
    return-object v1
.end method

.method public doAction()V
    .registers 5

    .prologue
    .line 7762
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 7763
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 7764
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_15

    if-eqz v1, :cond_15

    .line 7765
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    if-eqz v2, :cond_16

    .line 7766
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 7771
    :cond_15
    :goto_15
    return-void

    .line 7767
    :cond_16
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eq v2, v3, :cond_15

    .line 7768
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_15
.end method

.method public doAction(I)V
    .registers 3
    .parameter "editorAction"

    .prologue
    .line 7778
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 7779
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 7780
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 7782
    :cond_9
    return-void
.end method

.method public getAction()I
    .registers 3

    .prologue
    .line 7750
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 7751
    const/4 v0, 0x0

    .line 7752
    if-eqz v1, :cond_d

    .line 7753
    iget v0, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v1, 0x400000ff

    and-int/2addr v0, v1

    .line 7755
    :cond_d
    return v0
.end method

.method public getCandidateSuggestionListNum()I
    .registers 3

    .prologue
    .line 8534
    const/4 v0, 0x0

    .line 8536
    .local v0, nResult:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v1, :cond_b

    .line 8537
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v0

    .line 8539
    :cond_b
    return v0
.end method

.method public getCurrentEditorAction()I
    .registers 2

    .prologue
    .line 6822
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAction:I

    return v0
.end method

.method protected getCurrentEnableInputMode()[I
    .registers 13

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 8158
    const/16 v5, 0x8

    new-array v1, v5, [I

    fill-array-data v1, :array_be

    .line 8166
    .local v1, inputModes:[I
    array-length v3, v1

    .line 8167
    .local v3, validCount:I
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_27

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v5

    const/4 v6, 0x5

    if-eq v5, v6, :cond_27

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v5

    if-ne v5, v8, :cond_4d

    .line 8170
    :cond_27
    aput v7, v1, v7

    .line 8171
    aput v7, v1, v8

    .line 8172
    aput v7, v1, v9

    .line 8173
    aput v7, v1, v10

    .line 8174
    aput v7, v1, v11

    .line 8175
    const/4 v5, 0x5

    aput v7, v1, v5

    .line 8176
    const/4 v5, 0x7

    aput v7, v1, v5

    .line 8177
    add-int/lit8 v3, v3, -0x7

    .line 8276
    :cond_39
    :goto_39
    new-array v4, v3, [I

    .line 8277
    .local v4, validInputModes:[I
    const/4 v2, 0x0

    .line 8278
    .local v2, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3d
    array-length v5, v1

    if-ge v0, v5, :cond_bc

    .line 8279
    aget v5, v1, v0

    if-eqz v5, :cond_4a

    .line 8280
    aget v5, v1, v0

    aput v5, v4, v2

    .line 8281
    add-int/lit8 v2, v2, 0x1

    .line 8278
    :cond_4a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 8178
    .end local v0           #i:I
    .end local v2           #j:I
    .end local v4           #validInputModes:[I
    :cond_4d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 8179
    aput v7, v1, v7

    .line 8180
    aput v7, v1, v8

    .line 8181
    aput v7, v1, v9

    .line 8182
    aput v7, v1, v10

    .line 8183
    aput v7, v1, v11

    .line 8184
    const/4 v5, 0x5

    aput v7, v1, v5

    .line 8185
    add-int/lit8 v3, v3, -0x6

    goto :goto_39

    .line 8186
    :cond_63
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v5

    if-eqz v5, :cond_7c

    .line 8187
    aput v7, v1, v7

    .line 8188
    aput v7, v1, v8

    .line 8189
    aput v7, v1, v9

    .line 8190
    aput v7, v1, v10

    .line 8191
    aput v7, v1, v11

    .line 8192
    const/4 v5, 0x5

    aput v7, v1, v5

    .line 8193
    const/4 v5, 0x7

    aput v7, v1, v5

    .line 8194
    add-int/lit8 v3, v3, -0x7

    goto :goto_39

    .line 8195
    :cond_7c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDateTime()Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDate()Z

    move-result v5

    if-nez v5, :cond_8e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassTime()Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 8196
    :cond_8e
    aput v7, v1, v7

    .line 8197
    aput v7, v1, v8

    .line 8198
    aput v7, v1, v9

    .line 8199
    aput v7, v1, v10

    .line 8200
    aput v7, v1, v11

    .line 8201
    const/4 v5, 0x5

    aput v7, v1, v5

    .line 8202
    const/4 v5, 0x7

    aput v7, v1, v5

    .line 8203
    add-int/lit8 v3, v3, -0x7

    goto :goto_39

    .line 8205
    :cond_a1
    aput v7, v1, v7

    .line 8206
    aput v7, v1, v8

    .line 8207
    aput v7, v1, v9

    .line 8208
    aput v7, v1, v10

    .line 8209
    aput v7, v1, v11

    .line 8210
    add-int/lit8 v3, v3, -0x5

    .line 8226
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v5

    if-ne v5, v9, :cond_39

    .line 8227
    const/4 v5, 0x6

    aput v7, v1, v5

    .line 8228
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_39

    .line 8285
    .restart local v0       #i:I
    .restart local v2       #j:I
    .restart local v4       #validInputModes:[I
    :cond_bc
    return-object v4

    .line 8158
    nop

    :array_be
    .array-data 0x4
        0x79t 0xfft 0xfft 0xfft
        0x7bt 0xfft 0xfft 0xfft
        0x7at 0xfft 0xfft 0xfft
        0x78t 0xfft 0xfft 0xfft
        0x77t 0xfft 0xfft 0xfft
        0x84t 0xfft 0xfft 0xfft
        0x93t 0xfft 0xfft 0xfft
        0x92t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public getCurrentInputLanguageCode()Ljava/lang/String;
    .registers 5

    .prologue
    .line 6491
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 6492
    const-string v0, "en"

    .line 6500
    :goto_8
    return-object v0

    .line 6494
    :cond_9
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v2

    move v1, v0

    :goto_11
    if-ge v1, v2, :cond_3c

    .line 6495
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v0, v3, :cond_38

    .line 6496
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 6494
    :cond_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 6500
    :cond_3c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public getCurrentInputLanguageID()S
    .registers 2

    .prologue
    .line 8617
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    return v0
.end method

.method public getCurrentInputLanguageString()Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x9

    .line 6446
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v3, v5, :cond_31

    .line 6447
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    if-ne v3, v5, :cond_31

    .line 6448
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v1

    .line 6449
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getStirngWithID(I)Ljava/lang/String;

    move-result-object v3

    .line 6459
    .end local v1           #id:I
    :goto_30
    return-object v3

    .line 6452
    :cond_31
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v2

    .local v2, n:I
    :goto_38
    if-ge v0, v2, :cond_66

    .line 6453
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    iget-short v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v3, v4, :cond_63

    .line 6454
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v1

    .line 6455
    .restart local v1       #id:I
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getStirngWithID(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    .line 6452
    .end local v1           #id:I
    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 6459
    :cond_66
    const/4 v3, 0x0

    goto :goto_30
.end method

.method protected getCurrentInputModeCode()I
    .registers 4

    .prologue
    .line 3883
    const/4 v1, 0x0

    .line 3884
    .local v1, modeCode:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    .line 3885
    .local v0, currentInputMode:I
    packed-switch v0, :pswitch_data_16

    .line 3909
    const/4 v1, 0x0

    .line 3914
    :goto_b
    return v1

    .line 3897
    :pswitch_c
    const/16 v1, -0x7c

    .line 3898
    goto :goto_b

    .line 3900
    :pswitch_f
    const/16 v1, -0x6d

    .line 3901
    goto :goto_b

    .line 3903
    :pswitch_12
    const/16 v1, -0x6e

    .line 3904
    goto :goto_b

    .line 3885
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method public getCurrentKeyboardHeight()I
    .registers 2

    .prologue
    .line 8859
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getHeight()I

    move-result v0

    goto :goto_5
.end method

.method public getCurrentMultitapSequence()Ljava/lang/StringBuilder;
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 5544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5545
    .local v2, MultitapSequence:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v5

    if-eq v5, v6, :cond_f

    .line 5559
    :cond_e
    return-object v2

    .line 5548
    :cond_f
    const/16 v5, 0x40

    new-array v1, v5, [S

    .line 5549
    .local v1, MTSBuff:[S
    new-array v3, v6, [S

    .line 5550
    .local v3, TotalS:[S
    new-array v0, v6, [B

    .line 5552
    .local v0, CurrentS:[B
    array-length v5, v1

    int-to-short v5, v5

    invoke-static {v1, v5, v3, v0}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    .line 5555
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1d
    const/4 v5, 0x0

    aget-short v5, v3, v5

    if-ge v4, v5, :cond_e

    .line 5556
    aget-short v5, v1, v4

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5555
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d
.end method

.method public getCurrentNumberSymbolsPageNumber()I
    .registers 2

    .prologue
    .line 4109
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    return v0
.end method

.method public getCurrentPrivateImeOptionPrevNext()I
    .registers 4

    .prologue
    .line 9264
    const/4 v0, 0x0

    .line 9265
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 9266
    if-eqz v1, :cond_14

    .line 9267
    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 9268
    if-eqz v1, :cond_14

    .line 9269
    const-string v2, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 9270
    const/4 v0, 0x7

    .line 9279
    :cond_14
    :goto_14
    return v0

    .line 9271
    :cond_15
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 9272
    const/16 v0, 0x8

    goto :goto_14

    .line 9273
    :cond_20
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 9274
    const/16 v0, 0x9

    goto :goto_14
.end method

.method public getEditorClass()I
    .registers 4

    .prologue
    .line 8685
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 8686
    .local v1, info:Landroid/view/inputmethod/EditorInfo;
    const/4 v0, 0x0

    .line 8687
    .local v0, editorClass:I
    if-eqz v1, :cond_b

    .line 8688
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v2, 0xf

    .line 8690
    :cond_b
    return v0
.end method

.method public getEditorFlag()I
    .registers 3

    .prologue
    .line 8694
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 8695
    const/4 v0, 0x0

    .line 8696
    if-eqz v1, :cond_d

    .line 8697
    iget v0, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v1, 0xfff000

    and-int/2addr v0, v1

    .line 8699
    :cond_d
    return v0
.end method

.method public getEditorVariation()I
    .registers 4

    .prologue
    .line 8703
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 8704
    .local v1, info:Landroid/view/inputmethod/EditorInfo;
    const/4 v0, 0x0

    .line 8705
    .local v0, editorVariation:I
    if-eqz v1, :cond_b

    .line 8706
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 8708
    :cond_b
    return v0
.end method

.method public getFlagIsAutoAppendOn()Z
    .registers 2

    .prologue
    .line 6895
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoAppendOn:Z

    return v0
.end method

.method public getFlagIsAutoCompletionOn()Z
    .registers 2

    .prologue
    .line 6867
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletionOn:Z

    return v0
.end method

.method public getFlagIsEditorAutoCompletion()Z
    .registers 2

    .prologue
    .line 6874
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    return v0
.end method

.method getFlagIsRecaptureOn()Z
    .registers 2

    .prologue
    .line 6916
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecaptureOn:Z

    return v0
.end method

.method public getFlagIsTraceOn()Z
    .registers 2

    .prologue
    .line 6924
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mTraceOn:Z

    return v0
.end method

.method public getHwrService()Lcom/diotek/dhwr/eur/b2b/DioHWRService;
    .registers 2

    .prologue
    .line 8555
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    return-object v0
.end method

.method public getIsCapsLockOn()Z
    .registers 2

    .prologue
    .line 6954
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    return v0
.end method

.method public getIsEmoticonUsable()Z
    .registers 2

    .prologue
    .line 8569
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    return v0
.end method

.method public getIsInputMethodOptMenuEnabled()Z
    .registers 2

    .prologue
    .line 6968
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputMethodOptMenuEnabled:Z

    return v0
.end method

.method public getIsOnlyAbcMode()Z
    .registers 2

    .prologue
    .line 6982
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOnlyAbcMode:Z

    return v0
.end method

.method public getIsPasswordMode()Z
    .registers 2

    .prologue
    .line 6940
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    return v0
.end method

.method public getIsShiftMode()Z
    .registers 2

    .prologue
    .line 6961
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    return v0
.end method

.method public getLastEngCapsMode()Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;
    .registers 2

    .prologue
    .line 8624
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    return-object v0
.end method

.method public getMonthLable(I)Ljava/lang/String;
    .registers 5
    .parameter

    .prologue
    .line 9403
    .line 9404
    const/16 v0, 0x1e

    invoke-static {p1, v0}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v0

    .line 9406
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 9407
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9409
    :cond_1a
    return-object v0
.end method

.method public getMultiLineEditorflag()Z
    .registers 2

    .prologue
    .line 7025
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorTypeMultiLine:Z

    return v0
.end method

.method public getSelectLanguage()I
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 8886
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 8887
    const-string v2, "select_language"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 8889
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v3, v1, [S

    .line 8890
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getDefaultLocalLanguge()S

    move-result v1

    aput-short v1, v3, v0

    .line 8892
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v1, v0

    :goto_2a
    if-ge v1, v4, :cond_44

    .line 8893
    add-int/lit8 v5, v1, 0x1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    aput-short v0, v3, v5

    .line 8892
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2a

    .line 8896
    :cond_44
    aget-short v0, v3, v2

    return v0
.end method

.method public getSipMgr()Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;
    .registers 2

    .prologue
    .line 7061
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    return-object v0
.end method

.method public getSpecialActionflag()Z
    .registers 2

    .prologue
    .line 7039
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSpecialActionEditor:Z

    return v0
.end method

.method public getStirngWithID(I)Ljava/lang/String;
    .registers 3
    .parameter "id"

    .prologue
    .line 960
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleAddWord()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 4174
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v0, :cond_11

    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 4175
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 4177
    :cond_11
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 4178
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->closing()V

    .line 4182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4183
    const-class v1, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4184
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4185
    const-string v1, "AddingWord"

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4188
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4189
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 4190
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4191
    if-eqz v1, :cond_47

    .line 4192
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 4194
    :cond_47
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->requestHideSelf(I)V

    .line 4196
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startActivity(Landroid/content/Intent;)V

    .line 4197
    return-void
.end method

.method public handleBackspace()V
    .registers 13

    .prologue
    const/4 v11, -0x1

    const/16 v10, 0x43

    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 4635
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v0, :cond_2e

    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    if-eqz v0, :cond_2e

    .line 4636
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 4638
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->revertVoiceInput()V

    .line 4823
    :cond_2d
    :goto_2d
    return-void

    .line 4642
    :cond_2e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 4643
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 4645
    const-string v0, ""

    .line 4646
    const-string v0, ""

    .line 4647
    if-eqz v7, :cond_2d

    .line 4648
    const/4 v0, 0x2

    invoke-interface {v7, v0, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4649
    const/4 v1, 0x3

    invoke-interface {v7, v1, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4650
    if-nez v0, :cond_50

    const-string v0, ""

    .line 4651
    :cond_50
    if-nez v1, :cond_54

    const-string v1, ""

    .line 4657
    :cond_54
    if-eqz v0, :cond_2c7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c7

    .line 4658
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move v5, v2

    .line 4663
    :goto_67
    if-eqz v0, :cond_2c3

    if-eqz v1, :cond_2c3

    .line 4664
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_2ca

    .line 4689
    :goto_72
    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isShouldSetShifted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v2, v1

    move-object v4, v0

    .line 4694
    :goto_78
    if-ge v6, v8, :cond_80

    .line 4695
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDeleteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDeleteCount:I

    .line 4698
    :cond_80
    if-le v6, v8, :cond_148

    .line 4699
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearOneSymb()S

    move-result v0

    if-nez v0, :cond_138

    .line 4700
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    move-result v0

    if-nez v0, :cond_ac

    .line 4701
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 4702
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a3

    .line 4703
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitCurrentComposing()V

    .line 4705
    :cond_a3
    invoke-direct {p0, v10}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKeyDownUpHandle(I)V

    .line 4706
    invoke-virtual {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList(Z)V

    .line 4707
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 4710
    :cond_ac
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4711
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4712
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v7, v0, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4713
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isMultitapMode()Z

    move-result v0

    if-nez v0, :cond_d8

    .line 4714
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v1

    invoke-virtual {p0, v0, v8, v8, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 4809
    :cond_d8
    :goto_d8
    if-eqz v2, :cond_2a2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-nez v0, :cond_2a2

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v0, :cond_2a2

    .line 4810
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    .line 4817
    :cond_e7
    :goto_e7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 4820
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 4821
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;I)V

    goto/16 :goto_2d

    .line 4666
    :pswitch_10b
    const-string v0, ""

    .line 4667
    const-string v1, ""

    goto/16 :goto_72

    .line 4670
    :pswitch_111
    const-string v0, ""

    .line 4671
    const-string v1, ""

    goto/16 :goto_72

    .line 4674
    :pswitch_117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_121

    .line 4675
    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4677
    :cond_121
    invoke-virtual {v1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_72

    .line 4680
    :pswitch_127
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_131

    .line 4681
    invoke-virtual {v0, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4683
    :cond_131
    const/4 v2, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_72

    .line 4717
    :cond_138
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4718
    if-eqz v7, :cond_144

    .line 4719
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v7, v0, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4721
    :cond_144
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto :goto_d8

    .line 4723
    :cond_148
    if-lez v6, :cond_192

    .line 4724
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_177

    .line 4725
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearOneSymb()S

    .line 4726
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4727
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4728
    if-eqz v7, :cond_16a

    .line 4729
    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->displayHangul(Landroid/view/inputmethod/InputConnection;)V

    .line 4732
    :cond_16a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_d8

    .line 4733
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto/16 :goto_d8

    .line 4737
    :cond_177
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 4738
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4739
    if-eqz v7, :cond_188

    .line 4741
    const-string v0, ""

    invoke-direct {p0, v7, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 4743
    :cond_188
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 4744
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto/16 :goto_d8

    .line 4746
    :cond_192
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_248

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsRecaptureOn()Z

    move-result v0

    if-eqz v0, :cond_248

    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v0

    if-eqz v0, :cond_248

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_248

    .line 4757
    if-eqz v7, :cond_1df

    .line 4758
    const/16 v0, 0x40

    invoke-interface {v7, v0, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4762
    :goto_1b9
    invoke-virtual {v0, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 4763
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 4764
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 4765
    if-ne v1, v11, :cond_1e2

    if-ne v5, v11, :cond_1e2

    move-object v1, v0

    .line 4771
    :goto_1cc
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_1da

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e9

    .line 4772
    :cond_1da
    invoke-direct {p0, v10}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKeyDownUpHandle(I)V

    goto/16 :goto_d8

    .line 4760
    :cond_1df
    const-string v0, ""

    goto :goto_1b9

    .line 4768
    :cond_1e2
    add-int/lit8 v1, v6, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1cc

    .line 4774
    :cond_1e9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4775
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_213

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_213

    .line 4776
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4779
    :cond_213
    if-eqz v7, :cond_d8

    .line 4780
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4781
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {v0, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->doRecapture(Ljava/lang/String;S)V

    .line 4782
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v0

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v5

    invoke-virtual {p0, v0, v8, v8, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 4783
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v7, v0, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4784
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateComposerFromXT9()V

    .line 4785
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_d8

    .line 4789
    :cond_248
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 4790
    const-string v0, ""

    .line 4791
    if-eqz v7, :cond_255

    .line 4792
    invoke-interface {v7, v8, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4794
    :cond_255
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    if-eqz v1, :cond_28c

    if-eqz v0, :cond_28c

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_28c

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_28c

    .line 4795
    iput-boolean v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    .line 4796
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    .line 4800
    :cond_26d
    :goto_26d
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDeleteCount:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_29d

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsRecaptureOn()Z

    move-result v0

    if-eqz v0, :cond_281

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eqz v0, :cond_29d

    .line 4801
    :cond_281
    if-eqz v7, :cond_d8

    .line 4802
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLastWordDividerIndex()I

    move-result v0

    invoke-interface {v7, v0, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_d8

    .line 4797
    :cond_28c
    if-eqz v0, :cond_26d

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_26d

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_26d

    .line 4798
    iput-boolean v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    goto :goto_26d

    .line 4805
    :cond_29d
    invoke-direct {p0, v10}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKeyDownUpHandle(I)V

    goto/16 :goto_d8

    .line 4811
    :cond_2a2
    if-nez v2, :cond_e7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_e7

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v0, :cond_e7

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e7

    .line 4814
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_e7

    :cond_2c3
    move v2, v3

    move-object v4, v0

    goto/16 :goto_78

    :cond_2c7
    move v5, v3

    goto/16 :goto_67

    .line 4664
    :pswitch_data_2ca
    .packed-switch 0x0
        :pswitch_10b
        :pswitch_111
        :pswitch_117
        :pswitch_127
    .end packed-switch
.end method

.method public handleCharacter(I[I)V
    .registers 15
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x20

    const/4 v9, 0x1

    .line 5093
    sget-boolean v7, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v7, :cond_13

    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    if-eqz v7, :cond_13

    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v7, :cond_13

    .line 5094
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitVoiceInput()V

    .line 5097
    :cond_13
    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAfterVoiceInput:Z

    if-eqz v7, :cond_1c

    .line 5099
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v7, v9}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationInsertCount(I)V

    .line 5102
    :cond_1c
    if-nez p2, :cond_22

    .line 5103
    new-array p2, v9, [I

    .end local p2
    aput p1, p2, v11

    .line 5112
    .restart local p2
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 5113
    .local v5, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v5, :cond_29

    .line 5259
    :cond_28
    :goto_28
    return-void

    .line 5115
    :cond_29
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isInMultiTap()Z

    move-result v7

    if-eqz v7, :cond_82

    .line 5116
    const/4 v6, 0x0

    .line 5117
    .local v6, index:I
    const/4 v2, 0x0

    .line 5120
    .local v2, codesLength:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_34
    array-length v7, p2

    if-ge v4, v7, :cond_47

    .line 5121
    aget v7, p2, v4

    if-ne p1, v7, :cond_41

    .line 5122
    move v6, v4

    .line 5128
    :cond_3c
    add-int/lit8 v2, v4, 0x1

    .line 5120
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 5123
    :cond_41
    aget v7, p2, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3c

    .line 5125
    move v2, v4

    .line 5130
    :cond_47
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v7

    if-eqz v7, :cond_51

    .line 5131
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 5137
    :cond_51
    if-le v2, v9, :cond_9e

    .line 5138
    if-nez v6, :cond_5d

    .line 5139
    iget v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    add-int/lit8 v8, v2, -0x1

    aget v8, p2, v8

    if-ne v7, v8, :cond_7e

    .line 5148
    :cond_5d
    :goto_5d
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5149
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    int-to-char v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5150
    if-eqz v5, :cond_6f

    .line 5151
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v5, v7, v9}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 5153
    :cond_6f
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    .line 5154
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 5155
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    const/16 v8, 0x3e8

    invoke-direct {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;I)V

    goto :goto_28

    .line 5142
    :cond_7e
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    goto :goto_5d

    .line 5158
    .end local v2           #codesLength:I
    .end local v4           #i:I
    .end local v6           #index:I
    :cond_82
    if-eq p1, v10, :cond_9e

    .line 5161
    if-eq p1, v10, :cond_9b

    .line 5162
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 5163
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_9b

    .line 5164
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->noteWordDoneByActiveWord()V

    .line 5168
    :cond_9b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 5171
    :cond_9e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v7

    if-eqz v7, :cond_a8

    .line 5172
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 5175
    :cond_a8
    if-eqz v5, :cond_e3

    .line 5178
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v7

    if-eqz v7, :cond_13f

    .line 5179
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 5191
    :cond_b5
    :goto_b5
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v7

    if-nez v7, :cond_cb

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_cb

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v7

    if-nez v7, :cond_d3

    .line 5195
    :cond_cb
    int-to-char v7, p1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 5200
    :cond_d3
    int-to-char v7, p1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSentenceSeparator(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_de

    .line 5204
    :cond_de
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5208
    :cond_e3
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v7, :cond_10b

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v7

    if-lez v7, :cond_10b

    .line 5209
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v7

    if-nez v7, :cond_169

    .line 5210
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateUserSelWord()V

    .line 5211
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->EMPTY_LIST:Ljava/util/List;

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSuggestionListTest:Ljava/util/List;

    .line 5212
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v9, v9, v11}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 5213
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v7, :cond_10b

    .line 5214
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 5224
    :cond_10b
    :goto_10b
    if-ne p1, v10, :cond_11e

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsPredictionOn()Z

    move-result v7

    if-eqz v7, :cond_11e

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v7

    if-nez v7, :cond_11e

    .line 5225
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->doNextWordPrediction()V

    .line 5228
    :cond_11e
    if-ne p1, v10, :cond_131

    .line 5229
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 5230
    .local v3, ei:Landroid/view/inputmethod/EditorInfo;
    if-eqz v3, :cond_131

    .line 5231
    iget v7, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v7, 0xf

    .line 5232
    .local v0, Editorclass:I
    iget v7, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v7, 0xff0

    .line 5233
    .local v1, Editorvar:I
    const/4 v7, 0x3

    if-ne v0, v7, :cond_16d

    .line 5255
    .end local v0           #Editorclass:I
    .end local v1           #Editorvar:I
    .end local v3           #ei:Landroid/view/inputmethod/EditorInfo;
    :cond_131
    :goto_131
    if-ne p1, v10, :cond_28

    .line 5256
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 5257
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    goto/16 :goto_28

    .line 5181
    :cond_13f
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 5182
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5183
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v7

    if-nez v7, :cond_155

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v7

    if-eqz v7, :cond_b5

    .line 5184
    :cond_155
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_164

    if-ne p1, v10, :cond_164

    .line 5186
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->noteWordDoneByActiveWord()V

    .line 5188
    :cond_164
    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList(Z)V

    goto/16 :goto_b5

    .line 5218
    :cond_169
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto :goto_10b

    .line 5237
    .restart local v0       #Editorclass:I
    .restart local v1       #Editorvar:I
    .restart local v3       #ei:Landroid/view/inputmethod/EditorInfo;
    :cond_16d
    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoPeriodOn:Z

    if-eqz v7, :cond_131

    .line 5238
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->doDoubleSpace()V

    goto :goto_131
.end method

.method protected handleSettings()V
    .registers 2

    .prologue
    .line 4200
    const-class v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleSettings(Ljava/lang/Class;)V

    .line 4201
    return-void
.end method

.method protected handleSettings(Ljava/lang/Class;)V
    .registers 5
    .parameter

    .prologue
    .line 4204
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleClose()V

    .line 4205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4206
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4207
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4209
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditinfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1d

    .line 4210
    const-string v1, "privateImeOptions"

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditinfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v2, v2, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4212
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startActivity(Landroid/content/Intent;)V

    .line 4213
    return-void
.end method

.method public hasAction()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7734
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 7736
    if-nez v2, :cond_9

    .line 7742
    :cond_8
    :goto_8
    return v0

    .line 7737
    :cond_9
    iget-object v3, v2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-nez v3, :cond_1e

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    if-eq v3, v1, :cond_8

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v4, 0x2000

    and-int/2addr v3, v4

    if-nez v3, :cond_8

    iget v2, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v2, :cond_8

    :cond_1e
    move v0, v1

    goto :goto_8
.end method

.method public hideWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 6712
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 6713
    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setFlagIsVisibleWindow(Z)V

    .line 6714
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLatestTextInputMode()V

    .line 6715
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    .line 6716
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    .line 6718
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 6719
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 6720
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6730
    :cond_20
    :goto_20
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 6731
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 6734
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 6735
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->dismiss()V

    .line 6738
    :cond_39
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 6739
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6741
    :cond_4a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_53

    .line 6743
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->dismissExpandPopup()V

    .line 6747
    :cond_53
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_61

    .line 6749
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeActionPopup()V

    .line 6751
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->closing()V

    .line 6754
    :cond_61
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendInputLanguage()V

    .line 6755
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 6757
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConfigurationChanging:Z

    if-nez v0, :cond_a1

    .line 6758
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAfterVoiceInput:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logInputEnded()V

    .line 6759
    :cond_75
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 6760
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogDismissed()V

    .line 6761
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 6764
    :cond_8e
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v0, :cond_9e

    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_9e

    .line 6765
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 6767
    :cond_9e
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 6770
    :cond_a1
    return-void

    .line 6721
    :cond_a2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_b7

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v0

    if-lez v0, :cond_b7

    .line 6723
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList(Z)V

    goto/16 :goto_20

    .line 6724
    :cond_b7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_20

    .line 6725
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_20

    .line 6726
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->dismissExpandPopup()V

    goto/16 :goto_20
.end method

.method public initSuggestionList()V
    .registers 2

    .prologue
    .line 5965
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList(Z)V

    .line 5966
    return-void
.end method

.method public initSuggestionList(Z)V
    .registers 8
    .parameter "isShouldSuggestNull"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 5973
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSuggestionListTest:Ljava/util/List;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-nez v3, :cond_c

    .line 6018
    :cond_b
    :goto_b
    return-void

    .line 5978
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 5979
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_b

    .line 5982
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_3b

    .line 5983
    if-eqz p1, :cond_20

    .line 5984
    invoke-virtual {p0, v5, v1, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 5986
    :cond_20
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v3, :cond_29

    .line 5987
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 5990
    :cond_29
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_b

    .line 5991
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 5992
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 5993
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_b

    .line 5999
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v3

    if-eqz v3, :cond_45

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v3, :cond_4e

    .line 6000
    :cond_45
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->EMPTY_LIST:Ljava/util/List;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSuggestionListTest:Ljava/util/List;

    .line 6001
    if-eqz p1, :cond_4e

    .line 6002
    invoke-virtual {p0, v5, v1, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 6006
    :cond_4e
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_5f

    .line 6007
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 6008
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 6009
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6012
    :cond_5f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v3

    if-eqz v3, :cond_89

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v3

    if-nez v3, :cond_89

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    if-ne v3, v1, :cond_83

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v3

    if-eqz v3, :cond_89

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v3, :cond_89

    .line 6015
    .local v1, visible:Z
    :cond_83
    :goto_83
    if-eqz p1, :cond_b

    .line 6016
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    goto :goto_b

    .end local v1           #visible:Z
    :cond_89
    move v1, v2

    .line 6012
    goto :goto_83
.end method

.method public initXT9Settings()V
    .registers 3

    .prologue
    .line 944
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletionOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setWordCompletionEnabled(Z)V

    .line 945
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPredictionOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setNextWordPredictionEnabled(Z)V

    .line 946
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCorrectionOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setCorrectionEnabled(Z)V

    .line 947
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoAppendOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setAutoAppendEnabled(Z)V

    .line 948
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoSubstitutionOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setAutoSubstitutionEnabled(Z)V

    .line 949
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRegionalCorrectionOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setRegionalCorrectionEnabled(Z)V

    .line 950
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecaptureOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setRecaptureEnabled(Z)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mTraceOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setTraceEnabled(Z)V

    .line 952
    return-void
.end method

.method public invalidateInputView()V
    .registers 2

    .prologue
    .line 9464
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_9

    .line 9465
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 9467
    :cond_9
    return-void
.end method

.method isAlphaKey(I)Z
    .registers 3
    .parameter "keyCode"

    .prologue
    .line 2147
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method public isAlphabetInputMode()Z
    .registers 2

    .prologue
    .line 2189
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAlphabetInputMode()Z

    move-result v0

    return v0
.end method

.method public isBubblePreviewOn()Z
    .registers 2

    .prologue
    .line 9470
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mBubblePreviewOn:Z

    return v0
.end method

.method public isCandidateViewShown()Z
    .registers 2

    .prologue
    .line 8547
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->isShown()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isClassDate()Z
    .registers 3

    .prologue
    .line 8717
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isClassDateTime()Z
    .registers 3

    .prologue
    .line 8712
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isClassDecimalNumber()Z
    .registers 3

    .prologue
    .line 8735
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorFlag()I

    move-result v0

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isClassFlagNullNumber()Z
    .registers 3

    .prologue
    .line 8751
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDecimalNumber()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassSignedNumber()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassSignedDecimalNumber()Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public isClassNumber()Z
    .registers 3

    .prologue
    .line 8731
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isClassPhone()Z
    .registers 3

    .prologue
    .line 8727
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public isClassSignedDecimalNumber()Z
    .registers 3

    .prologue
    .line 8745
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorFlag()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isClassSignedNumber()Z
    .registers 3

    .prologue
    .line 8740
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorFlag()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isClassText()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 8758
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isClassTime()Z
    .registers 3

    .prologue
    .line 8722
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public isComCodeBSE()Z
    .registers 4

    .prologue
    .line 9474
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 9475
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 9478
    const-string v2, "nl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "BE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2e

    .line 9479
    const/4 v0, 0x1

    .line 9482
    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public isCustomExtractViewEnabled()Z
    .registers 2

    .prologue
    .line 7050
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCustomExtractViewEnabled:Z

    return v0
.end method

.method isEditorHasText(II)Z
    .registers 10
    .parameter "cursorStart"
    .parameter "cursorEnd"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1846
    const/4 v0, 0x0

    .line 1847
    .local v0, hasText:Z
    if-nez p1, :cond_7

    if-eqz p2, :cond_9

    :cond_7
    move v4, v5

    .line 1865
    :cond_8
    :goto_8
    return v4

    .line 1850
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1851
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_8

    .line 1854
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1855
    .local v3, textBeforeCursor:Ljava/lang/CharSequence;
    if-eqz v3, :cond_1e

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1e

    .line 1856
    const/4 v0, 0x1

    :goto_1c
    move v4, v0

    .line 1865
    goto :goto_8

    .line 1858
    :cond_1e
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1859
    .local v2, textAfterCursor:Ljava/lang/CharSequence;
    if-eqz v2, :cond_2c

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2c

    .line 1860
    const/4 v0, 0x1

    goto :goto_1c

    .line 1862
    :cond_2c
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public isExpandCandidatesViewShown()Z
    .registers 2

    .prologue
    .line 9460
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->isExpandCandidatesViewShown()Z

    move-result v0

    return v0
.end method

.method public isForcedCapsLockForGreek()Z
    .registers 3

    .prologue
    .line 9486
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    if-eqz v0, :cond_c

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isHangulInputMode()Z
    .registers 2

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v0

    return v0
.end method

.method public isLandscapeMode()Z
    .registers 2

    .prologue
    .line 8900
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    return v0
.end method

.method public isMultiLanguage()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 9212
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_a

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method isNextShiftInputMode()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 4933
    const-string v2, ""

    .line 4934
    .local v2, lastOneChar:Ljava/lang/String;
    const-string v3, ""

    .line 4935
    .local v3, lastTwoChar:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4936
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_19

    .line 4937
    invoke-interface {v1, v4, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2           #lastOneChar:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 4938
    .restart local v2       #lastOneChar:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v1, v5, v0}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3           #lastTwoChar:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 4941
    .restart local v3       #lastTwoChar:Ljava/lang/String;
    :cond_19
    if-eqz v2, :cond_1d

    if-nez v3, :cond_1e

    .line 4956
    :cond_1d
    :goto_1d
    return v0

    .line 4946
    :cond_1e
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 4950
    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v5

    if-eqz v5, :cond_36

    move v0, v4

    .line 4951
    goto :goto_1d

    .line 4954
    :cond_36
    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isShouldSetShifted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 4956
    .local v0, changeShiftRequested:Z
    goto :goto_1d
.end method

.method public isNonAlphabetLanguage()Z
    .registers 2

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isNonAlphabetLanguage()Z

    move-result v0

    return v0
.end method

.method public isNordic()Z
    .registers 4

    .prologue
    .line 9624
    const/4 v0, 0x0

    .line 9625
    .local v0, isnordic:Z
    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1e

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1e

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_1e

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0x25

    if-eq v1, v2, :cond_1e

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1f

    .line 9630
    :cond_1e
    const/4 v0, 0x1

    .line 9632
    :cond_1f
    return v0
.end method

.method public isPopupMenuShown()Z
    .registers 2

    .prologue
    .line 6996
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupMenuShown:Z

    return v0
.end method

.method public isRecognizing()Z
    .registers 2

    .prologue
    .line 9413
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    return v0
.end method

.method protected isRussianAlphaKey(I)Z
    .registers 5
    .parameter "keyCode"

    .prologue
    const/16 v2, 0x61

    .line 2165
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v1, 0x19

    if-eq v0, v1, :cond_17

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v2, :cond_17

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1f

    .line 2169
    :cond_17
    const/16 v0, 0x81

    if-gt p1, v0, :cond_1f

    if-lt p1, v2, :cond_1f

    .line 2170
    const/4 v0, 0x1

    .line 2173
    :goto_1e
    return v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public isSpaceLanguageChangeEnable()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 9218
    sget-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9Config;->DA_MODE:Z

    if-eqz v2, :cond_7

    .line 9248
    :cond_6
    :goto_6
    return v0

    .line 9223
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isMultiLanguage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9224
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 9225
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 9226
    goto :goto_6

    .line 9231
    :cond_20
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 9232
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_33

    move v0, v1

    .line 9233
    goto :goto_6

    .line 9234
    :cond_33
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 9235
    goto :goto_6

    .line 9240
    :cond_3d
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 9241
    goto :goto_6
.end method

.method public isTraceEnabled()Z
    .registers 2

    .prologue
    .line 6928
    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->USE_TRACE:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsTraceOn()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isXt9SettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public isVoiceInputEnable()Z
    .registers 3

    .prologue
    .line 8908
    const/4 v0, 0x0

    .line 8910
    .local v0, isEnableLang:Z
    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    sparse-switch v1, :sswitch_data_1c

    .line 8925
    const/4 v0, 0x0

    .line 8928
    :goto_7
    sget-boolean v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v1, :cond_19

    const/4 v1, 0x1

    :goto_16
    return v1

    .line 8922
    :sswitch_17
    const/4 v0, 0x1

    .line 8923
    goto :goto_7

    .line 8928
    :cond_19
    const/4 v1, 0x0

    goto :goto_16

    .line 8910
    nop

    :sswitch_data_1c
    .sparse-switch
        0x5 -> :sswitch_17
        0x7 -> :sswitch_17
        0x9 -> :sswitch_17
        0xa -> :sswitch_17
        0xc -> :sswitch_17
        0x10 -> :sswitch_17
        0x12 -> :sswitch_17
        0x13 -> :sswitch_17
        0x15 -> :sswitch_17
        0x19 -> :sswitch_17
        0x1f -> :sswitch_17
    .end sparse-switch
.end method

.method public isXt9SettingEnabled()Z
    .registers 2

    .prologue
    .line 8666
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    return v0
.end method

.method public onCancelVoice()V
    .registers 2

    .prologue
    .line 8932
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    if-eqz v0, :cond_7

    .line 8933
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->switchToKeyboardView()V

    .line 8935
    :cond_7
    return-void
.end method

.method public onChange(I)V
    .registers 2
    .parameter "primaryCode"

    .prologue
    .line 5576
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .registers 3
    .parameter "outInsets"

    .prologue
    .line 7786
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 7787
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_d

    .line 7788
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 7790
    :cond_d
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 14
    .parameter "newConfig"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 7987
    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_127

    move v7, v8

    :goto_9
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    .line 7989
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v7, :cond_14

    .line 7990
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->dismissExpandPopup()V

    .line 7992
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_132

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v7

    if-eqz v7, :cond_132

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-nez v7, :cond_12a

    move v7, v9

    :goto_25
    if-lez v7, :cond_132

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v7

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v10, 0x3

    if-eq v7, v10, :cond_132

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v7

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v10, 0x4

    if-eq v7, v10, :cond_132

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v7

    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v10, 0x5

    if-eq v7, v10, :cond_132

    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v7, :cond_132

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRecognizing()Z

    move-result v7

    if-nez v7, :cond_132

    move v5, v8

    .line 8000
    .local v5, updateSuggestion:Z
    :goto_53
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mChangeConfigRequested:Z

    .line 8003
    if-nez v5, :cond_64

    .line 8004
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 8005
    invoke-virtual {p0, v11, v8, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 8006
    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 8012
    :cond_64
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v7, :cond_135

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->IsOneTimeShift()Z

    move-result v3

    .line 8016
    .local v3, isOneTime:Z
    :goto_6e
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8026
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    .line 8027
    .local v2, inputMode:I
    if-eqz v2, :cond_7b

    if-ne v2, v8, :cond_89

    .line 8028
    :cond_7b
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v7

    if-eqz v7, :cond_138

    move v0, v9

    .line 8030
    .local v0, currentInputMode:I
    :goto_84
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v7, v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 8040
    .end local v0           #currentInputMode:I
    :cond_89
    if-eqz v5, :cond_146

    .line 8041
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggestion()Ljava/util/List;

    move-result-object v4

    .line 8042
    .local v4, suggestion:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_cd

    .line 8043
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v6

    .line 8044
    .local v6, wordIndex:B
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8045
    iget-object v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 8046
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 8052
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v7, :cond_13b

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v7

    if-eqz v7, :cond_13b

    .line 8053
    if-eqz v1, :cond_ca

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_ca

    .line 8056
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 8058
    :cond_ca
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 8073
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v4           #suggestion:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v6           #wordIndex:B
    :cond_cd
    :goto_cd
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v7

    if-eqz v7, :cond_e4

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_e4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_e4

    .line 8075
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 8078
    :cond_e4
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    if-eqz v7, :cond_fd

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_fd

    .line 8079
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v7, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8080
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->dismiss()V

    .line 8081
    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 8085
    :cond_fd
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    if-eqz v7, :cond_11f

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_11f

    .line 8086
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    invoke-virtual {v7, v11}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8087
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->dismiss()V

    .line 8088
    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 8089
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    sget-object v8, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->INPUTMETHOD:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    if-ne v7, v8, :cond_151

    .line 8090
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showInputMethodSelectOptionMenu()V

    .line 8096
    :cond_11f
    :goto_11f
    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    if-eqz v7, :cond_126

    .line 8097
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->switchToRecognitionStatusView()V

    .line 8099
    :cond_126
    return-void

    .end local v2           #inputMode:I
    .end local v3           #isOneTime:Z
    .end local v5           #updateSuggestion:Z
    :cond_127
    move v7, v9

    .line 7987
    goto/16 :goto_9

    .line 7992
    :cond_12a
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v7

    goto/16 :goto_25

    :cond_132
    move v5, v9

    goto/16 :goto_53

    .restart local v5       #updateSuggestion:Z
    :cond_135
    move v3, v9

    .line 8012
    goto/16 :goto_6e

    .restart local v2       #inputMode:I
    .restart local v3       #isOneTime:Z
    :cond_138
    move v0, v8

    .line 8028
    goto/16 :goto_84

    .line 8060
    .restart local v1       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v4       #suggestion:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v6       #wordIndex:B
    :cond_13b
    invoke-virtual {p0, v4, v8, v8, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 8061
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    goto :goto_cd

    .line 8067
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v4           #suggestion:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v6           #wordIndex:B
    :cond_146
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 8068
    invoke-virtual {p0, v11, v8, v8, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 8069
    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    goto/16 :goto_cd

    .line 8091
    :cond_151
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    sget-object v8, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->LANGUAGE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    if-ne v7, v8, :cond_11f

    .line 8092
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showInputLanguageSelectOptionMenu()V

    goto :goto_11f
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .registers 4
    .parameter "win"
    .parameter "isFullscreen"
    .parameter "isCandidatesOnly"

    .prologue
    .line 8105
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 8106
    return-void
.end method

.method public onCreate()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 761
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 766
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->getInstance(Ljava/lang/String;)Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_f

    .line 768
    invoke-virtual {v0, p0}, Lcom/sec/android/inputmethod/axt9/CSCReadAndSet;->setCustomerCSC(Landroid/content/Context;)V

    .line 773
    :cond_f
    new-instance v0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-direct {v0, p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    .line 775
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 776
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->LANGUAGE_NUM:I

    .line 777
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->LANGUAGE_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    .line 778
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->LANGUAGE_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    .line 779
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 780
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyMgr:Lcom/sec/android/inputmethod/axt9/AxT9HWKeyMgr;

    .line 782
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 783
    if-eqz v0, :cond_5a

    .line 784
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 786
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 787
    if-le v0, v3, :cond_ea

    .line 788
    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    .line 789
    sput v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    .line 790
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    .line 799
    :cond_5a
    :goto_5a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOldLocale:Ljava/util/Locale;

    .line 801
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08002d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPortInputViewHeight:I

    .line 802
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08002e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLandInputViewHeight:I

    .line 804
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Config;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Config;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConf:Lcom/sec/android/inputmethod/axt9/AxT9Config;

    .line 805
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    .line 806
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    .line 807
    new-instance v0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-direct {v0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    .line 808
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v0, p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setContext(Landroid/content/Context;)V

    .line 809
    iput-object p0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mUmlautLanguageDbId:Ljava/util/ArrayList;

    .line 817
    const/16 v0, 0x3e8

    new-array v0, v0, [Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_tracePointInfo:[Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9TracePoint;

    .line 818
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->m_nTracePointCount:I

    .line 821
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSounds()V

    .line 846
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodListSize()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputMethodOptionList:[Ljava/lang/CharSequence;

    .line 848
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodListSize()I

    move-result v4

    move v3, v2

    :goto_cc
    if-ge v3, v4, :cond_f2

    .line 849
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 850
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputMethodOptionList:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getImTypeString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .line 848
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_cc

    .line 792
    :cond_ea
    sput v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    .line 793
    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    .line 794
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    goto/16 :goto_5a

    .line 853
    :cond_f2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v3, 0x7f09

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v3, v0

    iput-wide v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVibrateDuration:J

    .line 855
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->activityresult:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.sec.android.inputmethod.axt9.AxT9IME"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 857
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioDictConfigReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.diotek.diodict.lang"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 859
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 862
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 864
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mScreenLockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_PRESENT"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 865
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 866
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCursorHandleReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.samsung.sec.android.inputmethod.axt9.EDIT_ACTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 867
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHeightRequestReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "RequestAxT9InfoAllHeight"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 868
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.mms.LANGUAGE_ACTION"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 869
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCommitAlternative:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "commit_char"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 870
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConnectBTKeyboard:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 872
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mShowinputReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "ShowInputMethodMenu"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 874
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSettingValues()V

    .line 875
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSettingLanguage()V

    .line 878
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v0

    new-array v4, v0, [S

    .line 881
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v5

    move v3, v2

    :goto_1a4
    if-ge v3, v5, :cond_1bc

    .line 882
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    aput-short v0, v4, v3

    .line 881
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1a4

    .line 885
    :cond_1bc
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    aget-short v0, v4, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    .line 887
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    if-nez v0, :cond_221

    move v0, v1

    :goto_1c7
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoLangOn(Z)V

    .line 889
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_1e8

    .line 890
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initXT9Settings()V

    .line 891
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initCore(S)V

    .line 892
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAlreadyInitFlag()V

    .line 893
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputMode(I)V

    .line 896
    :cond_1e8
    sput-boolean v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    .line 898
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 918
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 919
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 921
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_223

    :goto_20b
    sput-boolean v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    .line 926
    new-instance v0, Lcom/android/inputmethod/voice/VoiceInput;

    invoke-direct {v0, p0, p0}, Lcom/android/inputmethod/voice/VoiceInput;-><init>(Landroid/content/Context;Lcom/android/inputmethod/voice/VoiceInput$UiListener;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    .line 927
    new-instance v0, Lcom/sec/android/inputmethod/axt9/Hints;

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/inputmethod/axt9/Hints;-><init>(Landroid/content/Context;Lcom/sec/android/inputmethod/axt9/Hints$Display;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHints:Lcom/sec/android/inputmethod/axt9/Hints;

    .line 938
    return-void

    :cond_221
    move v0, v2

    .line 887
    goto :goto_1c7

    :cond_223
    move v1, v2

    .line 921
    goto :goto_20b
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 967
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_c

    .line 968
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->freeVariables()V

    .line 969
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 971
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030023

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 972
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setService(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    .line 973
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->initViews()V

    .line 984
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 991
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_c

    .line 992
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->freeVariables()V

    .line 993
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    .line 995
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030028

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    .line 996
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputView(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V

    .line 999
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setCurrentRequestedKeyboardNull(I)V

    .line 1000
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOnKeyboardActionListener(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;)V

    .line 1002
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v0, :cond_3c

    .line 1004
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    .line 1007
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 6775
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6776
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->activityresult:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6777
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioDictConfigReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6780
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6782
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mScreenLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6783
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6785
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCursorHandleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6786
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHeightRequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6787
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6788
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCommitAlternative:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6789
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConnectBTKeyboard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6791
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mShowinputReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6803
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v0, :cond_49

    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v0, :cond_49

    .line 6804
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->destroy()V

    .line 6806
    :cond_49
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_52

    .line 6807
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 6809
    :cond_52
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_5b

    .line 6810
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->destroy()V

    .line 6813
    :cond_5b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    if-eqz v0, :cond_64

    .line 6816
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v0, p0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->unregister(Landroid/content/Context;)V

    .line 6818
    :cond_64
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 6819
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 8
    .parameter "completions"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1014
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v5

    if-eqz v5, :cond_43

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v5, :cond_43

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v5, :cond_43

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRecognizing()Z

    move-result v5

    if-nez v5, :cond_43

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isExtractViewShown()Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1015
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1016
    if-nez p1, :cond_46

    .line 1017
    const/4 v5, 0x0

    invoke-virtual {p0, v5, v3, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 1018
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v5

    if-nez v5, :cond_44

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v5

    if-eqz v5, :cond_44

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v5, :cond_44

    :goto_40
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 1035
    :cond_43
    :goto_43
    return-void

    :cond_44
    move v3, v4

    .line 1018
    goto :goto_40

    .line 1023
    :cond_46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1024
    .local v2, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_4c
    if-eqz p1, :cond_65

    array-length v5, p1

    :goto_4f
    if-ge v1, v5, :cond_67

    .line 1025
    aget-object v0, p1, v1

    .line 1026
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_62

    .line 1027
    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_65
    move v5, v4

    goto :goto_4f

    .line 1030
    :cond_67
    invoke-virtual {p0, v2, v3, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 1031
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_76

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v5

    if-eqz v5, :cond_90

    :cond_76
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_90

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v5

    if-nez v5, :cond_90

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v5

    if-eqz v5, :cond_90

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v5, :cond_90

    :goto_8c
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    goto :goto_43

    :cond_90
    move v3, v4

    goto :goto_8c
.end method

.method public onDownUpKeyEvent(I)V
    .registers 18
    .parameter "keyEventCode"

    .prologue
    .line 648
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 649
    .local v1, eventTime:J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v15

    .line 651
    .local v15, ic:Landroid/view/inputmethod/InputConnection;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 655
    .local v0, downKeyEvent:Landroid/view/KeyEvent;
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 659
    .local v3, upKeyEvent:Landroid/view/KeyEvent;
    if-eqz v15, :cond_30

    .line 660
    invoke-interface {v15, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 661
    invoke-interface {v15, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 665
    :cond_30
    return-void
.end method

.method public onFinishInput()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1041
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1042
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_13

    invoke-interface {v0, v3}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_13

    .line 1043
    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 1046
    :cond_13
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 1048
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v1, :cond_3a

    sget-boolean v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v1, :cond_3a

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConfigurationChanging:Z

    if-nez v1, :cond_3a

    .line 1049
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAfterVoiceInput:Z

    if-eqz v1, :cond_30

    .line 1050
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 1051
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->logInputEnded()V

    .line 1053
    :cond_30
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->flushLogs()V

    .line 1054
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v1}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 1069
    :cond_3a
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 1070
    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    .line 1074
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    .line 1075
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1076
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList(Z)V

    .line 1084
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v1, :cond_57

    .line 1085
    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 1086
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setDefaultTextInputMode()V

    .line 1094
    :cond_57
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    .line 1095
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    .line 1096
    return-void
.end method

.method public onFinishInputView(Z)V
    .registers 4
    .parameter "finishingInput"

    .prologue
    .line 1104
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1106
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    .line 1107
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setMmsRecipientLastInputMode(I)V

    .line 1110
    :cond_17
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_21

    .line 1113
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1119
    :cond_21
    return-void
.end method

.method public onKey(I[I)V
    .registers 4
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 2898
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[IZ)V

    .line 2899
    return-void
.end method

.method public onKey(I[IZ)V
    .registers 15
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2909
    .line 2910
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 2911
    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 2914
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v1

    .line 2915
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorFlag()I

    move-result v0

    .line 2916
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2917
    if-nez v2, :cond_1b

    .line 3840
    :cond_1a
    :goto_1a
    return-void

    .line 2921
    :cond_1b
    sget-boolean v5, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v5, :cond_2a

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    if-eqz v5, :cond_2a

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v5, :cond_2a

    .line 2922
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitVoiceInput()V

    .line 2925
    :cond_2a
    const/16 v5, -0xff

    if-eq p1, v5, :cond_1a

    .line 2929
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_52

    .line 2930
    const/16 v5, 0x20

    if-eq p1, v5, :cond_42

    const/16 v5, 0xa

    if-eq p1, v5, :cond_42

    const/4 v5, -0x5

    if-ne p1, v5, :cond_52

    .line 2933
    :cond_42
    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    if-eqz v5, :cond_52

    .line 2934
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 2935
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v5, :cond_52

    .line 2936
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 2942
    :cond_52
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v5

    if-eqz v5, :cond_7a

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v5

    if-nez v5, :cond_7a

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v5

    if-nez v5, :cond_7a

    .line 2943
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v5, :cond_7a

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isInMultiTap()Z

    move-result v5

    if-nez v5, :cond_7a

    .line 2944
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2945
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2949
    :cond_7a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2950
    const/4 v7, -0x5

    if-ne p1, v7, :cond_8a

    iget-wide v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKeyTime:J

    const-wide/16 v9, 0x12c

    add-long/2addr v7, v9

    cmp-long v7, v5, v7

    if-lez v7, :cond_8d

    .line 2952
    :cond_8a
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDeleteCount:I

    .line 2954
    :cond_8d
    iput-wide v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKeyTime:J

    .line 2956
    sparse-switch p1, :sswitch_data_aea

    .line 3826
    :cond_92
    :goto_92
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendKey(I[IZ)V

    .line 3831
    :cond_95
    :goto_95
    :sswitch_95
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_cb

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v0

    if-nez v0, :cond_af

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v0

    if-nez v0, :cond_af

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRussianAlphaKey(I)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 3832
    :cond_af
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v0

    if-eqz v0, :cond_cb

    .line 3833
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_ad8

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-nez v0, :cond_ad8

    const/4 v0, 0x1

    :goto_c8
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 3837
    :cond_cb
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isKeyLongPressed()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3838
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setKeyLongPressed(Z)V

    goto/16 :goto_1a

    .line 2959
    :sswitch_db
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 2960
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 2961
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 2963
    :cond_e8
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 2964
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->startVoiceRecognition()V

    goto :goto_95

    .line 2976
    :sswitch_f6
    if-eqz v2, :cond_95

    .line 2977
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2979
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2980
    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2984
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_116

    .line 2985
    const-string v0, "01"

    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2995
    :goto_112
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_95

    .line 2987
    :cond_116
    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    goto :goto_112

    .line 2999
    :sswitch_11a
    if-eqz v2, :cond_95

    .line 3000
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 3002
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3003
    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3004
    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3005
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_95

    .line 3009
    :sswitch_131
    if-eqz v2, :cond_95

    .line 3010
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 3012
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3013
    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3014
    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3015
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_95

    .line 3019
    :sswitch_148
    if-eqz v2, :cond_95

    .line 3020
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 3022
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3023
    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3024
    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3025
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_95

    .line 3029
    :sswitch_15f
    if-eqz v2, :cond_95

    .line 3030
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 3032
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3033
    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3034
    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3035
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_95

    .line 3039
    :sswitch_176
    if-eqz v2, :cond_95

    .line 3040
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 3042
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3043
    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3044
    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3045
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_95

    .line 3049
    :sswitch_18d
    if-eqz v2, :cond_95

    .line 3050
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 3052
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3053
    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3054
    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3055
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_95

    .line 3059
    :sswitch_1a4
    if-eqz v2, :cond_95

    .line 3060
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 3062
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3063
    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3064
    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3065
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_95

    .line 3069
    :sswitch_1bb
    if-eqz v2, :cond_95

    .line 3070
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 3072
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3073
    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3074
    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3075
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_95

    .line 3079
    :sswitch_1d3
    if-eqz v2, :cond_95

    .line 3080
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 3082
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3083
    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3084
    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3085
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_95

    .line 3089
    :sswitch_1eb
    if-eqz v2, :cond_95

    .line 3090
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 3092
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3093
    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3094
    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3095
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_95

    .line 3099
    :sswitch_203
    if-eqz v2, :cond_95

    .line 3100
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 3102
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 3103
    const/4 v1, 0x5

    const/4 v3, 0x5

    invoke-interface {v2, v1, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 3104
    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3105
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_95

    .line 3118
    :sswitch_21b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_22e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v0

    if-eqz v0, :cond_22e

    .line 3119
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    goto/16 :goto_95

    .line 3121
    :cond_22e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 3122
    const/4 v1, -0x1

    .line 3124
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_23f

    .line 3125
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3127
    :cond_23f
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v2, v0

    :goto_247
    if-ge v2, v4, :cond_ae7

    .line 3128
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a9

    .line 3129
    add-int/lit8 v0, v2, 0x1

    .line 3134
    :goto_261
    const/4 v1, -0x1

    if-eq v0, v1, :cond_26b

    .line 3135
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 3136
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 3138
    :cond_26b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3139
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_280

    .line 3140
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3147
    :cond_280
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_2ad

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v0, :cond_2ad

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v0, :cond_2ad

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_2ad

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_2ad

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_2ad

    .line 3151
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3155
    :goto_2a4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    goto/16 :goto_95

    .line 3127
    :cond_2a9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_247

    .line 3153
    :cond_2ad
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_2a4

    .line 3159
    :sswitch_2b9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_2cc

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v0

    if-eqz v0, :cond_2cc

    .line 3160
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto/16 :goto_95

    .line 3162
    :cond_2cc
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 3163
    const/4 v1, -0x1

    .line 3165
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_2dd

    .line 3166
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3168
    :cond_2dd
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v2, v0

    :goto_2e5
    if-ge v2, v4, :cond_ae4

    .line 3169
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_347

    .line 3170
    add-int/lit8 v0, v2, 0x1

    .line 3175
    :goto_2ff
    const/4 v1, -0x1

    if-eq v0, v1, :cond_309

    .line 3176
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 3177
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 3179
    :cond_309
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3180
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_31e

    .line 3181
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3188
    :cond_31e
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_34b

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v0, :cond_34b

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v0, :cond_34b

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_34b

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_34b

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_34b

    .line 3192
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3196
    :goto_342
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto/16 :goto_95

    .line 3168
    :cond_347
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2e5

    .line 3194
    :cond_34b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_342

    .line 3200
    :sswitch_357
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_36a

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v0

    if-eqz v0, :cond_36a

    .line 3201
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_95

    .line 3203
    :cond_36a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 3204
    const/4 v1, -0x1

    .line 3206
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_37b

    .line 3207
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3209
    :cond_37b
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v2, v0

    :goto_383
    if-ge v2, v4, :cond_ae1

    .line 3210
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e5

    .line 3211
    add-int/lit8 v0, v2, 0x1

    .line 3216
    :goto_39d
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3a7

    .line 3217
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 3218
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 3220
    :cond_3a7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3221
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_3bc

    .line 3222
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3229
    :cond_3bc
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_3e9

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v0, :cond_3e9

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v0, :cond_3e9

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_3e9

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_3e9

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_3e9

    .line 3233
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3237
    :goto_3e0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_95

    .line 3209
    :cond_3e5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_383

    .line 3235
    :cond_3e9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_3e0

    .line 3241
    :sswitch_3f5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_40d

    .line 3242
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_406

    .line 3243
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3245
    :cond_406
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 3246
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 3248
    :cond_40d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 3249
    const/4 v1, -0x1

    .line 3251
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    move v2, v0

    :goto_41b
    if-ge v2, v3, :cond_ade

    .line 3252
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_465

    .line 3253
    add-int/lit8 v0, v2, 0x1

    .line 3258
    :goto_435
    const/4 v1, -0x1

    if-eq v0, v1, :cond_43f

    .line 3259
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 3260
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 3262
    :cond_43f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3263
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3264
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_45a

    .line 3265
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3267
    :cond_45a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 3268
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_95

    .line 3251
    :cond_465
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_41b

    .line 3272
    :sswitch_469
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 3273
    const/4 v1, -0x1

    .line 3275
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_47a

    .line 3276
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3278
    :cond_47a
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v2, v0

    :goto_482
    if-ge v2, v4, :cond_adb

    .line 3279
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e4

    .line 3280
    add-int/lit8 v0, v2, 0x1

    .line 3285
    :goto_49c
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4a6

    .line 3286
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 3287
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 3289
    :cond_4a6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3290
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_4bb

    .line 3291
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3298
    :cond_4bb
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_4e8

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v0, :cond_4e8

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v0, :cond_4e8

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_4e8

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_4e8

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_4e8

    .line 3302
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3307
    :goto_4df
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    goto/16 :goto_95

    .line 3278
    :cond_4e4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_482

    .line 3304
    :cond_4e8
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_4df

    .line 3310
    :sswitch_4f4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_572

    .line 3311
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_505

    .line 3312
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3314
    :cond_505
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 3315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 3319
    :cond_50c
    :goto_50c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 3321
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 3322
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_52e

    .line 3323
    const/4 v0, 0x0

    .line 3326
    :cond_52e
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3328
    const/4 v1, -0x1

    if-eq v0, v1, :cond_546

    .line 3329
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 3330
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 3333
    :cond_546
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_57c

    .line 3334
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3335
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3336
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_567

    .line 3337
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3339
    :cond_567
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 3340
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_95

    .line 3316
    :cond_572
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_50c

    .line 3317
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    goto :goto_50c

    .line 3343
    :cond_57c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3344
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_591

    .line 3345
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3352
    :cond_591
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_5cb

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v0, :cond_5cb

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v0, :cond_5cb

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_5cb

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_5cb

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_5cb

    .line 3356
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3361
    :goto_5b5
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    if-eqz v0, :cond_5db

    .line 3362
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputLanguageId()S

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5d7

    .line 3363
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 3370
    :goto_5c6
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendInputLanguage()V

    goto/16 :goto_95

    .line 3358
    :cond_5cb
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_5b5

    .line 3365
    :cond_5d7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreForcedCapslock()V

    goto :goto_5c6

    .line 3368
    :cond_5db
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    goto :goto_5c6

    .line 3374
    :sswitch_5df
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_66b

    .line 3375
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5f0

    .line 3376
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3378
    :cond_5f0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 3379
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 3383
    :cond_5f7
    :goto_5f7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 3385
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3386
    if-gez v0, :cond_614

    .line 3387
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 3390
    :cond_614
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3392
    const/4 v1, -0x1

    if-eq v0, v1, :cond_62a

    .line 3393
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 3394
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 3396
    :cond_62a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3397
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_63f

    .line 3398
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3405
    :cond_63f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_675

    .line 3406
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3407
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3408
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_660

    .line 3409
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3411
    :cond_660
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 3412
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_95

    .line 3380
    :cond_66b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_5f7

    .line 3381
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    goto :goto_5f7

    .line 3415
    :cond_675
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3416
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_68a

    .line 3417
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3424
    :cond_68a
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_6c4

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v0, :cond_6c4

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v0, :cond_6c4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_6c4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_6c4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_6c4

    .line 3428
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3433
    :goto_6ae
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    if-eqz v0, :cond_6d4

    .line 3434
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputLanguageId()S

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6d0

    .line 3435
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 3442
    :goto_6bf
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendInputLanguage()V

    goto/16 :goto_95

    .line 3430
    :cond_6c4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_6ae

    .line 3437
    :cond_6d0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreForcedCapslock()V

    goto :goto_6bf

    .line 3440
    :cond_6d4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    goto :goto_6bf

    .line 3446
    :sswitch_6d8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showInputLanguageSelectOptionMenu()V

    goto/16 :goto_95

    .line 3451
    :sswitch_6dd
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3452
    if-eqz v0, :cond_95

    .line 3453
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    if-nez v1, :cond_95

    .line 3454
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_95

    .line 3465
    :sswitch_6f0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleClose()V

    goto/16 :goto_95

    .line 3479
    :sswitch_6f5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v0

    .line 3480
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_712

    .line 3481
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_70c

    .line 3482
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_95

    .line 3483
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->popupMiniKeyboard()Z

    goto/16 :goto_95

    .line 3486
    :cond_70c
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleModeChange([IZ)V

    goto/16 :goto_95

    .line 3491
    :cond_712
    :sswitch_712
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3492
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_71e

    .line 3493
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 3495
    :cond_71e
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isEditorHasText(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEditorHasText:Z

    .line 3496
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3497
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3498
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    goto/16 :goto_95

    .line 3503
    :sswitch_742
    const v0, 0x1020020

    invoke-interface {v2, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3504
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 3505
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_95

    .line 3506
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_95

    .line 3510
    :sswitch_756
    const v0, 0x1020021

    invoke-interface {v2, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3511
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 3512
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_95

    .line 3513
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_95

    .line 3517
    :sswitch_76a
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 3518
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3519
    if-eqz v0, :cond_95

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_95

    .line 3520
    const v0, 0x1020022

    invoke-interface {v2, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3521
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 3522
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_95

    .line 3523
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_95

    .line 3528
    :sswitch_792
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_79d

    .line 3529
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3531
    :cond_79d
    const v0, 0x1020029

    invoke-interface {v2, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3532
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getpreInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3533
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getpreInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    goto/16 :goto_95

    .line 3537
    :sswitch_7be
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    if-eqz v0, :cond_7d6

    .line 3538
    const v0, 0x1020029

    invoke-interface {v2, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3539
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 3544
    :goto_7cb
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_95

    .line 3545
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_95

    .line 3541
    :cond_7d6
    const v0, 0x1020028

    invoke-interface {v2, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    goto :goto_7cb

    .line 3550
    :sswitch_7e0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3551
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_7ec

    .line 3552
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 3554
    :cond_7ec
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onDownUpKeyEvent(I)V

    goto/16 :goto_95

    .line 3557
    :sswitch_7f3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3558
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_7ff

    .line 3559
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 3561
    :cond_7ff
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onDownUpKeyEvent(I)V

    goto/16 :goto_95

    .line 3564
    :sswitch_806
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3565
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_812

    .line 3566
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 3568
    :cond_812
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onDownUpKeyEvent(I)V

    goto/16 :goto_95

    .line 3571
    :sswitch_819
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3572
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_825

    .line 3573
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 3575
    :cond_825
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onDownUpKeyEvent(I)V

    goto/16 :goto_95

    .line 3580
    :sswitch_82c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_95

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    if-nez v0, :cond_95

    .line 3581
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleSettings()V

    goto/16 :goto_95

    .line 3598
    :sswitch_83e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsInputMethodOptMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_862

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-nez v0, :cond_862

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_862

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_862

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_862

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-eqz v0, :cond_871

    .line 3605
    :cond_862
    const/16 v0, 0x30

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x30

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleCharacter(I[I)V

    goto/16 :goto_95

    .line 3607
    :cond_871
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleT9OnOff()V

    goto/16 :goto_95

    .line 3628
    :sswitch_876
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_88f

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_88f

    .line 3629
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isStartedHwrTimer()Z

    move-result v0

    if-eqz v0, :cond_8a4

    .line 3630
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->finishRecognitionAndCommit()V

    .line 3636
    :cond_88f
    :goto_88f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_89f

    .line 3637
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 3639
    :cond_89f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleBackspace()V

    goto/16 :goto_95

    .line 3631
    :cond_8a4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_88f

    .line 3632
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->finishRecognition()V

    goto :goto_88f

    .line 3655
    :sswitch_8b0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto/16 :goto_95

    .line 3668
    :sswitch_8b5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8c1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_95

    .line 3669
    :cond_8c1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleClose()V

    goto/16 :goto_95

    .line 3674
    :sswitch_8c6
    const/16 v0, -0x68

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleMoveSymbolPage(I)V

    goto/16 :goto_95

    .line 3679
    :sswitch_8cd
    const/16 v0, -0x69

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleMoveSymbolPage(I)V

    goto/16 :goto_95

    .line 3682
    :sswitch_8d4
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v2

    if-eqz v2, :cond_8df

    .line 3683
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3686
    :cond_8df
    const/4 v2, 0x2

    if-ne v1, v2, :cond_8ee

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_95

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_95

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_95

    .line 3690
    :cond_8ee
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3691
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3692
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_909

    .line 3693
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3695
    :cond_909
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_95

    .line 3699
    :sswitch_911
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v2

    if-eqz v2, :cond_91c

    .line 3700
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3703
    :cond_91c
    const/4 v2, 0x2

    if-ne v1, v2, :cond_92b

    const/16 v1, 0x2000

    if-eq v0, v1, :cond_95

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_95

    const/16 v1, 0x3000

    if-eq v0, v1, :cond_95

    .line 3707
    :cond_92b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3708
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3709
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_946

    .line 3710
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3712
    :cond_946
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_95

    .line 3717
    :sswitch_94e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_960

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_95

    .line 3718
    :cond_960
    const/16 v0, -0x6b

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleInputEmailAddress(I)V

    goto/16 :goto_95

    .line 3722
    :sswitch_967
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_979

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_95

    .line 3723
    :cond_979
    const/16 v0, -0x6c

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleInputEmailAddress(I)V

    goto/16 :goto_95

    .line 3727
    :sswitch_980
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMultiLineEditorflag()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 3728
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 3729
    if-eqz v2, :cond_994

    .line 3731
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3733
    :cond_994
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_95

    .line 3737
    :sswitch_99c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 3738
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3739
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3740
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_9c6

    .line 3741
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3743
    :cond_9c6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3744
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_95

    .line 3745
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    goto/16 :goto_95

    .line 3752
    :sswitch_9dc
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_9f5

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_9f5

    .line 3753
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isStartedHwrTimer()Z

    move-result v0

    if-eqz v0, :cond_a28

    .line 3754
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->finishRecognitionAndCommit()V

    .line 3760
    :cond_9f5
    :goto_9f5
    const/16 v0, 0x20

    if-ne p1, v0, :cond_a34

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_a34

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a34

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eqz v0, :cond_a34

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_a34

    .line 3764
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3766
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_95

    .line 3767
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto/16 :goto_95

    .line 3755
    :cond_a28
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_9f5

    .line 3756
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->finishRecognition()V

    goto :goto_9f5

    .line 3773
    :cond_a34
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_a3f

    .line 3774
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 3778
    :cond_a3f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_a4f

    .line 3779
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 3782
    :cond_a4f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 3783
    if-nez v0, :cond_acc

    const/4 v0, 0x0

    :goto_a56
    const/high16 v3, -0x100

    and-int/2addr v0, v3

    .line 3784
    if-eqz v2, :cond_92

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoAppendOn()Z

    move-result v3

    if-eqz v3, :cond_92

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isMultitapMode()Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v3

    if-nez v3, :cond_92

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v3

    if-nez v3, :cond_92

    const/high16 v3, 0x100

    and-int/2addr v3, v0

    if-nez v3, :cond_92

    const/high16 v3, 0x200

    and-int/2addr v3, v0

    if-nez v3, :cond_92

    const/high16 v3, 0x400

    and-int/2addr v0, v3

    if-nez v0, :cond_92

    const/4 v0, 0x2

    if-eq v1, v0, :cond_92

    const/4 v0, 0x3

    if-eq v1, v0, :cond_92

    .line 3792
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3793
    if-eqz v0, :cond_92

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_92

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 3795
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLastWordBeforeCorsor()Ljava/lang/String;

    move-result-object v0

    .line 3796
    if-eqz v0, :cond_92

    .line 3797
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v0

    .line 3798
    array-length v1, v0

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWNoteWordDone([SS)S

    move-result v1

    .line 3799
    if-eqz v1, :cond_abf

    .line 3801
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initRUDB()S

    move-result v1

    .line 3802
    if-eqz v1, :cond_acf

    .line 3811
    :cond_abf
    :goto_abf
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->writeDBdataToFile(B)V

    goto/16 :goto_92

    .line 3783
    :cond_acc
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_a56

    .line 3805
    :cond_acf
    array-length v1, v0

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWNoteWordDone([SS)S

    move-result v0

    .line 3806
    if-eqz v0, :cond_abf

    goto :goto_abf

    .line 3833
    :cond_ad8
    const/4 v0, 0x0

    goto/16 :goto_c8

    :cond_adb
    move v0, v1

    goto/16 :goto_49c

    :cond_ade
    move v0, v1

    goto/16 :goto_435

    :cond_ae1
    move v0, v1

    goto/16 :goto_39d

    :cond_ae4
    move v0, v1

    goto/16 :goto_2ff

    :cond_ae7
    move v0, v1

    goto/16 :goto_261

    .line 2956
    :sswitch_data_aea
    .sparse-switch
        -0x136 -> :sswitch_db
        -0x134 -> :sswitch_819
        -0x133 -> :sswitch_806
        -0x132 -> :sswitch_7f3
        -0x131 -> :sswitch_7e0
        -0x130 -> :sswitch_7be
        -0x12f -> :sswitch_792
        -0x12e -> :sswitch_76a
        -0x12d -> :sswitch_756
        -0x12c -> :sswitch_742
        -0xd3 -> :sswitch_6dd
        -0xa2 -> :sswitch_5df
        -0xa1 -> :sswitch_4f4
        -0x98 -> :sswitch_203
        -0x97 -> :sswitch_1eb
        -0x96 -> :sswitch_1d3
        -0x95 -> :sswitch_1bb
        -0x94 -> :sswitch_1a4
        -0x93 -> :sswitch_18d
        -0x92 -> :sswitch_176
        -0x91 -> :sswitch_15f
        -0x90 -> :sswitch_148
        -0x8f -> :sswitch_131
        -0x8e -> :sswitch_11a
        -0x8d -> :sswitch_f6
        -0x8a -> :sswitch_712
        -0x89 -> :sswitch_469
        -0x88 -> :sswitch_3f5
        -0x87 -> :sswitch_357
        -0x86 -> :sswitch_2b9
        -0x85 -> :sswitch_21b
        -0x7c -> :sswitch_99c
        -0x7b -> :sswitch_95
        -0x78 -> :sswitch_980
        -0x76 -> :sswitch_6d8
        -0x72 -> :sswitch_83e
        -0x71 -> :sswitch_6f0
        -0x6f -> :sswitch_95
        -0x6e -> :sswitch_911
        -0x6d -> :sswitch_8d4
        -0x6c -> :sswitch_967
        -0x6b -> :sswitch_94e
        -0x6a -> :sswitch_8cd
        -0x69 -> :sswitch_8cd
        -0x68 -> :sswitch_8c6
        -0x67 -> :sswitch_82c
        -0x66 -> :sswitch_6f5
        -0x65 -> :sswitch_8b0
        -0x64 -> :sswitch_6dd
        -0x5 -> :sswitch_876
        -0x3 -> :sswitch_8b5
        -0x1 -> :sswitch_95
        0xa -> :sswitch_9dc
        0x20 -> :sswitch_9dc
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 13
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v9, 0xa

    const/16 v8, -0xff

    const/4 v5, 0x0

    const/16 v7, -0xa1

    const/4 v4, 0x1

    .line 1125
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-le v6, v4, :cond_13

    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWPopupShown:Z

    if-eqz v6, :cond_13

    .line 1274
    :cond_12
    :goto_12
    return v4

    .line 1128
    :cond_13
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWCtrlPressed:Z

    if-nez v6, :cond_1d

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 1129
    :cond_1d
    const/16 v6, 0x1d

    if-eq p1, v6, :cond_2d

    const/16 v6, 0x34

    if-eq p1, v6, :cond_2d

    const/16 v6, 0x1f

    if-eq p1, v6, :cond_2d

    const/16 v6, 0x32

    if-ne p1, v6, :cond_32

    .line 1131
    :cond_2d
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_12

    .line 1135
    :cond_32
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v6

    if-nez v6, :cond_47

    const/16 v6, 0x42

    if-ne p1, v6, :cond_47

    .line 1136
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_12

    .line 1139
    :cond_47
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputLanguageId()S

    move-result v3

    .line 1140
    .local v3, inputLangID:S
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCountryCode()I

    move-result v1

    .line 1141
    .local v1, countryCode:I
    sparse-switch p1, :sswitch_data_156

    .line 1267
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltGrPressed()Z

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getKeycodeFromKeyEvent(IZZ)I

    move-result v0

    .line 1268
    .local v0, convertedCode:I
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v5

    if-eqz v5, :cond_6f

    if-eq v0, p1, :cond_6f

    .line 1269
    invoke-direct {p0, v0, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->HWKeyProcess(ILandroid/view/KeyEvent;)V

    goto :goto_12

    .line 1151
    .end local v0           #convertedCode:I
    :sswitch_6c
    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 1274
    :cond_6f
    :goto_6f
    :sswitch_6f
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_12

    .line 1154
    :sswitch_74
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 1155
    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList(Z)V

    goto :goto_6f

    .line 1158
    :sswitch_7b
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 1159
    new-array v6, v4, [I

    aput v9, v6, v5

    invoke-virtual {p0, v9, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_12

    .line 1164
    :sswitch_89
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 1165
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 1166
    new-array v6, v4, [I

    aput v7, v6, v5

    invoke-virtual {p0, v7, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto/16 :goto_12

    .line 1168
    :cond_9e
    const/16 v6, 0x20

    new-array v7, v4, [I

    const/16 v8, 0x20

    aput v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto/16 :goto_12

    .line 1174
    :sswitch_ab
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 1175
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1176
    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v5, :cond_c0

    .line 1177
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_12

    .line 1179
    :cond_c0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto/16 :goto_12

    .line 1186
    :sswitch_c5
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 1187
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v4, :cond_6f

    sget-boolean v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v4, :cond_6f

    .line 1188
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startListening(Z)V

    goto :goto_6f

    .line 1193
    :sswitch_d7
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 1194
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 1195
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsUmlautOn:Z

    if-nez v6, :cond_ea

    :goto_e7
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsUmlautOn:Z

    goto :goto_6f

    :cond_ea
    move v4, v5

    goto :goto_e7

    .line 1204
    :sswitch_ec
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWShiftPressed:Z

    goto :goto_6f

    .line 1207
    :sswitch_ef
    invoke-direct {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setUmlautSymbol(I)V

    .line 1208
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isThisKeyEnable(I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1209
    new-array v6, v4, [I

    aput v7, v6, v5

    invoke-virtual {p0, v7, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[IZ)V

    goto/16 :goto_12

    .line 1213
    :sswitch_103
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWCtrlPressed:Z

    goto/16 :goto_6f

    .line 1216
    :sswitch_107
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 1218
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_188

    goto/16 :goto_6f

    .line 1229
    :sswitch_116
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWCtrlPressed:Z

    goto/16 :goto_6f

    .line 1221
    :sswitch_11a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 1222
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_12

    .line 1223
    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_12

    .line 1232
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :sswitch_125
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v5

    if-nez v5, :cond_12

    .line 1233
    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v5, :cond_134

    .line 1234
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_12

    .line 1236
    :cond_134
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto/16 :goto_12

    .line 1243
    :sswitch_139
    new-array v4, v4, [I

    aput v7, v4, v5

    invoke-virtual {p0, v7, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto/16 :goto_6f

    .line 1252
    :sswitch_142
    invoke-direct {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setUmlautSymbol(I)V

    .line 1253
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isThisKeyEnable(I)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1254
    new-array v6, v4, [I

    aput v7, v6, v5

    invoke-virtual {p0, v7, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[IZ)V

    goto/16 :goto_12

    .line 1141
    :sswitch_data_156
    .sparse-switch
        0x0 -> :sswitch_107
        0x4 -> :sswitch_74
        0x3b -> :sswitch_ec
        0x3c -> :sswitch_ec
        0x3e -> :sswitch_89
        0x42 -> :sswitch_7b
        0x52 -> :sswitch_6c
        0x62 -> :sswitch_d7
        0x65 -> :sswitch_c5
        0x73 -> :sswitch_ab
        0xd9 -> :sswitch_103
        0xda -> :sswitch_ef
    .end sparse-switch

    .line 1218
    :sswitch_data_188
    .sparse-switch
        0x1d -> :sswitch_116
        0x3a -> :sswitch_125
        0x61 -> :sswitch_6f
        0x68 -> :sswitch_6f
        0x6d -> :sswitch_6f
        0x6e -> :sswitch_6f
        0x6f -> :sswitch_11a
        0x7a -> :sswitch_139
        0x7b -> :sswitch_6f
        0xda -> :sswitch_142
    .end sparse-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 1412
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1420
    sparse-switch p1, :sswitch_data_76

    .line 1487
    :cond_4
    :goto_4
    :sswitch_4
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_8
    return v1

    .line 1432
    :sswitch_9
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 1433
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1434
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 1436
    :cond_19
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v1, :cond_4

    .line 1437
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleBack()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1439
    const/4 v1, 0x1

    goto :goto_8

    .line 1452
    :sswitch_2d
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_48

    .line 1453
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1454
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_48

    .line 1455
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1456
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1457
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 1461
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_48
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsVisibleWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 1468
    :sswitch_4f
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWShiftPressed:Z

    .line 1469
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPressedShiftOnCapsLock:Z

    if-nez v1, :cond_5b

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isForcedCapsLockForGreek()Z

    move-result v1

    if-eqz v1, :cond_61

    .line 1470
    :cond_5b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 1474
    :goto_5e
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPressedShiftOnCapsLock:Z

    goto :goto_4

    .line 1472
    :cond_61
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_5e

    .line 1477
    :sswitch_65
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1479
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v1

    packed-switch v1, :pswitch_data_a0

    goto :goto_4

    .line 1481
    :pswitch_73
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsHWCtrlPressed:Z

    goto :goto_4

    .line 1420
    :sswitch_data_76
    .sparse-switch
        0x0 -> :sswitch_65
        0x1 -> :sswitch_4
        0x2 -> :sswitch_4
        0x3 -> :sswitch_4
        0x4 -> :sswitch_9
        0x5 -> :sswitch_4
        0x6 -> :sswitch_4
        0x3b -> :sswitch_4f
        0x3c -> :sswitch_4f
        0x52 -> :sswitch_2d
    .end sparse-switch

    .line 1479
    :pswitch_data_a0
    .packed-switch 0x1d
        :pswitch_73
    .end packed-switch
.end method

.method public onPress(I)V
    .registers 8
    .parameter "primaryCode"

    .prologue
    const/4 v5, -0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5474
    if-nez p1, :cond_6

    .line 5515
    :cond_5
    :goto_5
    return-void

    .line 5475
    :cond_6
    const/4 v0, -0x1

    if-ne p1, v0, :cond_35

    .line 5477
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputLanguageId()S

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2a

    .line 5479
    :cond_27
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleShiftkey()V

    .line 5481
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-ne v0, v4, :cond_88

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShiftPressed(Z)V

    .line 5485
    :cond_35
    :goto_35
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    if-nez v0, :cond_5

    .line 5490
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isThisKeyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 5491
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundNVibrateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundNVibrateHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 5493
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundNVibrateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundNVibrateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 5497
    :cond_58
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    if-eqz v0, :cond_8e

    const/16 v0, 0x20

    if-eq p1, v0, :cond_8e

    .line 5498
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    .line 5503
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isMultitapMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5504
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5505
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 5506
    if-gez p1, :cond_5

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5

    if-eq p1, v5, :cond_5

    .line 5507
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    goto/16 :goto_5

    .line 5482
    :cond_88
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShiftPressed(Z)V

    goto :goto_35

    .line 5499
    :cond_8e
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    if-eqz v0, :cond_62

    if-eq p1, v5, :cond_62

    .line 5500
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    goto :goto_62
.end method

.method public onRelease(I)V
    .registers 3
    .parameter "primaryCode"

    .prologue
    .line 5451
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRussianAlphaKey(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 5452
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isInMultiTap()Z

    move-result v0

    if-nez v0, :cond_2d

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2d

    const/4 v0, -0x5

    if-eq p1, v0, :cond_2d

    const/16 v0, -0x72

    if-eq p1, v0, :cond_2d

    .line 5456
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearLastKey()V

    .line 5460
    :cond_2d
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isFunctionKey(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 5461
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastInputKeyCodeForOnUpdateSelection:I

    .line 5463
    :cond_35
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1494
    if-eqz p2, :cond_42

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mChangeConfigRequested:Z

    if-eqz v0, :cond_42

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    .line 1495
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mChangeConfigRequested:Z

    .line 1496
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-nez v0, :cond_14

    .line 1497
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onCreateInputView()Landroid/view/View;

    .line 1499
    :cond_14
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlternativeChar:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 1500
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1501
    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1502
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlternativeChar:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlternativeChar:Ljava/lang/String;

    .line 1506
    :cond_27
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1507
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1509
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_44

    :goto_3c
    sput-boolean v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    .line 1511
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1512
    return-void

    :cond_42
    move v0, v2

    .line 1494
    goto :goto_9

    :cond_44
    move v1, v2

    .line 1509
    goto :goto_3c
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 8
    .parameter "info"
    .parameter "restarting"

    .prologue
    .line 1519
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v2, 0xff0

    .line 1520
    .local v1, variation:I
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditinfo:Landroid/view/inputmethod/EditorInfo;

    .line 1521
    iput-boolean p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestarting:Z

    .line 1522
    const/16 v2, 0xa0

    if-eq v1, v2, :cond_16

    if-nez v1, :cond_12

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestarting:Z

    if-nez v2, :cond_16

    :cond_12
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v2, :cond_2a

    .line 1524
    :cond_16
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsInputViewhandler:Z

    if-nez v2, :cond_29

    .line 1525
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1526
    .local v0, mHandler:Landroid/os/Handler;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsInputViewhandler:Z

    .line 1527
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->delayStartInputView:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1532
    .end local v0           #mHandler:Landroid/os/Handler;
    :cond_29
    :goto_29
    return-void

    .line 1530
    :cond_2a
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditinfo:Landroid/view/inputmethod/EditorInfo;

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestarting:Z

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onStartInputViewContinue(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_29
.end method

.method public onStartInputViewContinue(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 13
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x1

    const/4 v4, -0x1

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1535
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v1, 0xfff000

    and-int/2addr v0, v1

    .line 1537
    and-int/2addr v0, v9

    if-eqz v0, :cond_24c

    if-eqz p2, :cond_24c

    move v1, v2

    .line 1539
    :goto_12
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 1540
    if-eqz v0, :cond_261

    .line 1541
    const-string v5, "com.google.android.talk"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24f

    .line 1542
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsGoogleTalk:Z

    .line 1554
    :goto_20
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-nez v0, :cond_27

    .line 1555
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onCreateInputView()Landroid/view/View;

    .line 1558
    :cond_27
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    if-eqz v0, :cond_30

    .line 1561
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->onStartInputView()V

    .line 1563
    :cond_30
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 1564
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 1566
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1567
    if-eqz v0, :cond_27b

    .line 1568
    const-string v6, "NoSetting"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_267

    .line 1569
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    .line 1570
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    .line 1586
    :goto_47
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getBkInputMethodType()I

    move-result v0

    if-eq v0, v4, :cond_63

    .line 1587
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getBkInputMethodType()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    .line 1588
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setBkInputMethodType(I)V

    .line 1591
    :cond_63
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 1592
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOldLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 1593
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOldLocale:Ljava/util/Locale;

    .line 1594
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 1598
    :cond_7f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_88

    .line 1599
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setPreviewEnabled(Z)V

    .line 1604
    :cond_88
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPredictionOn(Z)V

    .line 1605
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setIsEditorAutoCompletion(Z)V

    .line 1606
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setIsEditorMessage(Z)V

    .line 1607
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 1608
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputMethodOptMenuEnabled(Z)V

    .line 1609
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLangOptMenuEnabled(Z)V

    .line 1610
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setMultiLineEditorflag(Z)V

    .line 1611
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setFlagIsSoftkeyShown(Z)V

    .line 1612
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSearchEditorflag(Z)V

    .line 1613
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    .line 1614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1615
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    .line 1616
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOnSpaceTapKey:Z

    .line 1617
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateRingerMode()V

    .line 1618
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_bb

    .line 1619
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->clearOffsetInWindow()V

    .line 1622
    :cond_bb
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSettingValues()V

    .line 1623
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_d2

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_d2

    if-nez v1, :cond_d2

    .line 1624
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSettingLanguage()V

    .line 1626
    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9Config;->DA_MODE:Z

    if-eqz v0, :cond_d2

    .line 1627
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getUmlautLanguage()V

    .line 1636
    :cond_d2
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v6, 0x400000ff

    and-int/2addr v0, v6

    .line 1638
    iget v6, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v7, 0xfff000

    and-int/2addr v6, v7

    .line 1639
    if-eqz p2, :cond_281

    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v7, :cond_281

    if-eq v0, v8, :cond_e9

    const/4 v7, 0x3

    if-ne v0, v7, :cond_281

    :cond_e9
    and-int v0, v6, v9

    if-eqz v0, :cond_281

    move v0, v2

    :goto_ee
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    .line 1643
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_10d

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v0, :cond_10d

    .line 1644
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initXT9Settings()V

    .line 1645
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-short v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    invoke-virtual {v0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initCore(S)V

    .line 1646
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputMode(I)V

    .line 1648
    :cond_10d
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputLanguageId()S

    move-result v0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_121

    .line 1649
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 1650
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 1653
    :cond_121
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setEditorType(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1658
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSettingValues()V

    .line 1659
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-ne v0, v8, :cond_141

    .line 1660
    if-eqz v5, :cond_141

    .line 1661
    invoke-interface {v5, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1662
    if-eqz v0, :cond_141

    .line 1663
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_284

    :goto_13f
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    .line 1668
    :cond_141
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->initPrivateImeOptions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_287

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_287

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_287

    if-nez v1, :cond_287

    .line 1669
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputType()V

    .line 1670
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setDefaultInputmode()V

    .line 1689
    :cond_15b
    :goto_15b
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v0, :cond_196

    .line 1710
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_169

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_169

    if-eqz v1, :cond_2dc

    .line 1711
    :cond_169
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_17a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-short v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputLanguageWithID(SI)V

    .line 1712
    :cond_17a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_189

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 1717
    :cond_189
    :goto_189
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v0

    if-eqz v0, :cond_196

    .line 1718
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 1737
    :cond_196
    if-eqz p2, :cond_1b2

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_1b2

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_1b2

    .line 1739
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v0, :cond_1b2

    .line 1740
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_1ad

    .line 1741
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 1743
    :cond_1ad
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1747
    :cond_1b2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1c4

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_1c4

    .line 1749
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->closing()V

    .line 1753
    :cond_1c4
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v0, :cond_1c8

    .line 1757
    :cond_1c8
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDeleteCount:I

    .line 1759
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_1d7

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_1d7

    if-nez v1, :cond_1d7

    .line 1760
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 1763
    :cond_1d7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_1e9

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_1e9

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_1e9

    if-nez v1, :cond_1e9

    .line 1764
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3, v3, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 1767
    :cond_1e9
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_207

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_207

    if-nez v1, :cond_207

    .line 1768
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    .line 1769
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    .line 1772
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v0, :cond_207

    .line 1773
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 1774
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_207

    .line 1775
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 1779
    :cond_207
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v0

    if-eqz v0, :cond_2e3

    .line 1780
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethod(I)V

    .line 1781
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 1799
    :cond_21d
    :goto_21d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_226

    .line 1800
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->initSymbolHistory()V

    .line 1804
    :cond_226
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_23c

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_23c

    .line 1805
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    .line 1807
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    if-eqz v0, :cond_321

    .line 1808
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v0, :cond_31c

    .line 1809
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 1818
    :cond_23c
    :goto_23c
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1819
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-eqz v0, :cond_247

    .line 1820
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    .line 1822
    :cond_247
    if-nez p2, :cond_24b

    .line 1823
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    .line 1825
    :cond_24b
    return-void

    :cond_24c
    move v1, v3

    .line 1537
    goto/16 :goto_12

    .line 1543
    :cond_24f
    const-string v5, "com.android.email"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25b

    .line 1544
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmailEditor:Z

    goto/16 :goto_20

    .line 1546
    :cond_25b
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsGoogleTalk:Z

    .line 1547
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmailEditor:Z

    goto/16 :goto_20

    .line 1550
    :cond_261
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsGoogleTalk:Z

    .line 1551
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmailEditor:Z

    goto/16 :goto_20

    .line 1571
    :cond_267
    const-string v6, "EngToggle"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_275

    .line 1572
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    .line 1573
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    goto/16 :goto_47

    .line 1576
    :cond_275
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    .line 1577
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    goto/16 :goto_47

    .line 1581
    :cond_27b
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    .line 1582
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    goto/16 :goto_47

    :cond_281
    move v0, v3

    .line 1639
    goto/16 :goto_ee

    :cond_284
    move v2, v3

    .line 1663
    goto/16 :goto_13f

    .line 1671
    :cond_287
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-ne v0, v8, :cond_15b

    .line 1674
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v5

    move v2, v3

    :goto_296
    if-ge v2, v5, :cond_2b1

    .line 1675
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    const/16 v6, 0x12

    if-ne v0, v6, :cond_326

    move v0, v2

    .line 1674
    :goto_2ad
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    goto :goto_296

    .line 1680
    :cond_2b1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c6

    .line 1681
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1683
    :cond_2c6
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    if-ne v0, v4, :cond_15b

    .line 1684
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    goto/16 :goto_15b

    .line 1714
    :cond_2dc
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    goto/16 :goto_189

    .line 1783
    :cond_2e3
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v0, :cond_308

    .line 1785
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v0, :cond_21d

    .line 1786
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getDefaultInputmethod()I

    move-result v0

    if-eqz v0, :cond_2ff

    .line 1787
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentInputMethodType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethod(I)V

    .line 1788
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setDefaultInputmehtod()V

    goto/16 :goto_21d

    .line 1790
    :cond_2ff
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentInputMethodType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto/16 :goto_21d

    .line 1794
    :cond_308
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentInputMethodType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethod(I)V

    .line 1795
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_21d

    .line 1811
    :cond_31c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    goto/16 :goto_23c

    .line 1814
    :cond_321
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_23c

    :cond_326
    move v0, v4

    goto :goto_2ad
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .registers 6
    .parameter "text"

    .prologue
    .line 7955
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v2, :cond_f

    sget-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    if-eqz v2, :cond_f

    .line 7956
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitVoiceInput()V

    .line 7958
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 7959
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_16

    .line 7981
    :cond_15
    :goto_15
    return-void

    .line 7960
    :cond_16
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4c

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isInMultiTap()Z

    move-result v2

    if-nez v2, :cond_4c

    .line 7962
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 7970
    :cond_29
    :goto_29
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 7971
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7973
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 7974
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7976
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v2, v3, :cond_70

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 7977
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto :goto_15

    .line 7963
    :cond_4c
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v2

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v2

    if-lez v2, :cond_29

    .line 7964
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v0

    .line 7965
    .local v0, ActiveIndex:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->noteWordDone(I)V

    .line 7966
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->selectWord(I)V

    .line 7967
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    goto :goto_29

    .line 7978
    .end local v0           #ActiveIndex:I
    :cond_70
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v2, :cond_15

    .line 7979
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_15
.end method

.method public onUpdateSelection(IIIIII)V
    .registers 12
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 1878
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1880
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_35

    .line 1881
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    if-eqz v3, :cond_123

    .line 1882
    if-ne p3, p4, :cond_1f

    .line 1883
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    .line 1884
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_1f

    .line 1885
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 1897
    :cond_1f
    :goto_1f
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEditorHasText:Z

    if-eqz v3, :cond_133

    .line 1898
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isEditorHasText(II)Z

    move-result v3

    if-nez v3, :cond_35

    .line 1899
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEditorHasText:Z

    .line 1900
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_35

    .line 1901
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 1914
    :cond_35
    :goto_35
    if-eq p3, p4, :cond_147

    const/4 v3, 0x1

    :goto_38
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    .line 1916
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_74

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_74

    .line 1918
    const/4 v2, -0x1

    .line 1919
    .local v2, www_index:I
    const/4 v0, -0x1

    .line 1920
    .local v0, dotLocale_index:I
    if-nez p3, :cond_14a

    .line 1921
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    if-nez v3, :cond_5e

    .line 1922
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    .line 1923
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getCurrentWwwdotKeyIndex()I

    move-result v2

    .line 1924
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getCurrentDotCoDotLocaleKeyIndex()I

    move-result v0

    .line 1933
    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_74

    .line 1934
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6c

    .line 1935
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateKey(I)V

    .line 1937
    :cond_6c
    const/4 v3, -0x1

    if-eq v0, v3, :cond_74

    .line 1938
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateKey(I)V

    .line 1945
    .end local v0           #dotLocale_index:I
    .end local v2           #www_index:I
    :cond_74
    if-eqz p1, :cond_16e

    if-nez p3, :cond_16e

    if-nez p4, :cond_16e

    const/4 v3, -0x1

    if-ne p5, v3, :cond_16e

    const/4 v3, -0x1

    if-ne p6, v3, :cond_16e

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsGoogleTalk:Z

    if-eqz v3, :cond_16e

    .line 1948
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1949
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 1950
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 1952
    :cond_97
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_15f

    .line 1953
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_a8

    .line 1954
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->finishRecognition()V

    .line 1974
    :cond_a8
    :goto_a8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_d3

    if-ne p1, p2, :cond_d3

    if-ne p3, p4, :cond_d3

    if-eq p5, p6, :cond_d3

    if-ne p6, p2, :cond_d3

    if-eq p1, p3, :cond_d3

    if-eq p2, p4, :cond_d3

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    if-nez v3, :cond_d3

    .line 1979
    if-eqz v1, :cond_d3

    .line 1980
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearCurrentComposing()V

    .line 1981
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_d0

    .line 1982
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 1984
    :cond_d0
    invoke-interface {v1, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 1988
    :cond_d3
    const/4 v3, -0x1

    if-eq p6, v3, :cond_191

    if-eq p4, p6, :cond_191

    .line 1989
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 1990
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_e4

    .line 1991
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 1993
    :cond_e4
    if-eqz v1, :cond_e9

    .line 1994
    invoke-interface {v1, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2044
    :cond_e9
    :goto_e9
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-nez v3, :cond_108

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_108

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isInMultiTap()Z

    move-result v3

    if-nez v3, :cond_108

    .line 2045
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isShiftPressed()Z

    move-result v3

    if-nez v3, :cond_108

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    .line 2048
    :cond_108
    const/16 v3, -0xff

    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastInputKeyCodeForOnUpdateSelection:I

    .line 2049
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 2052
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v3, :cond_122

    sget-boolean v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v3, :cond_122

    .line 2053
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mShowingVoiceSuggestions:Z

    if-eqz v3, :cond_122

    .line 2054
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mImmediatelyAfterVoiceSuggestions:Z

    if-eqz v3, :cond_262

    .line 2055
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mImmediatelyAfterVoiceSuggestions:Z

    .line 2062
    :cond_122
    :goto_122
    return-void

    .line 1889
    :cond_123
    if-eq p3, p4, :cond_1f

    .line 1890
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    .line 1891
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_1f

    .line 1892
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_1f

    .line 1905
    :cond_133
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isEditorHasText(II)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1906
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEditorHasText:Z

    .line 1907
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_35

    .line 1908
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_35

    .line 1914
    :cond_147
    const/4 v3, 0x0

    goto/16 :goto_38

    .line 1927
    .restart local v0       #dotLocale_index:I
    .restart local v2       #www_index:I
    :cond_14a
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    if-eqz v3, :cond_5e

    .line 1928
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    .line 1929
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getCurrentWwwdotKeyIndex()I

    move-result v2

    .line 1930
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getCurrentDotCoDotLocaleKeyIndex()I

    move-result v0

    goto/16 :goto_5e

    .line 1957
    .end local v0           #dotLocale_index:I
    .end local v2           #www_index:I
    :cond_15f
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_a8

    .line 1958
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsGoogleTalk:Z

    if-eqz v3, :cond_a8

    .line 1959
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    goto/16 :goto_a8

    .line 1963
    :cond_16e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_a8

    if-ne p1, p2, :cond_a8

    if-ne p4, p2, :cond_a8

    if-eq p5, p6, :cond_a8

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a8

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmailEditor:Z

    if-nez v3, :cond_a8

    .line 1968
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 1969
    if-eqz v1, :cond_a8

    .line 1970
    invoke-interface {v1, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_a8

    .line 1996
    :cond_191
    const/4 v3, -0x1

    if-ne p6, v3, :cond_1c7

    if-nez p4, :cond_1c7

    .line 1997
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_19f

    .line 1998
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 2001
    :cond_19f
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastInputKeyCodeForOnUpdateSelection:I

    const/16 v4, -0xff

    if-ne v3, v4, :cond_e9

    .line 2002
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-eqz v3, :cond_1ba

    .line 2003
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2004
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_e9

    .line 2005
    :cond_1ba
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    if-nez v3, :cond_e9

    .line 2006
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto/16 :goto_e9

    .line 2009
    :cond_1c7
    const/4 v3, -0x1

    if-ne p5, v3, :cond_21d

    sub-int v3, p4, p2

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v3, v4, :cond_21d

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_21d

    .line 2010
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v3

    if-eqz v3, :cond_1f7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_1f7

    .line 2011
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2012
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_1f7

    .line 2013
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 2016
    :cond_1f7
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-eqz v3, :cond_20c

    .line 2017
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2018
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_e9

    .line 2020
    :cond_20c
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_e9

    .line 2021
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 2022
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_e9

    .line 2025
    :cond_21d
    if-eq p3, p4, :cond_e9

    .line 2026
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    if-nez v3, :cond_23c

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_23c

    .line 2027
    if-eqz v1, :cond_e9

    .line 2028
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2029
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 2030
    invoke-interface {v1, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_e9

    .line 2032
    :cond_23c
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e9

    .line 2033
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-eqz v3, :cond_e9

    .line 2034
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2035
    if-eqz v1, :cond_25a

    .line 2036
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2037
    invoke-interface {v1, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2039
    :cond_25a
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_e9

    .line 2058
    :cond_262
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mShowingVoiceSuggestions:Z

    goto/16 :goto_122
.end method

.method public onVoiceResults(Ljava/util/List;Ljava/util/Map;)V
    .registers 6
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
    .line 9107
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, alternatives:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/CharSequence;>;>;"
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    if-nez v0, :cond_5

    .line 9113
    :goto_4
    return-void

    .line 9110
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    iput-object p1, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;->candidates:Ljava/util/List;

    .line 9111
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    iput-object p2, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;->alternatives:Ljava/util/Map;

    .line 9112
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .registers 10
    .parameter "index"
    .parameter "suggestion"

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x0

    .line 5901
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 5903
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v4

    if-eqz v4, :cond_7d

    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v4, :cond_7d

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v4, :cond_7d

    if-ltz p1, :cond_7d

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v4, v4

    if-ge p1, v4, :cond_7d

    .line 5904
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v0, v4, p1

    .line 5905
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCommitedLength:I

    .line 5906
    if-eqz v1, :cond_2b

    .line 5907
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 5909
    :cond_2b
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v4, :cond_34

    .line 5910
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->clear()V

    .line 5922
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v4

    if-nez v4, :cond_5b

    .line 5924
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoAppendOn()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 5925
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v2

    .line 5926
    .local v2, psBuf:[S
    array-length v4, v2

    int-to-short v4, v4

    invoke-static {v2, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWNoteWordDone([SS)S

    move-result v3

    .line 5927
    .local v3, wStatus:S
    if-eqz v3, :cond_56

    .line 5929
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initRUDB()S

    move-result v3

    .line 5930
    if-eqz v3, :cond_90

    .line 5941
    .end local v2           #psBuf:[S
    .end local v3           #wStatus:S
    :cond_56
    :goto_56
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4, p1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->selectWord(I)V

    .line 5944
    :cond_5b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 5946
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v4

    if-nez v4, :cond_7c

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v4

    if-nez v4, :cond_7c

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsAutoSpace()Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 5949
    const/4 v4, 0x1

    new-array v4, v4, [I

    aput v6, v4, v5

    invoke-virtual {p0, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 5951
    :cond_7c
    return-void

    .line 5913
    .restart local p2
    :cond_7d
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_34

    .line 5914
    if-eqz v1, :cond_8a

    .line 5916
    invoke-direct {p0, v1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 5918
    :cond_8a
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_34

    .line 5933
    .end local p2
    .restart local v2       #psBuf:[S
    .restart local v3       #wStatus:S
    :cond_90
    array-length v4, v2

    int-to-short v4, v4

    invoke-static {v2, v4}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWNoteWordDone([SS)S

    move-result v3

    .line 5934
    if-eqz v3, :cond_56

    goto :goto_56
.end method

.method public playKeyClick(I)V
    .registers 4
    .parameter "primaryCode"

    .prologue
    .line 5657
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_b

    .line 5658
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v1, :cond_b

    .line 5659
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateRingerMode()V

    .line 5663
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsSoundOn()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsSilentMode()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 5664
    const/4 v0, 0x5

    .line 5665
    .local v0, sound:I
    sparse-switch p1, :sswitch_data_26

    .line 5677
    :goto_1b
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->playKeySound(I)V

    .line 5679
    .end local v0           #sound:I
    :cond_1e
    return-void

    .line 5667
    .restart local v0       #sound:I
    :sswitch_1f
    const/4 v0, 0x7

    .line 5668
    goto :goto_1b

    .line 5670
    :sswitch_21
    const/16 v0, 0x8

    .line 5671
    goto :goto_1b

    .line 5673
    :sswitch_24
    const/4 v0, 0x6

    goto :goto_1b

    .line 5665
    :sswitch_data_26
    .sparse-switch
        -0x5 -> :sswitch_1f
        0xa -> :sswitch_21
        0x20 -> :sswitch_24
    .end sparse-switch
.end method

.method public restoreForcedCapslock()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9427
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 9428
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->SENTENCES:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v0, v1, :cond_2c

    .line 9429
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 9430
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 9431
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 9446
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 9447
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 9448
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 9456
    :goto_28
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    .line 9457
    return-void

    .line 9432
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->WORDS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v0, v1, :cond_3e

    .line 9433
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 9434
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 9435
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    goto :goto_19

    .line 9436
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-eq v0, v1, :cond_19

    .line 9439
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    goto :goto_19

    .line 9442
    :cond_48
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 9443
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    goto :goto_19

    .line 9450
    :cond_4f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    goto :goto_28

    .line 9453
    :cond_53
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_28
.end method

.method restoreShiftInputMode()V
    .registers 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4832
    const-string v0, ""

    .line 4833
    const-string v1, ""

    .line 4834
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 4835
    if-eqz v2, :cond_19

    .line 4836
    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4837
    invoke-interface {v2, v6, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4840
    :cond_19
    if-eqz v0, :cond_1d

    if-nez v1, :cond_1e

    .line 4928
    :cond_1d
    :goto_1d
    return-void

    .line 4845
    :cond_1e
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    if-nez v2, :cond_1d

    .line 4849
    :cond_32
    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isShouldSetShifted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 4850
    if-eqz v2, :cond_7b

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v3

    if-nez v3, :cond_7b

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v3, :cond_7b

    .line 4851
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 4852
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 4853
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 4855
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 4857
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 4858
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 4860
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 4861
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 4865
    :goto_6f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto :goto_1d

    .line 4863
    :cond_75
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    goto :goto_6f

    .line 4866
    :cond_7b
    if-nez v2, :cond_1d

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v2, :cond_1d

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_97

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    :cond_97
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->IsOneTimeShift()Z

    move-result v0

    if-ne v0, v5, :cond_1d

    .line 4872
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 4873
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 4874
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 4875
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 4877
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 4879
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 4880
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_1d
.end method

.method public setCandidatesViewShown(Z)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8110
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-nez v0, :cond_7

    .line 8155
    :cond_6
    :goto_6
    return-void

    .line 8113
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v3

    .line 8116
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    .line 8118
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentPrivateImeOptionPrevNext()I

    move-result v0

    .line 8119
    if-nez p1, :cond_18

    if-eqz v0, :cond_83

    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_83

    move v0, v1

    .line 8121
    :goto_1f
    invoke-super {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 8122
    if-nez v0, :cond_2a

    .line 8123
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setSuggestions(Ljava/util/List;ZZB)V

    .line 8125
    :cond_2a
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v4, v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v4

    if-nez v4, :cond_3c

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v4

    if-eqz v4, :cond_85

    :cond_3c
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v4

    if-gtz v4, :cond_85

    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOnSpaceTapKey:Z

    if-eqz v4, :cond_85

    .line 8126
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateSpaceKey(Z)V

    .line 8127
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOnSpaceTapKey:Z

    .line 8133
    :cond_4f
    :goto_4f
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v4

    if-eqz v4, :cond_5e

    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v4, :cond_5e

    const/4 v2, 0x2

    :cond_5e
    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setCandidateMode(I)V

    .line 8143
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v1, :cond_6

    if-eq v0, v3, :cond_6

    .line 8144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8145
    const-string v1, "CandidateViewShownAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 8146
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v1

    .line 8147
    const-string v2, "AxT9IME.isCandidateViewShown"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8148
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendBroadcast(Landroid/content/Intent;)V

    .line 8152
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showActionPopup()V

    goto :goto_6

    :cond_83
    move v0, v2

    .line 8119
    goto :goto_1f

    .line 8128
    :cond_85
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v4, v4, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v4

    if-nez v4, :cond_97

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v4

    if-eqz v4, :cond_4f

    :cond_97
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v4

    if-lez v4, :cond_4f

    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOnSpaceTapKey:Z

    if-nez v4, :cond_4f

    .line 8129
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateSpaceKey(Z)V

    .line 8130
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOnSpaceTapKey:Z

    goto :goto_4f
.end method

.method setCapsLockOn()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2821
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v6

    if-eqz v6, :cond_21

    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v6, :cond_21

    move v1, v4

    .line 2822
    .local v1, alreadyCapslock:Z
    :goto_e
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 2823
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 2824
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-nez v6, :cond_23

    .line 2850
    :cond_20
    :goto_20
    return-void

    .end local v1           #alreadyCapslock:Z
    :cond_21
    move v1, v5

    .line 2821
    goto :goto_e

    .line 2827
    .restart local v1       #alreadyCapslock:Z
    :cond_23
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 2828
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2829
    .local v3, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    if-eqz v3, :cond_39

    .line 2830
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v3, v6}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 2832
    :cond_39
    sget-object v6, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->CAPSLOCK:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 2833
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 2834
    if-nez v1, :cond_20

    .line 2835
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v6

    if-eqz v6, :cond_89

    .line 2836
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6, v8}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectListPostShift(B)B

    .line 2837
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2838
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2839
    .local v0, InputWord:Ljava/lang/CharSequence;
    if-eqz v0, :cond_7a

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_7a

    .line 2840
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2841
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2842
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_7a

    .line 2843
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v5, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2846
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_7a
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v6

    invoke-virtual {p0, v5, v4, v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 2848
    .end local v0           #InputWord:Ljava/lang/CharSequence;
    :cond_89
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto :goto_20
.end method

.method public setComposingText(Ljava/lang/CharSequence;)Z
    .registers 4
    .parameter "text"

    .prologue
    .line 7720
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 7722
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 7723
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v1

    .line 7725
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public setCurrentComposing(Ljava/lang/StringBuilder;)V
    .registers 2
    .parameter "composing"

    .prologue
    .line 7711
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    .line 7712
    return-void
.end method

.method public setCurrentNumberSymbolsPageNumber(I)V
    .registers 2
    .parameter "Index"

    .prologue
    .line 4117
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    .line 4118
    return-void
.end method

.method public setDefaultTextInputMode()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 6636
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 6637
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 6640
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 6643
    return-void
.end method

.method public setEditorType(Landroid/view/inputmethod/EditorInfo;Z)V
    .registers 13
    .parameter
    .parameter

    .prologue
    .line 7080
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v4, v0, 0xff0

    .line 7081
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v1, 0xfff000

    and-int v5, v0, v1

    .line 7082
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, -0x100

    and-int v6, v0, v1

    .line 7083
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v1, 0x400000ff

    and-int v7, v0, v1

    .line 7084
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAction:I

    .line 7086
    const/high16 v0, 0x1

    and-int/2addr v0, v5

    if-eqz v0, :cond_291

    if-eqz p2, :cond_291

    const/4 v0, 0x1

    move v1, v0

    .line 7096
    :goto_23
    const/4 v2, -0x1

    .line 7097
    const-string v0, "ko"

    .line 7100
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v8

    move v3, v0

    :goto_2e
    if-ge v3, v8, :cond_5be

    .line 7101
    const-string v9, "ko"

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_295

    .line 7102
    add-int/lit8 v0, v3, 0x1

    .line 7108
    :goto_4a
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    if-eq v2, v0, :cond_6a

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    if-nez v0, :cond_5e

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    :cond_5e
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29a

    .line 7112
    :cond_6a
    const/4 v0, 0x1

    move v3, v0

    .line 7118
    :goto_6c
    packed-switch v7, :pswitch_data_5c2

    .line 7154
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x4000

    and-int/2addr v0, v2

    if-eqz v0, :cond_76

    .line 7158
    :cond_76
    :goto_76
    :pswitch_76
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v0, :cond_7a

    .line 7162
    :cond_7a
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_7e

    .line 7166
    :cond_7e
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoSpace(Z)V

    .line 7167
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPasswordMode(Z)V

    .line 7168
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCustomExtractViewEnabled(Z)V

    .line 7170
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    packed-switch v0, :pswitch_data_5d4

    .line 7229
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setEditorType(I)V

    .line 7230
    if-nez p2, :cond_bb

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_bb

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_bb

    if-nez v1, :cond_bb

    .line 7231
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isXt9SettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_339

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_339

    .line 7232
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7238
    :goto_b3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 7239
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 7241
    :cond_bb
    sparse-switch v4, :sswitch_data_5de

    .line 7480
    :cond_be
    :goto_be
    :sswitch_be
    const v0, 0x8000

    and-int/2addr v0, v5

    if-eqz v0, :cond_ce

    .line 7481
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_ce

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_ce

    if-nez v1, :cond_ce

    .line 7488
    :cond_ce
    const/high16 v0, 0x1

    and-int/2addr v0, v5

    if-eqz v0, :cond_eb

    .line 7489
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setIsEditorAutoCompletion(Z)V

    .line 7490
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 7491
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_eb

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_eb

    if-nez v1, :cond_eb

    .line 7492
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7497
    :cond_eb
    and-int/lit16 v0, v5, 0x4000

    if-eqz v0, :cond_123

    .line 7498
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->SENTENCES:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    .line 7500
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_123

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_123

    if-nez v1, :cond_123

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 7501
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_123

    .line 7502
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_123

    .line 7503
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_11e

    .line 7504
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 7505
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 7507
    :cond_11e
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 7512
    :cond_123
    const/high16 v0, 0x4

    and-int/2addr v0, v5

    if-eqz v0, :cond_12c

    .line 7513
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setMultiLineEditorflag(Z)V

    .line 7516
    :cond_12c
    const/high16 v0, 0x2

    and-int/2addr v0, v5

    if-eqz v0, :cond_135

    .line 7517
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setMultiLineEditorflag(Z)V

    .line 7520
    :cond_135
    and-int/lit16 v0, v5, 0x2000

    if-eqz v0, :cond_167

    .line 7521
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->WORDS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    .line 7523
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_167

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_167

    if-nez v1, :cond_167

    .line 7524
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_167

    .line 7525
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_167

    .line 7526
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_162

    .line 7527
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 7528
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 7530
    :cond_162
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 7535
    :cond_167
    and-int/lit16 v0, v5, 0x1000

    if-eqz v0, :cond_197

    .line 7537
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    .line 7538
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_197

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_197

    if-nez v1, :cond_197

    .line 7539
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_197

    .line 7540
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_197

    .line 7541
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_192

    .line 7542
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 7543
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 7545
    :cond_192
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->CAPSLOCK:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 7553
    :cond_197
    const/high16 v0, 0x200

    and-int/2addr v0, v6

    if-eqz v0, :cond_1e2

    .line 7554
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputMethodOptMenuEnabled(Z)V

    .line 7555
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLangOptMenuEnabled(Z)V

    .line 7556
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 7557
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_1e2

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_1e2

    if-nez v1, :cond_1e2

    .line 7558
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7560
    if-eqz v3, :cond_1e2

    .line 7561
    const-string v0, "en"

    .line 7562
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v2, v0

    :goto_1c4
    if-ge v2, v4, :cond_1e2

    .line 7563
    const-string v5, "en"

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_589

    .line 7564
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 7573
    :cond_1e2
    const/high16 v0, 0x400

    and-int/2addr v0, v6

    if-eqz v0, :cond_22d

    .line 7574
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputMethodOptMenuEnabled(Z)V

    .line 7575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLangOptMenuEnabled(Z)V

    .line 7576
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 7577
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_22d

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_22d

    if-nez v1, :cond_22d

    .line 7578
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7580
    if-eqz v3, :cond_22d

    .line 7581
    const-string v0, "en"

    .line 7582
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v2, v0

    :goto_20f
    if-ge v2, v4, :cond_22d

    .line 7583
    const-string v5, "en"

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58e

    .line 7584
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 7593
    :cond_22d
    const/high16 v0, 0x100

    and-int/2addr v0, v6

    if-eqz v0, :cond_278

    .line 7594
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputMethodOptMenuEnabled(Z)V

    .line 7595
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLangOptMenuEnabled(Z)V

    .line 7596
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 7597
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_278

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_278

    if-nez v1, :cond_278

    .line 7598
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7600
    if-eqz v3, :cond_278

    .line 7601
    const-string v0, "en"

    .line 7602
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    move v2, v0

    :goto_25a
    if-ge v2, v3, :cond_278

    .line 7603
    const-string v4, "en"

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_593

    .line 7604
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 7619
    :cond_278
    const/high16 v0, 0x1000

    and-int/2addr v0, v6

    if-eqz v0, :cond_598

    .line 7620
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_287

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_287

    if-nez v1, :cond_287

    .line 7640
    :cond_287
    :goto_287
    const/high16 v0, -0x8000

    and-int/2addr v0, v6

    if-eqz v0, :cond_290

    .line 7641
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCustomExtractViewEnabled(Z)V

    .line 7654
    :cond_290
    :goto_290
    return-void

    .line 7086
    :cond_291
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_23

    .line 7100
    :cond_295
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2e

    .line 7114
    :cond_29a
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_6c

    .line 7121
    :pswitch_29e
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    goto/16 :goto_76

    .line 7126
    :pswitch_2a4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    goto/16 :goto_76

    .line 7131
    :pswitch_2aa
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    goto/16 :goto_76

    .line 7140
    :pswitch_2b0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    .line 7141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSearchEditorflag(Z)V

    goto/16 :goto_76

    .line 7145
    :pswitch_2ba
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    goto/16 :goto_76

    .line 7150
    :pswitch_2c0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    goto/16 :goto_76

    .line 7174
    :pswitch_2c6
    const/16 v0, 0x20

    if-ne v4, v0, :cond_313

    .line 7185
    :cond_2ca
    :goto_2ca
    :pswitch_2ca
    const/16 v0, 0x2000

    if-ne v5, v0, :cond_31a

    .line 7195
    :cond_2ce
    :goto_2ce
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setEditorType(I)V

    .line 7196
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_2de

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_2de

    if-eqz v1, :cond_2f1

    :cond_2de
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentInputMethodType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2f1

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2f1

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2f5

    .line 7200
    :cond_2f1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCurrentNumberSymbolsPageNumber(I)V

    .line 7203
    :cond_2f5
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_290

    if-nez v1, :cond_290

    .line 7204
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_323

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    :goto_309
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentInputMethodType:I

    .line 7205
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_290

    .line 7176
    :cond_313
    const/16 v0, 0x10

    if-eq v4, v0, :cond_2ca

    .line 7178
    if-nez v4, :cond_2ca

    goto :goto_2ca

    .line 7187
    :cond_31a
    const/16 v0, 0x1000

    if-eq v5, v0, :cond_2ce

    .line 7189
    const/16 v0, 0x3000

    if-ne v5, v0, :cond_2ce

    goto :goto_2ce

    .line 7204
    :cond_323
    const/4 v0, 0x0

    goto :goto_309

    .line 7211
    :pswitch_325
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setEditorType(I)V

    .line 7212
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_290

    if-nez v1, :cond_290

    .line 7213
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_290

    .line 7234
    :cond_339
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto/16 :goto_b3

    .line 7253
    :sswitch_341
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-eqz v0, :cond_377

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_377

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_377

    if-nez v1, :cond_377

    .line 7254
    const-string v0, "en"

    .line 7255
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v2, v0

    :goto_359
    if-ge v2, v4, :cond_377

    .line 7256
    const-string v7, "en"

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_390

    .line 7257
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 7264
    :cond_377
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_387

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_387

    if-nez v1, :cond_387

    .line 7265
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7268
    :cond_387
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPasswordMode(Z)V

    .line 7269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    goto/16 :goto_be

    .line 7255
    :cond_390
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_359

    .line 7278
    :sswitch_394
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoSpace(Z)V

    .line 7280
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_be

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_be

    if-nez v1, :cond_be

    .line 7281
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_be

    .line 7282
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 7283
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_3bd

    .line 7284
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 7285
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 7287
    :cond_3bd
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    goto/16 :goto_be

    .line 7294
    :sswitch_3c4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setIsEditorMessage(Z)V

    .line 7296
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_be

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_be

    if-nez v1, :cond_be

    .line 7299
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_be

    .line 7300
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 7301
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_3ed

    .line 7302
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 7303
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 7305
    :cond_3ed
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    goto/16 :goto_be

    .line 7312
    :sswitch_3f4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setIsEditorMessage(Z)V

    .line 7314
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_be

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_be

    if-nez v1, :cond_be

    .line 7317
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_be

    .line 7318
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 7319
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_41d

    .line 7320
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 7321
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 7323
    :cond_41d
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    goto/16 :goto_be

    .line 7332
    :sswitch_424
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_be

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_be

    if-nez v1, :cond_be

    .line 7335
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_be

    .line 7336
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 7337
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_449

    .line 7338
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 7339
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 7341
    :cond_449
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    goto/16 :goto_be

    .line 7348
    :sswitch_450
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x4

    if-eq v0, v2, :cond_be

    .line 7354
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-eqz v0, :cond_48d

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_48d

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_48d

    if-nez v1, :cond_48d

    .line 7355
    const-string v0, "en"

    .line 7356
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v2, v0

    :goto_46f
    if-ge v2, v4, :cond_48d

    .line 7357
    const-string v7, "en"

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4bd

    .line 7358
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 7365
    :cond_48d
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_4a9

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_4a9

    if-nez v1, :cond_4a9

    .line 7366
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 7367
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_4a9

    .line 7368
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7371
    :cond_4a9
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_4b1

    .line 7372
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    .line 7375
    :cond_4b1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoSpace(Z)V

    .line 7376
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setEditorType(I)V

    goto/16 :goto_be

    .line 7356
    :cond_4bd
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_46f

    .line 7380
    :sswitch_4c1
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v2, 0x4

    if-eq v0, v2, :cond_be

    .line 7385
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-eqz v0, :cond_4fe

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_4fe

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_4fe

    if-nez v1, :cond_4fe

    .line 7386
    const-string v0, "en"

    .line 7387
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v2, v0

    :goto_4e0
    if-ge v2, v4, :cond_4fe

    .line 7388
    const-string v7, "en"

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_522

    .line 7389
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 7396
    :cond_4fe
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_51a

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_51a

    if-nez v1, :cond_51a

    .line 7397
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 7398
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_51a

    .line 7399
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7403
    :cond_51a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setEditorType(I)V

    goto/16 :goto_be

    .line 7387
    :cond_522
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4e0

    .line 7416
    :sswitch_526
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_be

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_be

    if-nez v1, :cond_be

    .line 7417
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v0, :cond_be

    goto/16 :goto_be

    .line 7456
    :sswitch_536
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-eqz v0, :cond_56c

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_56c

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_56c

    if-nez v1, :cond_56c

    .line 7457
    const-string v0, "en"

    .line 7458
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v4

    move v2, v0

    :goto_54e
    if-ge v2, v4, :cond_56c

    .line 7459
    const-string v7, "en"

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_585

    .line 7460
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 7467
    :cond_56c
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_57c

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_57c

    if-nez v1, :cond_57c

    .line 7468
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7471
    :cond_57c
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPasswordMode(Z)V

    .line 7472
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    goto/16 :goto_be

    .line 7458
    :cond_585
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_54e

    .line 7562
    :cond_589
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1c4

    .line 7582
    :cond_58e
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_20f

    .line 7602
    :cond_593
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_25a

    .line 7625
    :cond_598
    const/high16 v0, 0x2000

    and-int/2addr v0, v6

    if-eqz v0, :cond_5a9

    .line 7626
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_287

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_287

    if-nez v1, :cond_287

    goto/16 :goto_287

    .line 7631
    :cond_5a9
    const/high16 v0, 0x4000

    and-int/2addr v0, v6

    if-eqz v0, :cond_287

    .line 7632
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_5b8

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_5b8

    if-nez v1, :cond_5b8

    .line 7636
    :cond_5b8
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    goto/16 :goto_287

    :cond_5be
    move v0, v2

    goto/16 :goto_4a

    .line 7118
    nop

    :pswitch_data_5c2
    .packed-switch 0x0
        :pswitch_2c0
        :pswitch_76
        :pswitch_2a4
        :pswitch_2b0
        :pswitch_2ba
        :pswitch_2aa
        :pswitch_29e
    .end packed-switch

    .line 7170
    :pswitch_data_5d4
    .packed-switch 0x2
        :pswitch_2ca
        :pswitch_325
        :pswitch_2c6
    .end packed-switch

    .line 7241
    :sswitch_data_5de
    .sparse-switch
        0x0 -> :sswitch_526
        0x10 -> :sswitch_4c1
        0x20 -> :sswitch_450
        0x30 -> :sswitch_424
        0x40 -> :sswitch_3c4
        0x50 -> :sswitch_3f4
        0x60 -> :sswitch_394
        0x70 -> :sswitch_be
        0x80 -> :sswitch_341
        0x90 -> :sswitch_536
        0xa0 -> :sswitch_be
        0xb0 -> :sswitch_be
        0xc0 -> :sswitch_be
    .end sparse-switch
.end method

.method public setForcedCapslock(Z)V
    .registers 4
    .parameter "capslock"

    .prologue
    .line 9417
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v1, 0x8

    if-ne v0, v1, :cond_b

    .line 9418
    if-eqz p1, :cond_b

    .line 9419
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 9423
    :cond_b
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    .line 9424
    return-void
.end method

.method public setKeyboardSize(SS)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 6612
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_9

    .line 6613
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setKeyboardSize(SS)V

    .line 6615
    :cond_9
    return-void
.end method

.method public setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V
    .registers 2
    .parameter "lastEngCapsMode"

    .prologue
    .line 8629
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 8630
    return-void
.end method

.method public setLatestTextInputMode()V
    .registers 3

    .prologue
    .line 6655
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 6658
    return-void
.end method

.method public setMiniKeyboardInput(Z)V
    .registers 2
    .parameter "isMiniKeyboardInput"

    .prologue
    .line 8577
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsMiniKeyboardInput:Z

    .line 8578
    return-void
.end method

.method public setMultiLineEditorflag(Z)V
    .registers 2
    .parameter "set"

    .prologue
    .line 7022
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorTypeMultiLine:Z

    .line 7023
    return-void
.end method

.method setNonShiftMode()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 2795
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v3

    if-nez v3, :cond_1f

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v3, :cond_1f

    const/4 v0, 0x1

    .line 2796
    .local v0, alreadyNonshift:Z
    :goto_c
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 2797
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 2798
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-nez v3, :cond_21

    .line 2813
    :cond_1e
    :goto_1e
    return-void

    .end local v0           #alreadyNonshift:Z
    :cond_1f
    move v0, v2

    .line 2795
    goto :goto_c

    .line 2801
    .restart local v0       #alreadyNonshift:Z
    :cond_21
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 2802
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2803
    .local v1, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    if-eqz v1, :cond_37

    .line 2804
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v1, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 2806
    :cond_37
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 2807
    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 2809
    :cond_41
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 2810
    if-nez v0, :cond_1e

    .line 2811
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto :goto_1e
.end method

.method public setPopupMenuShown(Z)V
    .registers 2
    .parameter "shown"

    .prologue
    .line 6993
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupMenuShown:Z

    .line 6994
    return-void
.end method

.method setShiftOn()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2858
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v5

    if-eqz v5, :cond_1a

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v5, :cond_1a

    move v0, v3

    .line 2860
    .local v0, alreadyShifted:Z
    :goto_d
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v5, :cond_19

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-nez v5, :cond_1c

    .line 2882
    :cond_19
    :goto_19
    return-void

    .end local v0           #alreadyShifted:Z
    :cond_1a
    move v0, v4

    .line 2858
    goto :goto_d

    .line 2864
    .restart local v0       #alreadyShifted:Z
    :cond_1c
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 2865
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v5, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 2866
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 2868
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 2869
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2870
    .local v1, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    if-eqz v1, :cond_3d

    .line 2871
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v1, v4}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 2873
    :cond_3d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 2874
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 2876
    :cond_47
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v4

    if-nez v4, :cond_55

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-eqz v4, :cond_63

    :cond_55
    move v2, v3

    .line 2878
    .local v2, shiftMode:B
    :goto_56
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 2879
    if-nez v0, :cond_19

    .line 2880
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto :goto_19

    .line 2876
    .end local v2           #shiftMode:B
    :cond_63
    const/4 v2, 0x2

    goto :goto_56
.end method

.method public setSpecialActionflag(Z)V
    .registers 2
    .parameter "action"

    .prologue
    .line 7036
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSpecialActionEditor:Z

    .line 7037
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZZB)V
    .registers 6
    .parameter
    .parameter "completions"
    .parameter "typedWordValid"
    .parameter "bActiveWordIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZB)V"
        }
    .end annotation

    .prologue
    .line 5060
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_9

    .line 5061
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setSuggestions(Ljava/util/List;ZZB)V

    .line 5063
    :cond_9
    return-void
.end method

.method public setXt9SettingEnabled(Z)V
    .registers 5
    .parameter

    .prologue
    .line 8651
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    .line 8652
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8653
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8654
    const-string v1, "xt9_enabled"

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8655
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 8657
    if-nez v0, :cond_19

    .line 8660
    :cond_19
    return-void
.end method

.method public showInputLanguageSelectOptionMenu()V
    .registers 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 6509
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isPopupMenuShown()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6567
    :goto_8
    return-void

    .line 6512
    :cond_9
    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 6514
    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->LANGUAGE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    .line 6515
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getLanguageInfoListSize()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguageString:[Ljava/lang/CharSequence;

    .line 6516
    new-array v1, v5, [S

    .line 6517
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    move v1, v0

    move v2, v0

    .line 6519
    :goto_26
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_46

    .line 6520
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v4, v0

    aput-object v0, v3, v2

    .line 6521
    add-int/lit8 v2, v2, 0x1

    .line 6519
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_26

    .line 6524
    :cond_46
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6525
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6526
    const v1, 0x7f0a0014

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6528
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;

    invoke-direct {v2, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6559
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6560
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    .line 6561
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onPopupDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6562
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 6563
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6564
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 6565
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6566
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8
.end method

.method public showWindow(Z)V
    .registers 3
    .parameter "showInput"

    .prologue
    .line 6699
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setFlagIsVisibleWindow(Z)V

    .line 6700
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 6703
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 6705
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendInputLanguage()V

    .line 6707
    return-void
.end method

.method public swipeDown()V
    .registers 2

    .prologue
    .line 5400
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSweepingOn:Z

    if-nez v0, :cond_5

    .line 5403
    :goto_4
    return-void

    .line 5402
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleClose()V

    goto :goto_4
.end method

.method public swipeLeft()V
    .registers 3

    .prologue
    .line 5409
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSweepingOn:Z

    if-nez v1, :cond_5

    .line 5423
    :goto_4
    return-void

    .line 5411
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v0

    .line 5412
    .local v0, enableInputMode:[I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleModeChange([IZ)V

    goto :goto_4
.end method

.method public swipeRight()V
    .registers 3

    .prologue
    .line 5429
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSweepingOn:Z

    if-nez v1, :cond_5

    .line 5443
    :goto_4
    return-void

    .line 5431
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v0

    .line 5432
    .local v0, enableInputMode:[I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleModeChange([IZ)V

    goto :goto_4
.end method

.method public swipeUp()V
    .registers 1

    .prologue
    .line 5447
    return-void
.end method

.method public updateComposerFromXT9()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5069
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    move-result v1

    .line 5071
    .local v1, vTotalWords:I
    if-lez v1, :cond_54

    .line 5072
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5073
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 5074
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 5075
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_25

    .line 5076
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v4, v2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 5078
    :cond_25
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v5

    invoke-virtual {p0, v4, v2, v2, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 5079
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v4

    if-gtz v4, :cond_42

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v4

    if-eqz v4, :cond_52

    :cond_42
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v4

    if-nez v4, :cond_52

    :goto_4e
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 5084
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_51
    return-void

    .restart local v0       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_52
    move v2, v3

    .line 5079
    goto :goto_4e

    .line 5082
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_54
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto :goto_51
.end method

.method public updateFullscreenMode()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 7917
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v1, :cond_1e

    .line 7919
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 7920
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 7923
    :cond_1e
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    .line 7924
    .local v0, inputMethodType:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v1, :cond_2d

    .line 7925
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeAllMsg()V

    .line 7929
    :cond_2d
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v1, :cond_3f

    if-eq v0, v3, :cond_3f

    .line 7930
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setBkInputMethodType(I)V

    .line 7931
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-nez v1, :cond_56

    .line 7932
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onCreateInputView()Landroid/view/View;

    .line 7939
    :cond_3f
    :goto_3f
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v1, :cond_49

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isPopupMenuShown()Z

    move-result v1

    if-eqz v1, :cond_52

    :cond_49
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v1, :cond_52

    .line 7940
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeActionPopup()V

    .line 7946
    :cond_52
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 7947
    return-void

    .line 7934
    :cond_56
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto :goto_3f
.end method

.method public updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .registers 4
    .parameter "attr"

    .prologue
    .line 6027
    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 6028
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 6030
    :cond_15
    return-void
.end method

.method public updateUserSelWord()V
    .registers 3

    .prologue
    .line 5042
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v0

    .line 5044
    .local v0, ActiveIndex:I
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoAppendOn()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 5045
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->noteWordDone(I)V

    .line 5047
    :cond_11
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->selectWord(I)V

    .line 5048
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 5049
    return-void
.end method

.method public vibrate()V
    .registers 3

    .prologue
    .line 5686
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsVibrateOn()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5736
    :cond_6
    :goto_6
    return-void

    .line 5690
    :cond_7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_b

    .line 5693
    :cond_b
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-i520"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5696
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHapticFeedbackEnabled(Z)V

    .line 5697
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->performHapticFeedback(I)Z

    goto :goto_6
.end method

.class public Lcom/android/inputmethod/deprecated/voice/VoiceInput;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/deprecated/voice/VoiceInput$AlternatesBundleKeys;,
        Lcom/android/inputmethod/deprecated/voice/VoiceInput$ImeRecognitionListener;,
        Lcom/android/inputmethod/deprecated/voice/VoiceInput$UIHandler;,
        Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;
    }
.end annotation


# static fields
.field private static final ALTERNATES_BUNDLE:Ljava/lang/String; = "alternates_bundle"

.field private static DBG:Z = false

.field public static final DEFAULT:I = 0x0

.field private static final DEFAULT_RECOMMENDED_PACKAGES:Ljava/lang/String; = "com.android.mms com.google.android.gm com.google.android.talk com.google.android.apps.googlevoice com.android.email com.android.browser "

.field public static final DELETE_SYMBOL:Ljava/lang/String; = " \u00d7 "

.field public static ENABLE_WORD_CORRECTIONS:Z = false

.field public static final ERROR:I = 0x3

.field private static final EXTRA_ALTERNATES:Ljava/lang/String; = "android.speech.extra.ALTERNATES"

.field private static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final EXTRA_RECOGNITION_CONTEXT:Ljava/lang/String; = "android.speech.extras.RECOGNITION_CONTEXT"

.field private static final EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

.field private static final EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

.field private static final EXTRA_SPEECH_MINIMUM_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

.field private static final INPUT_COMPLETE_SILENCE_LENGTH_DEFAULT_VALUE_MILLIS:Ljava/lang/String; = "1000"

.field public static final LISTENING:I = 0x1

.field private static final MAX_ALT_LIST_LENGTH:I = 0x6

.field private static final MSG_RESET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceInput"

.field public static final WORKING:I = 0x2


# instance fields
.field private mAfterVoiceInputCursorPos:I

.field private mAfterVoiceInputDeleteCount:I

.field private mAfterVoiceInputInsertCount:I

.field private mAfterVoiceInputInsertPunctuationCount:I

.field private mAfterVoiceInputSelectionSpan:I

.field private mBlacklist:Lcom/android/inputmethod/deprecated/voice/Whitelist;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/inputmethod/deprecated/voice/VoiceInput$UIHandler;

.field private mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRecognitionView:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

.field private mRecommendedList:Lcom/android/inputmethod/deprecated/voice/Whitelist;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private mState:I

.field private mUiListener:Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/inputmethod/latin/LatinImeLogger;->sDBG:Z

    sput-boolean v0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->DBG:Z

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->ENABLE_WORD_CORRECTIONS:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;)V
    .registers 9
    .parameter "context"
    .parameter "uiHandler"

    .prologue
    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 126
    iput v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 127
    iput v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 128
    iput v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    .line 129
    iput v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    .line 131
    iput v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mState:I

    .line 135
    new-instance v3, Lcom/android/inputmethod/deprecated/voice/VoiceInput$UIHandler;

    invoke-direct {v3, p0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput$UIHandler;-><init>(Lcom/android/inputmethod/deprecated/voice/VoiceInput;)V

    iput-object v3, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mHandler:Lcom/android/inputmethod/deprecated/voice/VoiceInput$UIHandler;

    .line 183
    invoke-static {p1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->getLogger(Landroid/content/Context;)Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    .line 184
    new-instance v3, Lcom/android/inputmethod/deprecated/voice/VoiceInput$ImeRecognitionListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/deprecated/voice/VoiceInput$ImeRecognitionListener;-><init>(Lcom/android/inputmethod/deprecated/voice/VoiceInput;Lcom/android/inputmethod/deprecated/voice/VoiceInput$ImeRecognitionListener;)V

    iput-object v3, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 185
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 186
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v4, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v3, v4}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 187
    iput-object p2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;

    .line 188
    iput-object p1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mContext:Landroid/content/Context;

    .line 189
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->newView()V

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 193
    const-string v4, "latin_ime_voice_input_recommended_packages"

    .line 194
    const-string v5, "com.android.mms com.google.android.gm com.google.android.talk com.google.android.apps.googlevoice com.android.email com.android.browser "

    .line 191
    invoke-static {v3, v4, v5}, Lcom/android/inputmethod/deprecated/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, recommendedPackages:Ljava/lang/String;
    new-instance v3, Lcom/android/inputmethod/deprecated/voice/Whitelist;

    invoke-direct {v3}, Lcom/android/inputmethod/deprecated/voice/Whitelist;-><init>()V

    iput-object v3, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/deprecated/voice/Whitelist;

    .line 197
    const-string v3, "\\s+"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_53
    if-lt v2, v4, :cond_64

    .line 201
    new-instance v2, Lcom/android/inputmethod/deprecated/voice/Whitelist;

    invoke-direct {v2}, Lcom/android/inputmethod/deprecated/voice/Whitelist;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/deprecated/voice/Whitelist;

    .line 202
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/deprecated/voice/Whitelist;

    const-string v3, "com.google.android.setupwizard"

    invoke-virtual {v2, v3}, Lcom/android/inputmethod/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 203
    return-void

    .line 197
    :cond_64
    aget-object v0, v3, v2

    .line 198
    .local v0, recommendedPackage:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/deprecated/voice/Whitelist;

    invoke-virtual {v5, v0}, Lcom/android/inputmethod/deprecated/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_53
.end method

.method static synthetic access$0(Lcom/android/inputmethod/deprecated/voice/VoiceInput;I)V
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 131
    iput p1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mState:I

    return-void
.end method

.method static synthetic access$1(Lcom/android/inputmethod/deprecated/voice/VoiceInput;)Lcom/android/inputmethod/deprecated/voice/RecognitionView;
    .registers 2
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/android/inputmethod/deprecated/voice/VoiceInput;)Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;
    .registers 2
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/inputmethod/deprecated/voice/VoiceInput;IZ)V
    .registers 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 572
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->onError(IZ)V

    return-void
.end method

.method private getErrorStringId(IZ)I
    .registers 4
    .parameter "errorType"
    .parameter "endpointed"

    .prologue
    const v0, 0x7f0c00da

    .line 551
    packed-switch p1, :pswitch_data_24

    .line 568
    const v0, 0x7f0c00d9

    :cond_9
    :goto_9
    :pswitch_9
    return v0

    .line 554
    :pswitch_a
    const v0, 0x7f0c00e0

    goto :goto_9

    .line 558
    :pswitch_e
    if-nez p2, :cond_9

    .line 559
    const v0, 0x7f0c00db

    goto :goto_9

    .line 561
    :pswitch_14
    const v0, 0x7f0c00dc

    goto :goto_9

    .line 563
    :pswitch_18
    const v0, 0x7f0c00dd

    goto :goto_9

    .line 565
    :pswitch_1c
    const v0, 0x7f0c00de

    goto :goto_9

    .line 567
    :pswitch_20
    const v0, 0x7f0c00df

    goto :goto_9

    .line 551
    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_e
        :pswitch_9
        :pswitch_14
        :pswitch_18
        :pswitch_a
        :pswitch_1c
        :pswitch_20
    .end packed-switch
.end method

.method private static makeIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 502
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "1.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 504
    const-string v1, "com.google.android.voiceservice"

    .line 505
    const-string v2, "com.google.android.voiceservice.IMERecognitionService"

    .line 503
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 512
    :goto_19
    return-object v0

    .line 508
    :cond_1a
    const-string v1, "com.google.android.voicesearch"

    .line 509
    const-string v2, "com.google.android.voicesearch.RecognitionService"

    .line 507
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_19
.end method

.method private onError(IZ)V
    .registers 6
    .parameter "errorType"
    .parameter "endpointed"

    .prologue
    .line 573
    const-string v0, "VoiceInput"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->error(I)V

    .line 575
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->getErrorStringId(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->onError(Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 579
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mState:I

    .line 580
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->showError(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mHandler:Lcom/android/inputmethod/deprecated/voice/VoiceInput$UIHandler;

    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mHandler:Lcom/android/inputmethod/deprecated/voice/VoiceInput$UIHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/deprecated/voice/VoiceInput$UIHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 583
    return-void
.end method

.method private putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .parameter "cr"
    .parameter "i"
    .parameter "gservicesKey"
    .parameter "intentExtraKey"
    .parameter "defaultValue"

    .prologue
    .line 392
    const-wide/16 v1, -0x1

    .line 393
    .local v1, l:J
    invoke-static {p1, p3, p5}, Lcom/android/inputmethod/deprecated/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_10

    .line 396
    :try_start_8
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_f} :catch_1a

    move-result-wide v1

    .line 402
    :cond_10
    :goto_10
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_19

    invoke-virtual {p2, p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 403
    :cond_19
    return-void

    .line 397
    :catch_1a
    move-exception v0

    .line 398
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "VoiceInput"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "could not parse value for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private startListeningAfterInitialization(Lcom/android/inputmethod/deprecated/voice/FieldContext;)V
    .registers 14
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 349
    invoke-static {}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 350
    .local v2, intent:Landroid/content/Intent;
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    const-string v0, "android.speech.extras.RECOGNITION_CONTEXT"

    invoke-virtual {p1}, Lcom/android/inputmethod/deprecated/voice/FieldContext;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 352
    const-string v0, "calling_package"

    const-string v3, "VoiceIME"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v0, "android.speech.extra.ALTERNATES"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    const-string v0, "android.speech.extra.MAX_RESULTS"

    .line 356
    iget-object v3, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 357
    const-string v4, "latin_ime_max_voice_results"

    .line 355
    invoke-static {v3, v4, v6}, Lcom/android/inputmethod/deprecated/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 354
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 365
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "latin_ime_speech_minimum_length_millis"

    .line 366
    const-string v4, "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    move-object v0, p0

    .line 362
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v9, "latin_ime_speech_input_complete_silence_length_millis"

    .line 372
    const-string v10, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    .line 373
    const-string v11, "1000"

    move-object v6, p0

    move-object v7, v1

    move-object v8, v2

    .line 368
    invoke-direct/range {v6 .. v11}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v3, "latin_ime_speech_input_possibly_complete_silence_length_millis"

    .line 380
    const-string v4, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    move-object v0, p0

    .line 375
    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 384
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .prologue
    .line 534
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mState:I

    packed-switch v0, :pswitch_data_20

    .line 546
    :goto_5
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->reset()V

    .line 547
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;

    invoke-interface {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput$UiListener;->onCancelVoice()V

    .line 548
    return-void

    .line 536
    :pswitch_e
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->cancelDuringListening()V

    goto :goto_5

    .line 539
    :pswitch_14
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->cancelDuringWorking()V

    goto :goto_5

    .line 542
    :pswitch_1a
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->cancelDuringError()V

    goto :goto_5

    .line 534
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_e
        :pswitch_14
        :pswitch_1a
    .end packed-switch
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 407
    return-void
.end method

.method public flushAllTextModificationCounters()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 272
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_c

    .line 273
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 274
    iput v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 276
    :cond_c
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_17

    .line 277
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 278
    iput v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 280
    :cond_17
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_22

    .line 281
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 282
    iput v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 284
    :cond_22
    return-void
.end method

.method public flushLogs()V
    .registers 2

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->flush()V

    .line 494
    return-void
.end method

.method public getCursorPos()I
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    return v0
.end method

.method public getSelectionSpan()I
    .registers 2

    .prologue
    .line 218
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public incrementTextModificationDeleteCount(I)V
    .registers 4
    .parameter "count"

    .prologue
    const/4 v1, 0x0

    .line 222
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 224
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_11

    .line 225
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 226
    iput v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 228
    :cond_11
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_1c

    .line 229
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 230
    iput v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 233
    :cond_1c
    return-void
.end method

.method public incrementTextModificationInsertCount(I)V
    .registers 5
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 236
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 237
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    if-lez v0, :cond_11

    .line 240
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    iget v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 243
    :cond_11
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1c

    .line 244
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 245
    iput v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 247
    :cond_1c
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_27

    .line 248
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 249
    iput v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 251
    :cond_27
    return-void
.end method

.method public incrementTextModificationInsertPunctuationCount(I)V
    .registers 5
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 254
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 255
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    if-lez v0, :cond_11

    .line 258
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    iget v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 261
    :cond_11
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1c

    .line 262
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 263
    iput v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 265
    :cond_1c
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_27

    .line 266
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 267
    iput v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 269
    :cond_27
    return-void
.end method

.method public isBlacklistedField(Lcom/android/inputmethod/deprecated/voice/FieldContext;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/deprecated/voice/Whitelist;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/voice/Whitelist;->matches(Lcom/android/inputmethod/deprecated/voice/FieldContext;)Z

    move-result v0

    return v0
.end method

.method public isRecommendedField(Lcom/android/inputmethod/deprecated/voice/FieldContext;)Z
    .registers 3
    .parameter "context"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/deprecated/voice/Whitelist;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/voice/Whitelist;->matches(Lcom/android/inputmethod/deprecated/voice/FieldContext;)Z

    move-result v0

    return v0
.end method

.method public logInputEnded()V
    .registers 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->inputEnded()V

    .line 490
    return-void
.end method

.method public logKeyboardWarningDialogCancel()V
    .registers 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->keyboardWarningDialogCancel()V

    .line 474
    return-void
.end method

.method public logKeyboardWarningDialogDismissed()V
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->keyboardWarningDialogDismissed()V

    .line 466
    return-void
.end method

.method public logKeyboardWarningDialogOk()V
    .registers 2

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->keyboardWarningDialogOk()V

    .line 470
    return-void
.end method

.method public logKeyboardWarningDialogShown()V
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->keyboardWarningDialogShown()V

    .line 462
    return-void
.end method

.method public logPunctuationHintDisplayed()V
    .registers 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->punctuationHintDisplayed()V

    .line 482
    return-void
.end method

.method public logSwipeHintDisplayed()V
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->swipeHintDisplayed()V

    .line 478
    return-void
.end method

.method public logTextModifiedByChooseSuggestion(Ljava/lang/String;ILjava/lang/String;Landroid/view/inputmethod/InputConnection;)V
    .registers 11
    .parameter "suggestion"
    .parameter "index"
    .parameter "wordSeparators"
    .parameter "ic"

    .prologue
    .line 453
    invoke-static {p4, p3}, Lcom/android/inputmethod/latin/EditingUtils;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, wordToBeReplaced:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    move v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->textModifiedByChooseSuggestion(IIILjava/lang/String;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public logTextModifiedByTypingDeletion(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->textModifiedByTypingDeletion(I)V

    .line 449
    return-void
.end method

.method public logTextModifiedByTypingInsertion(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->textModifiedByTypingInsertion(I)V

    .line 441
    return-void
.end method

.method public logTextModifiedByTypingInsertionPunctuation(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->textModifiedByTypingInsertionPunctuation(I)V

    .line 445
    return-void
.end method

.method public logVoiceInputDelivered(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->voiceInputDelivered(I)V

    .line 486
    return-void
.end method

.method public newView()V
    .registers 3

    .prologue
    .line 416
    new-instance v0, Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    iget-object v1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    .line 417
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 437
    :goto_7
    return-void

    .line 434
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->cancel()V

    goto :goto_7

    .line 432
    :pswitch_data_c
    .packed-switch 0x7f07004a
        :pswitch_8
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "configuration"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->restoreState()V

    .line 292
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 293
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 519
    iget v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mState:I

    if-eqz v0, :cond_17

    .line 520
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mState:I

    .line 523
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mHandler:Lcom/android/inputmethod/deprecated/voice/VoiceInput$UIHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput$UIHandler;->removeMessages(I)V

    .line 525
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 526
    iget-object v0, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->finish()V

    .line 528
    :cond_17
    return-void
.end method

.method public setCursorPos(I)V
    .registers 2
    .parameter "pos"

    .prologue
    .line 206
    iput p1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    .line 207
    return-void
.end method

.method public setSelectionSpan(I)V
    .registers 2
    .parameter "span"

    .prologue
    .line 214
    iput p1, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    .line 215
    return-void
.end method

.method public startListening(Lcom/android/inputmethod/deprecated/voice/FieldContext;Z)V
    .registers 8
    .parameter "context"
    .parameter "swipe"

    .prologue
    .line 320
    sget-boolean v2, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->DBG:Z

    if-eqz v2, :cond_18

    .line 321
    const-string v2, "VoiceInput"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startListening: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_18
    iget v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mState:I

    if-eqz v2, :cond_32

    .line 325
    const-string v2, "VoiceInput"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startListening in the wrong status "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_32
    invoke-virtual {p0}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->reset()V

    .line 332
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 333
    .local v0, locale:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, localeString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;

    invoke-virtual {v2, v1, p2}, Lcom/android/inputmethod/deprecated/voice/VoiceInputLogger;->start(Ljava/lang/String;Z)V

    .line 337
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mState:I

    .line 339
    iget-object v2, p0, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/deprecated/voice/RecognitionView;

    invoke-virtual {v2}, Lcom/android/inputmethod/deprecated/voice/RecognitionView;->showInitializing()V

    .line 340
    invoke-direct {p0, p1}, Lcom/android/inputmethod/deprecated/voice/VoiceInput;->startListeningAfterInitialization(Lcom/android/inputmethod/deprecated/voice/FieldContext;)V

    .line 341
    return-void
.end method

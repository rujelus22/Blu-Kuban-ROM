.class public Lcom/android/inputmethod/voice/VoiceInput;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;,
        Lcom/android/inputmethod/voice/VoiceInput$UiListener;
    }
.end annotation


# static fields
.field public static ENABLE_WORD_CORRECTIONS:Z


# instance fields
.field private mAfterVoiceInputCursorPos:I

.field private mAfterVoiceInputDeleteCount:I

.field private mAfterVoiceInputInsertCount:I

.field private mAfterVoiceInputInsertPunctuationCount:I

.field private mAfterVoiceInputSelectionSpan:I

.field private mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

.field private mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private mState:I

.field private mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/inputmethod/voice/VoiceInput;->ENABLE_WORD_CORRECTIONS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/inputmethod/voice/VoiceInput$UiListener;)V
    .registers 11
    .parameter "context"
    .parameter "uiHandler"

    .prologue
    const/4 v5, 0x0

    .line 147
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 98
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 99
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 100
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputCursorPos:I

    .line 101
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    .line 103
    iput v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 107
    new-instance v5, Lcom/android/inputmethod/voice/VoiceInput$1;

    invoke-direct {v5, p0}, Lcom/android/inputmethod/voice/VoiceInput$1;-><init>(Lcom/android/inputmethod/voice/VoiceInput;)V

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    .line 148
    invoke-static {p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->getLogger(Landroid/content/Context;)Lcom/android/inputmethod/voice/VoiceInputLogger;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    .line 149
    new-instance v5, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/inputmethod/voice/VoiceInput$ImeRecognitionListener;-><init>(Lcom/android/inputmethod/voice/VoiceInput;Lcom/android/inputmethod/voice/VoiceInput$1;)V

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 150
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 151
    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v6, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v5, v6}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 152
    iput-object p2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    .line 153
    iput-object p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    .line 154
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceInput;->newView()V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "latin_ime_voice_input_recommended_packages"

    const-string v7, "com.android.mms com.google.android.gm com.google.android.talk com.google.android.apps.googlevoice com.android.email com.android.browser "

    invoke-static {v5, v6, v7}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, recommendedPackages:Ljava/lang/String;
    new-instance v5, Lcom/android/inputmethod/voice/Whitelist;

    invoke-direct {v5}, Lcom/android/inputmethod/voice/Whitelist;-><init>()V

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

    .line 162
    const-string v5, "\\s+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_54
    if-ge v1, v2, :cond_60

    aget-object v3, v0, v1

    .line 163
    .local v3, recommendedPackage:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecommendedList:Lcom/android/inputmethod/voice/Whitelist;

    invoke-virtual {v5, v3}, Lcom/android/inputmethod/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 166
    .end local v3           #recommendedPackage:Ljava/lang/String;
    :cond_60
    new-instance v5, Lcom/android/inputmethod/voice/Whitelist;

    invoke-direct {v5}, Lcom/android/inputmethod/voice/Whitelist;-><init>()V

    iput-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

    .line 167
    iget-object v5, p0, Lcom/android/inputmethod/voice/VoiceInput;->mBlacklist:Lcom/android/inputmethod/voice/Whitelist;

    const-string v6, "com.android.setupwizard"

    invoke-virtual {v5, v6}, Lcom/android/inputmethod/voice/Whitelist;->addApp(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method static synthetic access$002(Lcom/android/inputmethod/voice/VoiceInput;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/RecognitionView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/voice/VoiceInput;)Lcom/android/inputmethod/voice/VoiceInput$UiListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/inputmethod/voice/VoiceInput;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/voice/VoiceInput;->onError(IZ)V

    return-void
.end method

.method private getErrorStringId(IZ)I
    .registers 4
    .parameter "errorType"
    .parameter "endpointed"

    .prologue
    const v0, 0x7f0a00e5

    .line 493
    packed-switch p1, :pswitch_data_24

    .line 510
    const v0, 0x7f0a00e4

    :cond_9
    :goto_9
    :pswitch_9
    return v0

    .line 496
    :pswitch_a
    const v0, 0x7f0a00eb

    goto :goto_9

    .line 500
    :pswitch_e
    if-nez p2, :cond_9

    const v0, 0x7f0a00e6

    goto :goto_9

    .line 503
    :pswitch_14
    const v0, 0x7f0a00e7

    goto :goto_9

    .line 505
    :pswitch_18
    const v0, 0x7f0a00e8

    goto :goto_9

    .line 507
    :pswitch_1c
    const v0, 0x7f0a00e9

    goto :goto_9

    .line 509
    :pswitch_20
    const v0, 0x7f0a00ea

    goto :goto_9

    .line 493
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
    .line 449
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "1.5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 455
    const-string v1, "com.google.android.voiceservice"

    const-string v2, "com.google.android.voiceservice.IMERecognitionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 464
    :goto_19
    return-object v0

    .line 459
    :cond_1a
    const-string v1, "com.google.android.voicesearch"

    const-string v2, "com.google.android.voicesearch.RecognitionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_19
.end method

.method private onError(IZ)V
    .registers 6
    .parameter "errorType"
    .parameter "endpointed"

    .prologue
    .line 515
    const-string v0, "VoiceInput"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->error(I)V

    .line 517
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/voice/VoiceInput;->getErrorStringId(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->onError(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 521
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 522
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/RecognitionView;->showError(Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 525
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
    .line 346
    const-wide/16 v1, -0x1

    .line 347
    .local v1, l:J
    invoke-static {p1, p3, p5}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_10

    .line 350
    :try_start_8
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_f} :catch_1a

    move-result-wide v1

    .line 356
    :cond_10
    :goto_10
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_19

    invoke-virtual {p2, p4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 357
    :cond_19
    return-void

    .line 351
    :catch_1a
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "VoiceInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not parse value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

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

.method private startListeningAfterInitialization(Lcom/android/inputmethod/voice/FieldContext;)V
    .registers 14
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 303
    invoke-static {}, Lcom/android/inputmethod/voice/VoiceInput;->makeIntent()Landroid/content/Intent;

    move-result-object v2

    .line 304
    .local v2, intent:Landroid/content/Intent;
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    const-string v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v0, "android.speech.extras.RECOGNITION_CONTEXT"

    invoke-virtual {p1}, Lcom/android/inputmethod/voice/FieldContext;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 306
    const-string v0, "calling_package"

    const-string v3, "VoiceIME"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v0, "android.speech.extra.MAX_RESULTS"

    iget-object v3, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "latin_ime_max_voice_results"

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Lcom/android/inputmethod/voice/SettingsUtil;->getSettingsInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 316
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "latin_ime_speech_minimum_length_millis"

    const-string v4, "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v9, "latin_ime_speech_input_complete_silence_length_millis"

    const-string v10, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-string v11, "1000"

    move-object v6, p0

    move-object v7, v1

    move-object v8, v2

    invoke-direct/range {v6 .. v11}, Lcom/android/inputmethod/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v3, "latin_ime_speech_input_possibly_complete_silence_length_millis"

    const-string v4, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/inputmethod/voice/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0, v2}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 338
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 471
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    packed-switch v0, :pswitch_data_30

    .line 482
    :goto_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 485
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 487
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 488
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mUiListener:Lcom/android/inputmethod/voice/VoiceInput$UiListener;

    invoke-interface {v0}, Lcom/android/inputmethod/voice/VoiceInput$UiListener;->onCancelVoice()V

    .line 489
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->finish()V

    .line 490
    return-void

    .line 473
    :pswitch_1e
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->cancelDuringListening()V

    goto :goto_5

    .line 476
    :pswitch_24
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->cancelDuringWorking()V

    goto :goto_5

    .line 479
    :pswitch_2a
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->cancelDuringError()V

    goto :goto_5

    .line 471
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_24
        :pswitch_2a
    .end packed-switch
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 361
    return-void
.end method

.method public flushAllTextModificationCounters()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 237
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_c

    .line 238
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 239
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 241
    :cond_c
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_17

    .line 242
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 243
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 245
    :cond_17
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_22

    .line 246
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 247
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 249
    :cond_22
    return-void
.end method

.method public flushLogs()V
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->flush()V

    .line 446
    return-void
.end method

.method public getView()Landroid/view/View;
    .registers 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public incrementTextModificationDeleteCount(I)V
    .registers 4
    .parameter "count"

    .prologue
    const/4 v1, 0x0

    .line 187
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 189
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    if-lez v0, :cond_11

    .line 190
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertion(I)V

    .line 191
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 193
    :cond_11
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_1c

    .line 194
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 195
    iput v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 198
    :cond_1c
    return-void
.end method

.method public incrementTextModificationInsertCount(I)V
    .registers 5
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    .line 201
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertCount:I

    .line 202
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    if-lez v0, :cond_11

    .line 205
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    iget v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputSelectionSpan:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 208
    :cond_11
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    if-lez v0, :cond_1c

    .line 209
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingDeletion(I)V

    .line 210
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputDeleteCount:I

    .line 212
    :cond_1c
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    if-lez v0, :cond_27

    .line 213
    iget v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    invoke-virtual {p0, v0}, Lcom/android/inputmethod/voice/VoiceInput;->logTextModifiedByTypingInsertionPunctuation(I)V

    .line 214
    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mAfterVoiceInputInsertPunctuationCount:I

    .line 216
    :cond_27
    return-void
.end method

.method public logInputEnded()V
    .registers 2

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->inputEnded()V

    .line 442
    return-void
.end method

.method public logKeyboardWarningDialogDismissed()V
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInputLogger;->keyboardWarningDialogDismissed()V

    .line 414
    return-void
.end method

.method public logTextModifiedByTypingDeletion(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByTypingDeletion(I)V

    .line 402
    return-void
.end method

.method public logTextModifiedByTypingInsertion(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByTypingInsertion(I)V

    .line 394
    return-void
.end method

.method public logTextModifiedByTypingInsertionPunctuation(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->textModifiedByTypingInsertionPunctuation(I)V

    .line 398
    return-void
.end method

.method public logVoiceInputDelivered(I)V
    .registers 3
    .parameter "length"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/voice/VoiceInputLogger;->voiceInputDelivered(I)V

    .line 434
    return-void
.end method

.method public newView()V
    .registers 3

    .prologue
    .line 370
    new-instance v0, Lcom/android/inputmethod/voice/RecognitionView;

    iget-object v1, p0, Lcom/android/inputmethod/voice/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/inputmethod/voice/RecognitionView;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    .line 371
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 390
    :goto_7
    return-void

    .line 387
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    goto :goto_7

    .line 385
    :pswitch_data_c
    .packed-switch 0x7f07006b
        :pswitch_8
    .end packed-switch
.end method

.method public onConfigurationChanged()V
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/RecognitionView;->restoreState()V

    .line 257
    return-void
.end method

.method public startListening(Lcom/android/inputmethod/voice/FieldContext;Z)V
    .registers 7
    .parameter "context"
    .parameter "swipe"

    .prologue
    .line 284
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 286
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 287
    .local v0, locale:Ljava/util/Locale;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    .local v1, localeString:Ljava/lang/String;
    const-string v2, "locale"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mLogger:Lcom/android/inputmethod/voice/VoiceInputLogger;

    invoke-virtual {v2, v1, p2}, Lcom/android/inputmethod/voice/VoiceInputLogger;->start(Ljava/lang/String;Z)V

    .line 291
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mState:I

    .line 293
    iget-object v2, p0, Lcom/android/inputmethod/voice/VoiceInput;->mRecognitionView:Lcom/android/inputmethod/voice/RecognitionView;

    invoke-virtual {v2}, Lcom/android/inputmethod/voice/RecognitionView;->showInitializing()V

    .line 294
    invoke-direct {p0, p1}, Lcom/android/inputmethod/voice/VoiceInput;->startListeningAfterInitialization(Lcom/android/inputmethod/voice/FieldContext;)V

    .line 295
    return-void
.end method

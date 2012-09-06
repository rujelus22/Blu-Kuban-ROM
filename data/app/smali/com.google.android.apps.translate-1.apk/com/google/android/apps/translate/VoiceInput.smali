.class public Lcom/google/android/apps/translate/VoiceInput;
.super Ljava/lang/Object;
.source "VoiceInput.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;,
        Lcom/google/android/apps/translate/VoiceInput$UiListener;
    }
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final ERROR:I = 0x3

.field private static final EXTRA_SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

.field private static final EXTRA_SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

.field private static final EXTRA_SPEECH_MINIMUM_LENGTH_MILLIS:Ljava/lang/String; = "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

.field private static final INPUT_COMPLETE_SILENCE_LENGTH_DEFAULT_VALUE_MILLIS:Ljava/lang/String; = "1000"

.field private static final INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_DEFAULT_VALUE_MILLIS:Ljava/lang/String; = null

.field public static final LISTENING:I = 0x1

.field private static final MAX_ASR_RESULTS:I = 0x32

.field private static final MSG_CLOSE_ERROR_DIALOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VoiceInput"

.field private static final UNSUPPORTED_EXTRA_DICTATION_MODE:Ljava/lang/String; = "android.speech.extra.DICTATION_MODE"

.field private static final UNSUPPORTED_EXTRA_PARTIAL_RESULTS:Ljava/lang/String; = "com.google.android.voicesearch.UNSUPPORTED_PARTIAL_RESULTS"

.field public static final WORKING:I = 0x2


# instance fields
.field private mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

.field private mContext:Landroid/content/Context;

.field private mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

.field private final mHandler:Landroid/os/Handler;

.field private mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

.field private mLocale:Ljava/lang/String;

.field private mPrefixText:Ljava/lang/String;

.field private mPrevText:Ljava/lang/String;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRecognitionView:Lcom/google/android/apps/translate/RecognitionView;

.field private mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field private mState:I

.field private mSuffixText:Ljava/lang/String;

.field private mUiListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/apps/translate/VoiceInput$UiListener;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceCanceled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/apps/translate/VoiceInput;->INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_DEFAULT_VALUE_MILLIS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/translate/RecognitionView;)V
    .registers 5
    .parameter "context"
    .parameter "recognitionView"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mState:I

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mPrefixText:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mSuffixText:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/google/android/apps/translate/VoiceInput$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/translate/VoiceInput$1;-><init>(Lcom/google/android/apps/translate/VoiceInput;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mHandler:Landroid/os/Handler;

    .line 159
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mUiListenerList:Ljava/util/List;

    .line 410
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mPrevText:Ljava/lang/String;

    .line 166
    new-instance v0, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/translate/VoiceInput$ImeRecognitionListener;-><init>(Lcom/google/android/apps/translate/VoiceInput;Lcom/google/android/apps/translate/VoiceInput$1;)V

    iput-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 167
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 169
    iput-object p1, p0, Lcom/google/android/apps/translate/VoiceInput;->mContext:Landroid/content/Context;

    .line 170
    iput-object p2, p0, Lcom/google/android/apps/translate/VoiceInput;->mRecognitionView:Lcom/google/android/apps/translate/RecognitionView;

    .line 171
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/apps/translate/VoiceInput;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/google/android/apps/translate/VoiceInput;->mState:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/apps/translate/VoiceInput;)Lcom/google/android/apps/translate/RecognitionView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mRecognitionView:Lcom/google/android/apps/translate/RecognitionView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/translate/VoiceInput;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/translate/VoiceInput;->onCancelVoice()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/apps/translate/VoiceInput;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/apps/translate/VoiceInput;->onError()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/apps/translate/VoiceInput;IZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/VoiceInput;->onError(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/apps/translate/VoiceInput;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mVoiceCanceled:Z

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/apps/translate/VoiceInput;Ljava/util/List;ZZ)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/translate/VoiceInput;->onVoiceResults(Ljava/util/List;ZZ)V

    return-void
.end method

.method private getErrorStringId(IZ)I
    .registers 4
    .parameter "errorType"
    .parameter "endpointed"

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_24

    .line 307
    sget v0, Lcom/google/android/apps/translate/R$string;->voice_error:I

    :goto_5
    return v0

    .line 292
    :pswitch_6
    sget v0, Lcom/google/android/apps/translate/R$string;->voice_not_installed:I

    goto :goto_5

    .line 294
    :pswitch_9
    sget v0, Lcom/google/android/apps/translate/R$string;->voice_network_error:I

    goto :goto_5

    .line 296
    :pswitch_c
    if-eqz p2, :cond_11

    sget v0, Lcom/google/android/apps/translate/R$string;->voice_network_error:I

    goto :goto_5

    :cond_11
    sget v0, Lcom/google/android/apps/translate/R$string;->voice_too_much_speech:I

    goto :goto_5

    .line 298
    :pswitch_14
    sget v0, Lcom/google/android/apps/translate/R$string;->voice_audio_error:I

    goto :goto_5

    .line 300
    :pswitch_17
    sget v0, Lcom/google/android/apps/translate/R$string;->voice_server_error:I

    goto :goto_5

    .line 302
    :pswitch_1a
    sget v0, Lcom/google/android/apps/translate/R$string;->voice_speech_timeout:I

    goto :goto_5

    .line 304
    :pswitch_1d
    sget v0, Lcom/google/android/apps/translate/R$string;->voice_no_match:I

    goto :goto_5

    .line 306
    :pswitch_20
    sget v0, Lcom/google/android/apps/translate/R$string;->voice_recognizer_busy:I

    goto :goto_5

    .line 289
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_c
        :pswitch_9
        :pswitch_14
        :pswitch_17
        :pswitch_6
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method private getPrefixText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 419
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    if-eqz v1, :cond_20

    .line 420
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->getSelectionStart()I

    move-result v0

    .line 421
    .local v0, start:I
    if-ltz v0, :cond_20

    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mPrevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_20

    .line 422
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mPrevText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 425
    .end local v0           #start:I
    :goto_1f
    return-object v1

    :cond_20
    const-string v1, ""

    goto :goto_1f
.end method

.method private getSuffixText()Ljava/lang/String;
    .registers 4

    .prologue
    .line 429
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    if-eqz v1, :cond_25

    .line 430
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->getSelectionEnd()I

    move-result v0

    .line 431
    .local v0, end:I
    if-ltz v0, :cond_25

    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mPrevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_25

    .line 432
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mPrevText:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/apps/translate/VoiceInput;->mPrevText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .end local v0           #end:I
    :goto_24
    return-object v1

    :cond_25
    const-string v1, ""

    goto :goto_24
.end method

.method private onCancelVoice()V
    .registers 4

    .prologue
    .line 95
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/apps/translate/VoiceInput;->mVoiceCanceled:Z

    .line 96
    iget-object v2, p0, Lcom/google/android/apps/translate/VoiceInput;->mUiListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/VoiceInput$UiListener;

    .line 97
    .local v1, listener:Lcom/google/android/apps/translate/VoiceInput$UiListener;
    invoke-interface {v1}, Lcom/google/android/apps/translate/VoiceInput$UiListener;->onCancelVoice()V

    goto :goto_9

    .line 99
    .end local v1           #listener:Lcom/google/android/apps/translate/VoiceInput$UiListener;
    :cond_19
    return-void
.end method

.method private onError()V
    .registers 4

    .prologue
    .line 107
    iget-object v2, p0, Lcom/google/android/apps/translate/VoiceInput;->mUiListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/VoiceInput$UiListener;

    .line 108
    .local v1, listener:Lcom/google/android/apps/translate/VoiceInput$UiListener;
    invoke-interface {v1}, Lcom/google/android/apps/translate/VoiceInput$UiListener;->onError()V

    goto :goto_6

    .line 110
    .end local v1           #listener:Lcom/google/android/apps/translate/VoiceInput$UiListener;
    :cond_16
    return-void
.end method

.method private onError(IZ)V
    .registers 6
    .parameter "errorType"
    .parameter "endpointed"

    .prologue
    .line 312
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

    invoke-static {v0, v1}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/translate/VoiceInput;->getErrorStringId(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/translate/VoiceInput;->onError(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .registers 6
    .parameter "error"

    .prologue
    .line 317
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mState:I

    .line 318
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mRecognitionView:Lcom/google/android/apps/translate/RecognitionView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/translate/RecognitionView;->showError(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 321
    return-void
.end method

.method private onVoiceResults(Ljava/util/List;ZZ)V
    .registers 7
    .parameter
    .parameter "canceled"
    .parameter "finished"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, recognitionResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    if-eqz p2, :cond_3

    .line 130
    :cond_2
    :goto_2
    return-void

    .line 118
    :cond_3
    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_e

    .line 119
    invoke-direct {p0, p1, p3}, Lcom/google/android/apps/translate/VoiceInput;->setText(Ljava/util/List;Z)V

    .line 122
    :cond_e
    iget-object v2, p0, Lcom/google/android/apps/translate/VoiceInput;->mUiListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/translate/VoiceInput$UiListener;

    .line 123
    .local v1, listener:Lcom/google/android/apps/translate/VoiceInput$UiListener;
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/apps/translate/VoiceInput$UiListener;->onVoiceResults(Ljava/util/List;ZZ)V

    goto :goto_14

    .line 125
    .end local v1           #listener:Lcom/google/android/apps/translate/VoiceInput$UiListener;
    :cond_24
    if-eqz p3, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/translate/VoiceInput;->setCursorAtEnd()V

    .line 127
    iget-object v2, p0, Lcom/google/android/apps/translate/VoiceInput;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    invoke-virtual {v2}, Lcom/google/android/apps/translate/editor/InstantTranslateHandler;->commitSourceText()V

    .line 128
    invoke-virtual {p0}, Lcom/google/android/apps/translate/VoiceInput;->cancel()V

    goto :goto_2
.end method

.method private putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .parameter "cr"
    .parameter "i"
    .parameter "intentExtraKey"
    .parameter "defaultValue"

    .prologue
    .line 239
    const-wide/16 v1, -0x1

    .line 240
    .local v1, l:J
    move-object v3, p4

    .line 241
    .local v3, s:Ljava/lang/String;
    if-eqz v3, :cond_d

    .line 243
    :try_start_5
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_c} :catch_17

    move-result-wide v1

    .line 249
    :cond_d
    :goto_d
    const-wide/16 v4, -0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_16

    .line 250
    invoke-virtual {p2, p3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 252
    :cond_16
    return-void

    .line 244
    :catch_17
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "VoiceInput"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not parse value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/apps/translate/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method private declared-synchronized setPreviousText()V
    .registers 2

    .prologue
    .line 413
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    if-eqz v0, :cond_11

    .line 414
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mPrevText:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 416
    :cond_11
    monitor-exit p0

    return-void

    .line 413
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setPreviousTexts(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "prefixText"
    .parameter "suffixText"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/apps/translate/VoiceInput;->mPrefixText:Ljava/lang/String;

    .line 103
    iput-object p2, p0, Lcom/google/android/apps/translate/VoiceInput;->mSuffixText:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private setText(Ljava/util/List;Z)V
    .registers 10
    .parameter
    .parameter "finished"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, recognitionResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v6, 0x0

    .line 444
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, recognizedText:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/apps/translate/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 446
    .local v1, newRecognitionResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 447
    .local v3, s:Ljava/lang/CharSequence;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .local v4, sb:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/google/android/apps/translate/VoiceInput;->mPrefixText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v5, p0, Lcom/google/android/apps/translate/VoiceInput;->mSuffixText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 453
    .end local v3           #s:Ljava/lang/CharSequence;
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_39
    iget-object v5, p0, Lcom/google/android/apps/translate/VoiceInput;->mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v5, v1}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->setAsrResults(Ljava/util/List;)V

    .line 455
    if-eqz p2, :cond_45

    .line 456
    iget-object v5, p0, Lcom/google/android/apps/translate/VoiceInput;->mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v5, v6}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->setRecognizing(Z)V

    .line 458
    :cond_45
    return-void
.end method

.method private startListeningAfterInitialization(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .parameter "context"
    .parameter "locale"

    .prologue
    const/4 v4, 0x1

    .line 201
    invoke-direct {p0}, Lcom/google/android/apps/translate/VoiceInput;->setPreviousText()V

    .line 202
    invoke-direct {p0}, Lcom/google/android/apps/translate/VoiceInput;->getPrefixText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/apps/translate/VoiceInput;->getSuffixText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/translate/VoiceInput;->setPreviousTexts(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1, p2}, Lcom/google/android/apps/translate/VoiceInputHelper;->prepareAsrIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 207
    const-string v2, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    const-string v2, "android.speech.extra.DICTATION_MODE"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const-string v2, "android.speech.extra.MAX_RESULTS"

    const/16 v3, 0x32

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v2, p0, Lcom/google/android/apps/translate/VoiceInput;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "android.speech.extras.SPEECH_INPUT_MINIMUM_LENGTH_MILLIS"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/apps/translate/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "android.speech.extras.SPEECH_INPUT_COMPLETE_SILENCE_LENGTH_MILLIS"

    const-string v3, "1000"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/apps/translate/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v2, "android.speech.extras.SPEECH_INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_MILLIS"

    sget-object v3, Lcom/google/android/apps/translate/VoiceInput;->INPUT_POSSIBLY_COMPLETE_SILENCE_LENGTH_DEFAULT_VALUE_MILLIS:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/apps/translate/VoiceInput;->putEndpointerExtra(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/google/android/apps/translate/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v2, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 231
    return-void
.end method


# virtual methods
.method public addVoiceInputListener(Lcom/google/android/apps/translate/VoiceInput$UiListener;)V
    .registers 3
    .parameter "uiHandler"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mUiListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 277
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mState:I

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/translate/VoiceInput;->setPreviousTexts(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 284
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mRecognitionView:Lcom/google/android/apps/translate/RecognitionView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/RecognitionView;->finish()V

    .line 285
    invoke-direct {p0}, Lcom/google/android/apps/translate/VoiceInput;->onCancelVoice()V

    .line 286
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    .line 256
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 263
    if-eqz p2, :cond_15

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mVoiceCanceled:Z

    .line 265
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mState:I

    .line 266
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mRecognitionView:Lcom/google/android/apps/translate/RecognitionView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/RecognitionView;->showInitializing()V

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/translate/VoiceInput;->startListeningAfterInitialization(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    :goto_14
    return-void

    .line 269
    :cond_15
    invoke-virtual {p0}, Lcom/google/android/apps/translate/VoiceInput;->cancel()V

    goto :goto_14
.end method

.method public setCursorAtEnd()V
    .registers 3

    .prologue
    .line 439
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1}, Lcom/google/android/apps/translate/editor/TextSlot;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 440
    .local v0, start:I
    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    invoke-virtual {v1, v0, v0}, Lcom/google/android/apps/translate/editor/TextSlot;->setSelection(II)V

    .line 441
    return-void
.end method

.method public setInstantTranslateHandler(Lcom/google/android/apps/translate/editor/InstantTranslateHandler;)V
    .registers 2
    .parameter "handler"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/apps/translate/VoiceInput;->mInstantTranslateHandler:Lcom/google/android/apps/translate/editor/InstantTranslateHandler;

    .line 92
    return-void
.end method

.method public startListening(Landroid/content/Context;Lcom/google/android/apps/translate/asreditor/AsrResultEditor;Ljava/lang/String;)V
    .registers 7
    .parameter "context"
    .parameter "asrResultEditor"
    .parameter "locale"

    .prologue
    const/4 v2, 0x1

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mVoiceCanceled:Z

    .line 187
    iput-object p2, p0, Lcom/google/android/apps/translate/VoiceInput;->mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    .line 188
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->getEditorField()Lcom/google/android/apps/translate/editor/TextSlot;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mEditorField:Lcom/google/android/apps/translate/editor/TextSlot;

    .line 189
    iput v2, p0, Lcom/google/android/apps/translate/VoiceInput;->mState:I

    .line 190
    iput-object p1, p0, Lcom/google/android/apps/translate/VoiceInput;->mContext:Landroid/content/Context;

    .line 191
    iput-object p3, p0, Lcom/google/android/apps/translate/VoiceInput;->mLocale:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mRecognitionView:Lcom/google/android/apps/translate/RecognitionView;

    invoke-virtual {v0}, Lcom/google/android/apps/translate/RecognitionView;->showInitializing()V

    .line 193
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/translate/VoiceInput;->mLocale:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/translate/VoiceInput;->startListeningAfterInitialization(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/apps/translate/VoiceInput;->mAsrResultEditor:Lcom/google/android/apps/translate/asreditor/AsrResultEditor;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/translate/asreditor/AsrResultEditor;->setRecognizing(Z)V

    .line 195
    return-void
.end method

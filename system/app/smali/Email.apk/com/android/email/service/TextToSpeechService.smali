.class public Lcom/android/email/service/TextToSpeechService;
.super Landroid/app/Service;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# static fields
.field private static mTts:Landroid/speech/tts/TextToSpeech;


# instance fields
.field private alertOnCallMode:I

.field private drivingMode:I

.field private emailTTSMode:I

.field private initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private isOnCall:Z

.field private mServiceStartId:I

.field private mSpeechText:Ljava/lang/String;

.field private toneGenerator:Landroid/media/ToneGenerator;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    .line 194
    new-instance v0, Lcom/android/email/service/TextToSpeechService$1;

    invoke-direct {v0, p0}, Lcom/android/email/service/TextToSpeechService$1;-><init>(Lcom/android/email/service/TextToSpeechService;)V

    iput-object v0, p0, Lcom/android/email/service/TextToSpeechService;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000()Landroid/speech/tts/TextToSpeech;
    .registers 1

    .prologue
    .line 26
    sget-object v0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/service/TextToSpeechService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/email/service/TextToSpeechService;->speakNewMessageInfo()V

    return-void
.end method

.method private makeTts()V
    .registers 4

    .prologue
    .line 186
    :try_start_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/email/service/TextToSpeechService;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v1, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 192
    :goto_9
    return-void

    .line 187
    :catch_a
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    const-string v1, "New Message TTS"

    const-string v2, "########## TTS create failed !!!!! ##########"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/email/service/TextToSpeechService;->stopSelf(I)V

    goto :goto_9
.end method

.method private speakNewMessageInfo()V
    .registers 5

    .prologue
    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 219
    .local v0, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "utteranceId"

    const-string v2, "New message tts ended"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v1, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_1d

    .line 222
    sget-object v1, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 223
    sget-object v1, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/email/service/TextToSpeechService;->mSpeechText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 225
    :cond_1d
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 67
    :try_start_3
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 69
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/email/service/TextToSpeechService;->isOnCall:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    .line 75
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_13
    return-void

    .line 70
    :catch_14
    move-exception v0

    .line 72
    .local v0, e1:Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/service/TextToSpeechService;->isOnCall:Z

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 114
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 116
    sget-object v0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_c

    .line 117
    sget-object v0, Lcom/android/email/service/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 120
    :cond_c
    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService;->toneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1a

    .line 121
    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 122
    iget-object v0, p0, Lcom/android/email/service/TextToSpeechService;->toneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 125
    :cond_1a
    const-string v0, "New Message TTS"

    const-string v1, "########## Destroy called !!!!! ##########"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 8
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/android/email/service/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/email/service/TextToSpeechService;->alertOnCallMode:I

    .line 80
    invoke-virtual {p0}, Lcom/android/email/service/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/email/service/TextToSpeechService;->drivingMode:I

    .line 82
    invoke-virtual {p0}, Lcom/android/email/service/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_email_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/email/service/TextToSpeechService;->emailTTSMode:I

    .line 85
    iput p2, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    .line 88
    :try_start_28
    const-string v1, "TTS_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/service/TextToSpeechService;->mSpeechText:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_39

    .line 94
    :goto_30
    iget-boolean v1, p0, Lcom/android/email/service/TextToSpeechService;->isOnCall:Z

    if-eqz v1, :cond_51

    .line 95
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->alertOnCallMode:I

    if-ne v1, v4, :cond_42

    .line 110
    :goto_38
    return-void

    .line 89
    :catch_39
    move-exception v0

    .line 90
    .local v0, e1:Ljava/lang/Exception;
    const-string v1, "New message received"

    iput-object v1, p0, Lcom/android/email/service/TextToSpeechService;->mSpeechText:Ljava/lang/String;

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    .line 99
    .end local v0           #e1:Ljava/lang/Exception;
    :cond_42
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->alertOnCallMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4b

    .line 100
    invoke-direct {p0}, Lcom/android/email/service/TextToSpeechService;->makeTts()V

    goto :goto_38

    .line 102
    :cond_4b
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/email/service/TextToSpeechService;->stopSelf(I)V

    goto :goto_38

    .line 105
    :cond_51
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->emailTTSMode:I

    if-ne v1, v4, :cond_5d

    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->drivingMode:I

    if-ne v1, v4, :cond_5d

    .line 106
    invoke-direct {p0}, Lcom/android/email/service/TextToSpeechService;->makeTts()V

    goto :goto_38

    .line 108
    :cond_5d
    iget v1, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/email/service/TextToSpeechService;->stopSelf(I)V

    goto :goto_38
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 229
    iget v0, p0, Lcom/android/email/service/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/android/email/service/TextToSpeechService;->stopSelf(I)V

    .line 230
    return-void
.end method

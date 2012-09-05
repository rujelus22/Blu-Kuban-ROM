.class public Lcom/android/calendar/TextToSpeechService;
.super Landroid/app/Service;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# static fields
.field private static mTts:Landroid/speech/tts/TextToSpeech;


# instance fields
.field private alertOnCallMode:I

.field private calendarTTSMode:I

.field private drivingMode:I

.field private initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private isOnCall:Z

.field private mServiceStartId:I

.field private mSpeechText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/TextToSpeechService;->mServiceStartId:I

    .line 124
    new-instance v0, Lcom/android/calendar/TextToSpeechService$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/TextToSpeechService$1;-><init>(Lcom/android/calendar/TextToSpeechService;)V

    iput-object v0, p0, Lcom/android/calendar/TextToSpeechService;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    return-void
.end method

.method static synthetic access$000()Landroid/speech/tts/TextToSpeech;
    .registers 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/calendar/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/TextToSpeechService;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/calendar/TextToSpeechService;->speakNewMessageInfo()V

    return-void
.end method

.method private makeTts()V
    .registers 4

    .prologue
    .line 114
    :try_start_0
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/calendar/TextToSpeechService;->initListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, p0, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v1, Lcom/android/calendar/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 122
    :goto_9
    return-void

    .line 115
    :catch_a
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    iget v1, p0, Lcom/android/calendar/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/TextToSpeechService;->stopSelf(I)V

    goto :goto_9
.end method

.method private speakNewMessageInfo()V
    .registers 5

    .prologue
    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 140
    .local v0, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "streamType"

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "utteranceId"

    const-string v2, "calendar alert ID"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/android/calendar/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_28

    .line 144
    sget-object v1, Lcom/android/calendar/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p0}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 145
    sget-object v1, Lcom/android/calendar/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/calendar/TextToSpeechService;->mSpeechText:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 147
    :cond_28
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .parameter "arg0"

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 56
    :try_start_3
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 58
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/calendar/TextToSpeechService;->isOnCall:Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_14

    .line 64
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_13
    return-void

    .line 59
    :catch_14
    move-exception v0

    .line 61
    .local v0, e1:Landroid/os/RemoteException;
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/calendar/TextToSpeechService;->isOnCall:Z

    .line 62
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 98
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 99
    sget-object v0, Lcom/android/calendar/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_f

    .line 100
    sget-object v0, Lcom/android/calendar/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lcom/android/calendar/TextToSpeechService;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 103
    :cond_f
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 8
    .parameter "intent"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/android/calendar/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "alertoncall_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/TextToSpeechService;->alertOnCallMode:I

    .line 69
    invoke-virtual {p0}, Lcom/android/calendar/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/TextToSpeechService;->drivingMode:I

    .line 71
    invoke-virtual {p0}, Lcom/android/calendar/TextToSpeechService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_schedule_notification"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/TextToSpeechService;->calendarTTSMode:I

    .line 75
    iput p2, p0, Lcom/android/calendar/TextToSpeechService;->mServiceStartId:I

    .line 78
    :try_start_28
    const-string v1, "TTS_TEXT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/TextToSpeechService;->mSpeechText:Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_30} :catch_3d

    .line 84
    :goto_30
    iget-boolean v1, p0, Lcom/android/calendar/TextToSpeechService;->isOnCall:Z

    if-eqz v1, :cond_46

    iget v1, p0, Lcom/android/calendar/TextToSpeechService;->alertOnCallMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_46

    .line 85
    invoke-direct {p0}, Lcom/android/calendar/TextToSpeechService;->makeTts()V

    .line 94
    :goto_3c
    return-void

    .line 79
    :catch_3d
    move-exception v0

    .line 80
    .local v0, e1:Ljava/lang/Exception;
    const-string v1, ""

    iput-object v1, p0, Lcom/android/calendar/TextToSpeechService;->mSpeechText:Ljava/lang/String;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30

    .line 86
    .end local v0           #e1:Ljava/lang/Exception;
    :cond_46
    iget v1, p0, Lcom/android/calendar/TextToSpeechService;->calendarTTSMode:I

    if-ne v1, v4, :cond_52

    iget v1, p0, Lcom/android/calendar/TextToSpeechService;->drivingMode:I

    if-ne v1, v4, :cond_52

    .line 87
    invoke-direct {p0}, Lcom/android/calendar/TextToSpeechService;->makeTts()V

    goto :goto_3c

    .line 92
    :cond_52
    iget v1, p0, Lcom/android/calendar/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/TextToSpeechService;->stopSelf(I)V

    goto :goto_3c
.end method

.method public onUtteranceCompleted(Ljava/lang/String;)V
    .registers 3
    .parameter "arg0"

    .prologue
    .line 154
    iget v0, p0, Lcom/android/calendar/TextToSpeechService;->mServiceStartId:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/TextToSpeechService;->stopSelf(I)V

    .line 155
    return-void
.end method

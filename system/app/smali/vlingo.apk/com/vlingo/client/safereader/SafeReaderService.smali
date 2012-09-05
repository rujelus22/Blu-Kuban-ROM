.class public Lcom/vlingo/client/safereader/SafeReaderService;
.super Landroid/app/Service;
.source "SafeReaderService.java"

# interfaces
.implements Lcom/vlingo/client/core/tts/LocalTTSListener;


# static fields
.field public static final RPC_TRANSACT_CODE_REMOVE_NOTIFICATION:I = 0xbb9


# instance fields
.field private final mBinder:Lcom/vlingo/client/safereader/ISafeReaderService$Stub;

.field mHandler:Landroid/os/Handler;

.field messageReadbackListener:Lcom/vlingo/client/safereader/MessageReadbackListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    new-instance v0, Lcom/vlingo/client/safereader/SafeReaderService$1;

    invoke-direct {v0, p0}, Lcom/vlingo/client/safereader/SafeReaderService$1;-><init>(Lcom/vlingo/client/safereader/SafeReaderService;)V

    iput-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService;->mBinder:Lcom/vlingo/client/safereader/ISafeReaderService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .parameter "intent"

    .prologue
    .line 43
    const-string v0, "com.vlingo.client.samsung.safereader.START"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 44
    iget-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService;->mBinder:Lcom/vlingo/client/safereader/ISafeReaderService$Stub;

    .line 46
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public onCancel(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 400
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->isMessageReadback()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 403
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vlingo/client/widget/WidgetManager;->updateAllWidgets(Landroid/content/Context;ZZ)V

    .line 404
    invoke-static {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->abandonAudioFocus()V

    .line 406
    :cond_12
    return-void
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/vlingo/client/safereader/MessageReadbackListener;

    invoke-direct {v0}, Lcom/vlingo/client/safereader/MessageReadbackListener;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/safereader/SafeReaderService;->messageReadbackListener:Lcom/vlingo/client/safereader/MessageReadbackListener;

    .line 53
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    .line 54
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vlingo/client/core/tts/TTSEngine;->addLocalListener(Lcom/vlingo/client/core/tts/LocalTTSListener;)V

    .line 55
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vlingo/client/settings/Settings;->setSafeReaderRunning(Z)V

    .line 56
    return-void
.end method

.method public onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-static {}, Lcom/vlingo/client/core/audio/AudioPlayer;->getInstance()Lcom/vlingo/client/core/audio/AudioPlayer;

    move-result-object v1

    const v2, 0x7f060016

    invoke-virtual {v1, v2}, Lcom/vlingo/client/core/audio/AudioPlayer;->playSound(I)V

    .line 68
    monitor-enter p0

    .line 70
    const-wide/16 v1, 0x1f4

    :try_start_e
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_3b
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_11} :catch_30

    .line 74
    :goto_11
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_3b

    .line 75
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 76
    invoke-static {}, Lcom/vlingo/client/core/tts/TTSEngine;->getInstance()Lcom/vlingo/client/core/tts/TTSEngine;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/vlingo/client/core/tts/TTSEngine;->removeLocalListener(Lcom/vlingo/client/core/tts/LocalTTSListener;)V

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vlingo.client.samsung.safereader.STOPPED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vlingo/client/safereader/SafeReaderService;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    invoke-static {p0, v3}, Lcom/vlingo/client/widget/WidgetManager;->updateAllWidgets(Landroid/content/Context;Z)V

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vlingo/client/safereader/SafeReaderService;->mHandler:Landroid/os/Handler;

    .line 80
    invoke-static {v3}, Lcom/vlingo/client/settings/Settings;->setSafeReaderRunning(Z)V

    .line 81
    return-void

    .line 71
    :catch_30
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_31
    const-string v1, "VLG_EXCEPTION"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 74
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_3b
    move-exception v1

    monitor-exit p0
    :try_end_3d
    .catchall {:try_start_31 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method public onIgnore(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 409
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->isMessageReadback()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 412
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vlingo/client/widget/WidgetManager;->updateAllWidgets(Landroid/content/Context;ZZ)V

    .line 413
    invoke-static {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->abandonAudioFocus()V

    .line 415
    :cond_12
    return-void
.end method

.method public onStart(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 5
    .parameter "request"

    .prologue
    const/4 v1, 0x1

    .line 418
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->isMessageReadback()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 421
    invoke-static {p0, v1, v1}, Lcom/vlingo/client/widget/WidgetManager;->updateAllWidgets(Landroid/content/Context;ZZ)V

    .line 422
    invoke-static {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/vlingo/client/core/audio/AudioFocusManager;->requestAudioFocus(II)V

    .line 424
    :cond_13
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 59
    invoke-static {p0}, Lcom/vlingo/client/safereader/SafeReaderNotificationManager;->setContext(Landroid/content/Context;)V

    .line 60
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method

.method public onStop(Lcom/vlingo/client/core/tts/TTSDemand;)V
    .registers 4
    .parameter "request"

    .prologue
    .line 427
    invoke-virtual {p1}, Lcom/vlingo/client/core/tts/TTSDemand;->isMessageReadback()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 430
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/vlingo/client/widget/WidgetManager;->updateAllWidgets(Landroid/content/Context;ZZ)V

    .line 431
    invoke-static {p0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->getInstance(Landroid/content/Context;)Lcom/vlingo/client/core/audio/AudioFocusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vlingo/client/core/audio/AudioFocusManager;->abandonAudioFocus()V

    .line 433
    :cond_12
    return-void
.end method

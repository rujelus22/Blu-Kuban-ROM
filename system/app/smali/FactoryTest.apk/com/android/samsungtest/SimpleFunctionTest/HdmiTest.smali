.class public Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;
.super Landroid/app/Activity;
.source "HdmiTest.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrKey:I

.field private mCurrTime:J

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPrevKey:I

.field private mPrevTime:J

.field private mWindowManager:Landroid/view/IWindowManager;

.field private modeString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 21
    const-string v0, "HdmiTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->LOG_TAG:Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private registReceiver()V
    .registers 3

    .prologue
    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.samsungtest.SimpleFunctionTest.HdmiTest.HQRLMODEOFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    return-void
.end method

.method private unregistReceiver()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    return-void
.end method


# virtual methods
.method public BackKeyCheck()Z
    .registers 5

    .prologue
    .line 120
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mPrevKey:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mPrevTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_25

    .line 121
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mCurrTime:J

    iget-wide v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mPrevTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 122
    const/4 v0, 0x1

    .line 127
    :goto_24
    return v0

    .line 125
    :cond_25
    iget v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mCurrKey:I

    iput v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mPrevKey:I

    .line 126
    iget-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mCurrTime:J

    iput-wide v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mPrevTime:J

    .line 127
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f030019

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->setContentView(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 34
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MODE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->modeString:Ljava/lang/String;

    .line 36
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mWindowManager:Landroid/view/IWindowManager;

    .line 38
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_32

    .line 39
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 40
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 44
    :cond_32
    const v1, 0x7f050008

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 45
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 47
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_4e

    .line 48
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 50
    :cond_4e
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 83
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 85
    :cond_10
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 97
    const-string v1, "HdmiTest"

    const-string v2, "onKeyDown"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iput p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mCurrKey:I

    .line 99
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mCurrTime:J

    .line 100
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3e

    .line 101
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->BackKeyCheck()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-gtz v1, :cond_3d

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 102
    const-string v1, "HdmiTest"

    const-string v2, "This is back_key"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string v1, "HQRL_MODE"

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->modeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 104
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->setResult(I)V

    .line 106
    :cond_3a
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->finish()V

    .line 116
    :cond_3d
    :goto_3d
    return v0

    .line 110
    :cond_3e
    const/16 v1, 0x54

    if-eq p1, v1, :cond_3d

    const/16 v1, 0x19

    if-eq p1, v1, :cond_3d

    const/16 v1, 0x18

    if-eq p1, v1, :cond_3d

    .line 116
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_3d
.end method

.method public onPause()V
    .registers 6

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 69
    :try_start_3
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 70
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_29

    .line 75
    :cond_1b
    :goto_1b
    const-string v1, "HQRL_MODE"

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->modeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 76
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->unregistReceiver()V

    .line 78
    :cond_28
    return-void

    .line 72
    :catch_29
    move-exception v0

    .line 73
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method

.method public onResume()V
    .registers 6

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 55
    :try_start_3
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowManager;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 56
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1b} :catch_29

    .line 61
    :cond_1b
    :goto_1b
    const-string v1, "HQRL_MODE"

    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->modeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 62
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/HdmiTest;->registReceiver()V

    .line 64
    :cond_28
    return-void

    .line 58
    :catch_29
    move-exception v0

    .line 59
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1b
.end method

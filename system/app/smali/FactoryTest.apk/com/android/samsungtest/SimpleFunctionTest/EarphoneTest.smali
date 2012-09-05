.class public Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;
.super Landroid/app/Activity;
.source "EarphoneTest.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private left:Landroid/widget/LinearLayout;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHeadsetPlugged:Z

.field private mLoopbackInfo:Landroid/widget/TextView;

.field private mLoopbackTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mIsHeadsetPlugged:Z

    .line 35
    const-string v0, "EarphoneTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->LOG_TAG:Ljava/lang/String;

    .line 113
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mLoopbackInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .registers 4

    .prologue
    .line 67
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    const v1, 0x7f09009c

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mLoopbackInfo:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f09009b

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mLoopbackTitle:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mLoopbackTitle:Landroid/widget/TextView;

    const-string v2, "EARPHONE TEST"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mIsHeadsetPlugged:Z

    .line 79
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mLoopbackInfo:Landroid/widget/TextView;

    const-string v2, "Earphone Connected !"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const-string v1, "32"

    const-string v2, "P"

    invoke-virtual {p0, v1, v2}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :goto_4a
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    return-void

    .line 83
    :cond_50
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mIsHeadsetPlugged:Z

    .line 84
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mLoopbackInfo:Landroid/widget/TextView;

    const-string v2, "Earphone Disconnected !"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4a
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->setContentView(I)V

    .line 40
    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->left:Landroid/widget/LinearLayout;

    .line 41
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->init()V

    .line 42
    const-string v0, "EarphoneTest"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 51
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    const-string v0, "EarphoneTest"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 94
    const-string v0, "KEYCODE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWN, keycode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2b

    .line 97
    const-string v0, "EarphoneTest"

    const-string v1, "KEYCODE : This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->finish()V

    .line 110
    :cond_29
    :goto_29
    const/4 v0, 0x1

    return v0

    .line 100
    :cond_2b
    const/16 v0, 0x17

    if-ne p1, v0, :cond_33

    .line 101
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->finish()V

    goto :goto_29

    .line 103
    :cond_33
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_29

    .line 104
    const-string v0, "EarphoneTest"

    const-string v1, "!! KEYCODE_HEADSETHOOK on in EAR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->left:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 107
    const-string v0, "33"

    const-string v1, "P"

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

.method public declared-synchronized onPause()V
    .registers 2

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onResume()V
    .registers 4

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    const-string v1, "EarphoneTest"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 64
    monitor-exit p0

    return-void

    .line 57
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "function"
    .parameter "result"

    .prologue
    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SendResultToRil"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FUNCTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/EarphoneTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

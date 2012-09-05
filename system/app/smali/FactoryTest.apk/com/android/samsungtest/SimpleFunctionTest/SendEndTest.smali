.class public Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;
.super Landroid/app/Activity;
.source "SendEndTest.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private left:Landroid/widget/LinearLayout;

.field private mAudioManager:Landroid/media/AudioManager;

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

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->mIsHeadsetPlugged:Z

    .line 35
    const-string v0, "SendEndTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private init()V
    .registers 4

    .prologue
    .line 65
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->mAudioManager:Landroid/media/AudioManager;

    .line 67
    const v1, 0x7f09009c

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->mLoopbackInfo:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f09009b

    invoke-virtual {p0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->mLoopbackTitle:Landroid/widget/TextView;

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->mLoopbackTitle:Landroid/widget/TextView;

    const-string v2, "EAR KEY TEST"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->mLoopbackInfo:Landroid/widget/TextView;

    const-string v2, "Press Send/End key !"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
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

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->setContentView(I)V

    .line 40
    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->left:Landroid/widget/LinearLayout;

    .line 41
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->init()V

    .line 42
    const-string v0, "SendEndTest"

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
    const-string v0, "SendEndTest"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 80
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

    .line 82
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2b

    .line 83
    const-string v0, "SendEndTest"

    const-string v1, "KEYCODE : This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->finish()V

    .line 97
    :cond_29
    :goto_29
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_2b
    const/16 v0, 0x17

    if-ne p1, v0, :cond_33

    .line 87
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->finish()V

    goto :goto_29

    .line 89
    :cond_33
    const/16 v0, 0x4f

    if-ne p1, v0, :cond_29

    .line 90
    const-string v0, "SendEndTest"

    const-string v1, "!! KEYCODE_HEADSETHOOK on in SEND/END"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->left:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 93
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->mLoopbackInfo:Landroid/widget/TextView;

    const-string v1, "Send/End Pressed !"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const-string v0, "33"

    const-string v1, "P"

    invoke-virtual {p0, v0, v1}, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 56
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "SendEndTest"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    .line 62
    monitor-exit p0

    return-void

    .line 56
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :catchall_17
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "function"
    .parameter "result"

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SendResultToRil"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FUNCTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SendEndTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    return-void
.end method

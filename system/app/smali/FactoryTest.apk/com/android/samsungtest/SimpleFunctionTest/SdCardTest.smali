.class public Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;
.super Landroid/app/Activity;
.source "SdCardTest.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private left:Landroid/widget/LinearLayout;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIsHeadsetPlugged:Z

.field private mLoopbackInfo:Landroid/widget/TextView;

.field private mLoopbackTitle:Landroid/widget/TextView;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->mIsHeadsetPlugged:Z

    .line 35
    const-string v0, "SdCardTest"

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->LOG_TAG:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest$1;

    invoke-direct {v0, p0}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest$1;-><init>(Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;)V

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$084(Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;)Landroid/widget/TextView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->mLoopbackInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .registers 5

    .prologue
    .line 74
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->mAudioManager:Landroid/media/AudioManager;

    .line 75
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, state:Ljava/lang/String;
    const v2, 0x7f09009c

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->mLoopbackInfo:Landroid/widget/TextView;

    .line 78
    const v2, 0x7f09009b

    invoke-virtual {p0, v2}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->mLoopbackTitle:Landroid/widget/TextView;

    .line 80
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->mLoopbackTitle:Landroid/widget/TextView;

    const-string v3, "SDCARD TEST"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->mLoopbackInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v2, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v2, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
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

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->setContentView(I)V

    .line 40
    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->left:Landroid/widget/LinearLayout;

    .line 41
    invoke-direct {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->init()V

    .line 42
    const-string v0, "SdCardTest"

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
    iget-object v0, p0, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 52
    const-string v0, "SdCardTest"

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
    .line 102
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

    .line 104
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2b

    .line 105
    const-string v0, "SdCardTest"

    const-string v1, "KEYCODE : This is back_key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->finish()V

    .line 112
    :cond_29
    :goto_29
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_2b
    const/16 v0, 0x17

    if-ne p1, v0, :cond_29

    .line 109
    invoke-virtual {p0}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->finish()V

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

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "android.intent.action.MEDIA_CHECKING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 70
    const-string v1, "SdCardTest"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    .line 71
    monitor-exit p0

    return-void

    .line 57
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :catchall_41
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendTestResultToRil(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "function"
    .parameter "result"

    .prologue
    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.samsungtest.SendResultToRil"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, i:Landroid/content/Intent;
    const-string v1, "FUNCTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Lcom/android/samsungtest/SimpleFunctionTest/SdCardTest;->sendBroadcast(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

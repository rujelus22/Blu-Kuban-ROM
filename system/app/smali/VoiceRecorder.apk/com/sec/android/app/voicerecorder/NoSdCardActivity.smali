.class public Lcom/sec/android/app/voicerecorder/NoSdCardActivity;
.super Landroid/app/Activity;
.source "NoSdCardActivity.java"


# instance fields
.field private mEventHandler:Landroid/os/Handler;

.field private mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    new-instance v0, Lcom/sec/android/app/voicerecorder/NoSdCardActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/voicerecorder/NoSdCardActivity$1;-><init>(Lcom/sec/android/app/voicerecorder/NoSdCardActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;->mEventHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public StartMainActivty()V
    .registers 3

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/voicerecorder/VoiceRecorderMainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    .line 38
    invoke-virtual {p0}, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 39
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;->setContentView(I)V

    .line 40
    const v1, 0x7f090004

    invoke-virtual {p0, v1}, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    .local v0, text:Landroid/widget/TextView;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 43
    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 47
    :goto_29
    new-instance v1, Lcom/sec/android/app/voicerecorder/util/VRIntent;

    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;->mEventHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/voicerecorder/util/VRIntent;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    .line 48
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void

    .line 45
    :cond_3b
    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_29
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/NoSdCardActivity;->mVRIntent:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiversForActivity(Z)V

    .line 89
    return-void
.end method

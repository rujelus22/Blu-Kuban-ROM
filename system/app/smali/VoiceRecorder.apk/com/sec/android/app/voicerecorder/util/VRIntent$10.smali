.class Lcom/sec/android/app/voicerecorder/util/VRIntent$10;
.super Landroid/content/BroadcastReceiver;
.source "VRIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverMusicCommand(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/voicerecorder/util/VRIntent;)V
    .registers 2
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$10;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 396
    const-string v1, "VRIntent"

    const-string v2, "MusicService Intent Received"

    invoke-static {v1, v2}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 399
    const-string v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, from:Ljava/lang/String;
    if-eqz v0, :cond_24

    const-string v1, "com.sec.android.app.voicerecorder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 405
    .end local v0           #from:Ljava/lang/String;
    :cond_23
    :goto_23
    return-void

    .line 402
    .restart local v0       #from:Ljava/lang/String;
    :cond_24
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$10;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    #getter for: Lcom/sec/android/app/voicerecorder/util/VRIntent;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$300(Lcom/sec/android/app/voicerecorder/util/VRIntent;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 403
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$10;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    #getter for: Lcom/sec/android/app/voicerecorder/util/VRIntent;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$300(Lcom/sec/android/app/voicerecorder/util/VRIntent;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xfbe

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_23
.end method

.class Lcom/sec/android/app/voicerecorder/util/VRIntent$6;
.super Landroid/content/BroadcastReceiver;
.source "VRIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverFileDelete(Z)V
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
    .line 282
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$6;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 285
    const-string v0, "VRIntent"

    const-string v1, "File delete Intent Received"

    invoke-static {v0, v1}, Lcom/sec/android/app/voicerecorder/util/VRUtil$VRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$6;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    #getter for: Lcom/sec/android/app/voicerecorder/util/VRIntent;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$300(Lcom/sec/android/app/voicerecorder/util/VRIntent;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$6;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    #getter for: Lcom/sec/android/app/voicerecorder/util/VRIntent;->mEventHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$300(Lcom/sec/android/app/voicerecorder/util/VRIntent;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xfff

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    :cond_1a
    return-void
.end method

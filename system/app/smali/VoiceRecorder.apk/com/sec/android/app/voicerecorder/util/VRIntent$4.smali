.class Lcom/sec/android/app/voicerecorder/util/VRIntent$4;
.super Landroid/content/BroadcastReceiver;
.source "VRIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/voicerecorder/util/VRIntent;->registerBroadcastReceiverLowBattery(Z)V
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
    .line 224
    iput-object p1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$4;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 229
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isLowBattery()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 231
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$4;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    #getter for: Lcom/sec/android/app/voicerecorder/util/VRIntent;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$200(Lcom/sec/android/app/voicerecorder/util/VRIntent;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060038

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->showToast(Landroid/content/Context;II)V

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$4;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    #getter for: Lcom/sec/android/app/voicerecorder/util/VRIntent;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$300(Lcom/sec/android/app/voicerecorder/util/VRIntent;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$4;->this$0:Lcom/sec/android/app/voicerecorder/util/VRIntent;

    #getter for: Lcom/sec/android/app/voicerecorder/util/VRIntent;->mEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$300(Lcom/sec/android/app/voicerecorder/util/VRIntent;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xff0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_26} :catch_27

    .line 238
    :cond_26
    :goto_26
    return-void

    .line 235
    :catch_27
    move-exception v0

    .line 236
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26
.end method

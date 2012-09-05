.class final Lcom/sec/android/app/voicerecorder/util/VRIntent$1;
.super Landroid/content/BroadcastReceiver;
.source "VRIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/voicerecorder/util/VRIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 152
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 156
    :try_start_c
    invoke-static {}, Lcom/sec/android/app/voicerecorder/util/VRUtil;->isLowBattery()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$1;->val$activity:Landroid/app/Activity;

    #calls: Lcom/sec/android/app/voicerecorder/util/VRIntent;->popupLowBatteryDialog(Landroid/app/Activity;)V
    invoke-static {v2}, Lcom/sec/android/app/voicerecorder/util/VRIntent;->access$000(Landroid/app/Activity;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_18

    .line 165
    :cond_17
    :goto_17
    return-void

    .line 159
    :catch_18
    move-exception v1

    .line 160
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 162
    .end local v1           #e:Ljava/io/IOException;
    :cond_1d
    const-string v2, "com.android.voicerecorder.VOICE_INTENT_FINISH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 163
    iget-object v2, p0, Lcom/sec/android/app/voicerecorder/util/VRIntent$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_17
.end method

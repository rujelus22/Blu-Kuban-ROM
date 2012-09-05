.class Lcom/android/MtpApplication/MtpApplication$3;
.super Landroid/content/BroadcastReceiver;
.source "MtpApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/MtpApplication/MtpApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/MtpApplication/MtpApplication;


# direct methods
.method constructor <init>(Lcom/android/MtpApplication/MtpApplication;)V
    .registers 2
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/MtpApplication/MtpApplication$3;->this$0:Lcom/android/MtpApplication/MtpApplication;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 229
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, action:Ljava/lang/String;
    const-string v5, "MTPAPP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In MTPAPP onReceive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 233
    const-string v5, "status"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 234
    .local v4, status:I
    const-string v5, "MTP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Plug Type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 237
    .local v2, pm:Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->getPlugType()I

    move-result v1

    .line 238
    .local v1, plugType:I
    const-string v5, "MTPAPP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Battery charging. plugType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v5, 0x3

    if-ne v5, v4, :cond_81

    if-nez v1, :cond_81

    .line 241
    iget-object v5, p0, Lcom/android/MtpApplication/MtpApplication$3;->this$0:Lcom/android/MtpApplication/MtpApplication;

    iget-object v5, v5, Lcom/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    if-eqz v5, :cond_81

    .line 242
    iget-object v5, p0, Lcom/android/MtpApplication/MtpApplication$3;->this$0:Lcom/android/MtpApplication/MtpApplication;

    iget-object v5, v5, Lcom/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string v6, "media_player_mode"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 243
    iget-object v5, p0, Lcom/android/MtpApplication/MtpApplication$3;->this$0:Lcom/android/MtpApplication/MtpApplication;

    invoke-virtual {v5}, Lcom/android/MtpApplication/MtpApplication;->finish()V

    .line 265
    .end local v1           #plugType:I
    .end local v2           #pm:Landroid/os/PowerManager;
    .end local v4           #status:I
    :cond_81
    :goto_81
    return-void

    .line 246
    :cond_82
    const-string v5, "com.android.END_MTP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_92

    const-string v5, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 247
    :cond_92
    const-string v5, "MTP"

    const-string v6, "END key pressed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v5, p0, Lcom/android/MtpApplication/MtpApplication$3;->this$0:Lcom/android/MtpApplication/MtpApplication;

    iget-object v5, v5, Lcom/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string v6, "mtp_usb_connection_status"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    iget-object v5, p0, Lcom/android/MtpApplication/MtpApplication$3;->this$0:Lcom/android/MtpApplication/MtpApplication;

    iget-object v5, v5, Lcom/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string v6, "media_player_mode"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    iget-object v5, p0, Lcom/android/MtpApplication/MtpApplication$3;->this$0:Lcom/android/MtpApplication/MtpApplication;

    iget-object v5, v5, Lcom/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string v6, "mtp_usb_conditions_met"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    iget-object v5, p0, Lcom/android/MtpApplication/MtpApplication$3;->this$0:Lcom/android/MtpApplication/MtpApplication;

    iget-object v5, v5, Lcom/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string v6, "mtp_running_status"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    const-string v5, "com.android.END_MTP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e7

    .line 254
    iget-object v5, p0, Lcom/android/MtpApplication/MtpApplication$3;->this$0:Lcom/android/MtpApplication/MtpApplication;

    iget-object v5, v5, Lcom/android/MtpApplication/MtpApplication;->cr:Landroid/content/ContentResolver;

    const-string v6, "end_key_press"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    .line 255
    .local v3, result:Z
    const-string v5, "MTPAPP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "End Key pressed= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v3           #result:Z
    :cond_e7
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MTP_FILE_SCAN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 258
    const-string v5, "MTPAPP"

    const-string v6, "Sending Broadcast"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v5, "com.android.END_MTP"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    .line 260
    sget-object v5, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v5, :cond_10c

    sget-object v5, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_81

    .line 262
    :cond_10c
    sget-object v5, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v5, :cond_81

    sget-object v5, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    goto/16 :goto_81
.end method

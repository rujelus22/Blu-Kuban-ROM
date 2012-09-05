.class Lcom/android/MtpApplication/MtpReceiver$1;
.super Landroid/os/Handler;
.source "MtpReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/MtpApplication/MtpReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/MtpApplication/MtpReceiver;


# direct methods
.method constructor <init>(Lcom/android/MtpApplication/MtpReceiver;)V
    .registers 2
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 186
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 187
    const-string v4, "MTPRx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notification from stack "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v4, 0x3

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_46

    .line 189
    sput-boolean v8, Lcom/android/MtpApplication/MtpReceiver;->isSynchronizing:Z

    .line 191
    sget-object v4, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mtp_sync_alive"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v7, :cond_40

    iget-object v4, p0, Lcom/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    sget-object v5, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/MtpApplication/MtpReceiver;->isCallScreen(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 192
    :cond_40
    iget-object v4, p0, Lcom/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    invoke-virtual {v4}, Lcom/android/MtpApplication/MtpReceiver;->isSyncFinished()V

    .line 262
    :cond_45
    :goto_45
    return-void

    .line 212
    :cond_46
    const/4 v4, 0x5

    iget v5, p1, Landroid/os/Message;->what:I

    if-eq v4, v5, :cond_56

    const/4 v4, 0x4

    iget v5, p1, Landroid/os/Message;->what:I

    if-eq v4, v5, :cond_56

    const/16 v4, 0xa

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_bc

    .line 213
    :cond_56
    sput-boolean v7, Lcom/android/MtpApplication/MtpReceiver;->isSynchronizing:Z

    .line 217
    iget-object v4, p0, Lcom/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    sget-object v5, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    #calls: Lcom/android/MtpApplication/MtpReceiver;->isMusicPlayerRunning(Landroid/content/Context;)V
    invoke-static {v4, v5}, Lcom/android/MtpApplication/MtpReceiver;->access$000(Lcom/android/MtpApplication/MtpReceiver;Landroid/content/Context;)V

    .line 227
    sget-object v4, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mtp_sync_alive"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_75

    .line 228
    iget-object v4, p0, Lcom/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    iget-object v4, v4, Lcom/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_45

    .line 232
    :cond_75
    sget-object v4, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mtp_sync_alive"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 234
    :try_start_80
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 235
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_99

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getCallState()I

    move-result v4

    if-eq v4, v7, :cond_45

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getCallState()I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_95} :catch_b0

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_45

    .line 242
    .end local v3           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_99
    :goto_99
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v2, intentBroadcast:Landroid/content/Intent;
    const/high16 v4, 0x1080

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 244
    const-string v4, "com.android.MtpApplication"

    const-string v5, "com.android.MtpApplication.MtpApplication"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    sget-object v4, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_45

    .line 238
    .end local v2           #intentBroadcast:Landroid/content/Intent;
    :catch_b0
    move-exception v1

    .line 239
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "MTPRx"

    const-string v5, "Exception call handling"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_99

    .line 246
    .end local v1           #e:Ljava/lang/Exception;
    :cond_bc
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v9, v4, :cond_dd

    .line 247
    sget-boolean v4, Lcom/android/MtpApplication/MtpReceiver;->isSynchronizing:Z

    if-nez v4, :cond_d6

    .line 248
    sget-object v4, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 249
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "mtp_sync_alive"

    invoke-static {v0, v4, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    iget-object v4, p0, Lcom/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    invoke-virtual {v4}, Lcom/android/MtpApplication/MtpReceiver;->finishSync()V

    goto/16 :goto_45

    .line 252
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_d6
    iget-object v4, p0, Lcom/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    invoke-virtual {v4}, Lcom/android/MtpApplication/MtpReceiver;->isSyncFinished()V

    goto/16 :goto_45

    .line 254
    :cond_dd
    const/16 v4, 0xb

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_ec

    .line 255
    iget-object v4, p0, Lcom/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    iget-object v4, v4, Lcom/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_45

    .line 256
    :cond_ec
    const/16 v4, 0xe

    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v4, v5, :cond_45

    .line 258
    sget-object v4, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 259
    .restart local v0       #cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/MtpApplication/MtpReceiver$1;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    #calls: Lcom/android/MtpApplication/MtpReceiver;->usbRemoved(Landroid/content/ContentResolver;)V
    invoke-static {v4, v0}, Lcom/android/MtpApplication/MtpReceiver;->access$100(Lcom/android/MtpApplication/MtpReceiver;Landroid/content/ContentResolver;)V

    .line 260
    const-string v4, "mtp_usb_conditions_met"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_45
.end method

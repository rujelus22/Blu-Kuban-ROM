.class Lcom/android/MtpApplication/MtpReceiver$2;
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
    .line 288
    iput-object p1, p0, Lcom/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .parameter "msg"

    .prologue
    const v9, 0x7f040012

    const v8, 0x7f040011

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 290
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 292
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_180

    .line 371
    :cond_11
    :goto_11
    return-void

    .line 294
    :pswitch_12
    const-string v2, "MTPRx"

    const-string v3, "calling native method"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    sput-object v2, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    .line 297
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-eqz v2, :cond_11

    .line 298
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    iget-object v3, p0, Lcom/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    iget-object v3, v3, Lcom/android/MtpApplication/MtpReceiver;->mNotiHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/mtp/MTPJNIInterface;->setHandler(Landroid/os/Handler;)V

    .line 299
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    sget-object v3, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/mtp/MTPJNIInterface;->setContext(Landroid/content/Context;)V

    .line 300
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v2, v7}, Landroid/mtp/MTPJNIInterface;->notifyMTPStack(I)V

    .line 301
    const-string v2, "MTPRx"

    const-string v3, "called native method"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    if-nez v2, :cond_4d

    invoke-static {}, Landroid/mtp/MTPJNIInterface;->getInstance()Landroid/mtp/MTPJNIInterface;

    move-result-object v2

    sput-object v2, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    .line 303
    :cond_4d
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->statusUpdate:Landroid/mtp/MTPJNIInterface;

    invoke-virtual {v2, v5}, Landroid/mtp/MTPJNIInterface;->setMediaScannerStatus(I)V

    goto :goto_11

    .line 307
    :pswitch_53
    const-string v2, "MTPRx"

    const-string v3, "MTP can be launched"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    if-nez v2, :cond_66

    .line 309
    const-string v2, "MTPRx"

    const-string v3, "context is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 312
    :cond_66
    iget-object v2, p0, Lcom/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    sget-object v3, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    #calls: Lcom/android/MtpApplication/MtpReceiver;->sendNoti(Landroid/content/Context;Landroid/content/ContentResolver;)V
    invoke-static {v2, v3, v4}, Lcom/android/MtpApplication/MtpReceiver;->access$200(Lcom/android/MtpApplication/MtpReceiver;Landroid/content/Context;Landroid/content/ContentResolver;)V

    goto :goto_11

    .line 315
    :pswitch_74
    const-string v2, "MTPRx"

    const-string v3, "restarting MTP"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    if-nez v2, :cond_86

    .line 317
    const-string v2, "MTPRx"

    const-string v3, "mContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_86
    iget-object v2, p0, Lcom/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    sget-object v3, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    #calls: Lcom/android/MtpApplication/MtpReceiver;->launchMtpApp(Landroid/content/Context;Landroid/content/ContentResolver;)V
    invoke-static {v2, v3, v4}, Lcom/android/MtpApplication/MtpReceiver;->access$300(Lcom/android/MtpApplication/MtpReceiver;Landroid/content/Context;Landroid/content/ContentResolver;)V

    goto/16 :goto_11

    .line 326
    :pswitch_95
    const-string v2, "MTPRx"

    const-string v3, "check MS status after 5 sec"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "media_scanning_finished"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 328
    .local v0, msStatus:I
    const-string v2, "MTPRx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "media scaner status = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    if-nez v0, :cond_d9

    .line 330
    const-string v2, "MTPRx"

    const-string v3, "MTP can be launched"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 332
    iget-object v2, p0, Lcom/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    #calls: Lcom/android/MtpApplication/MtpReceiver;->sendMsg(I)V
    invoke-static {v2, v7}, Lcom/android/MtpApplication/MtpReceiver;->access$400(Lcom/android/MtpApplication/MtpReceiver;I)V

    goto/16 :goto_11

    .line 334
    :cond_d9
    const-string v2, "MTPRx"

    const-string v3, "media scanner running"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 336
    iget-object v2, p0, Lcom/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    const/4 v3, 0x4

    #calls: Lcom/android/MtpApplication/MtpReceiver;->sendMsg(I)V
    invoke-static {v2, v3}, Lcom/android/MtpApplication/MtpReceiver;->access$400(Lcom/android/MtpApplication/MtpReceiver;I)V

    goto/16 :goto_11

    .line 340
    .end local v0           #msStatus:I
    :pswitch_f1
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mtp_running_status"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_109

    .line 342
    iget-object v2, p0, Lcom/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    iget-object v2, v2, Lcom/android/MtpApplication/MtpReceiver;->mStartMtpHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_11

    .line 345
    :cond_109
    iget-object v2, p0, Lcom/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    invoke-virtual {v2}, Lcom/android/MtpApplication/MtpReceiver;->getMediaScannerStatus()Z

    move-result v2

    if-nez v2, :cond_128

    .line 346
    const-string v2, "MTPRx"

    const-string v3, "MTP can be launched"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 348
    iget-object v2, p0, Lcom/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    #calls: Lcom/android/MtpApplication/MtpReceiver;->sendMsg(I)V
    invoke-static {v2, v7}, Lcom/android/MtpApplication/MtpReceiver;->access$400(Lcom/android/MtpApplication/MtpReceiver;I)V

    goto/16 :goto_11

    .line 350
    :cond_128
    const-string v2, "MTPRx"

    const-string v3, "media scanner running"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 352
    iget-object v2, p0, Lcom/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    const/4 v3, 0x5

    #calls: Lcom/android/MtpApplication/MtpReceiver;->sendMsg(I)V
    invoke-static {v2, v3}, Lcom/android/MtpApplication/MtpReceiver;->access$400(Lcom/android/MtpApplication/MtpReceiver;I)V

    goto/16 :goto_11

    .line 356
    :pswitch_140
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mtp_running_status"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 359
    .local v1, mtpStatus:I
    if-eqz v1, :cond_11

    .line 360
    iget-object v2, p0, Lcom/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    invoke-virtual {v2}, Lcom/android/MtpApplication/MtpReceiver;->getMediaScannerStatus()Z

    move-result v2

    if-nez v2, :cond_168

    .line 361
    const-string v2, "MTPRx"

    const-string v3, "MTP can be launched"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v9, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_11

    .line 364
    :cond_168
    const-string v2, "MTPRx"

    const-string v3, "media scanner running"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-object v2, Lcom/android/MtpApplication/MtpReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 366
    iget-object v2, p0, Lcom/android/MtpApplication/MtpReceiver$2;->this$0:Lcom/android/MtpApplication/MtpReceiver;

    const/4 v3, 0x6

    #calls: Lcom/android/MtpApplication/MtpReceiver;->sendMsg(I)V
    invoke-static {v2, v3}, Lcom/android/MtpApplication/MtpReceiver;->access$400(Lcom/android/MtpApplication/MtpReceiver;I)V

    goto/16 :goto_11

    .line 292
    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_53
        :pswitch_12
        :pswitch_74
        :pswitch_95
        :pswitch_f1
        :pswitch_140
    .end packed-switch
.end method

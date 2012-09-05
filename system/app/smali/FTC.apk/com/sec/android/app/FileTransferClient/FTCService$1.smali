.class Lcom/sec/android/app/FileTransferClient/FTCService$1;
.super Landroid/os/Handler;
.source "FTCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferClient/FTCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferClient/FTCService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferClient/FTCService;)V
    .registers 2
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter

    .prologue
    const/16 v2, 0x7d2

    const v5, 0x7f06001c

    const/4 v1, 0x0

    const v4, 0x7f060031

    const/4 v3, 0x1

    .line 264
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_346

    .line 427
    :goto_f
    return-void

    .line 267
    :pswitch_10
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->setBroadcastReceiver()V
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$000(Lcom/sec/android/app/FileTransferClient/FTCService;)V

    .line 269
    iput v2, p1, Landroid/os/Message;->what:I

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mResultSuccessFileCnt:I
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$102(Lcom/sec/android/app/FileTransferClient/FTCService;I)I

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mResultFailFileCnt:I
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$202(Lcom/sec/android/app/FileTransferClient/FTCService;I)I

    .line 274
    :pswitch_21
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v0

    if-eqz v0, :cond_1a9

    .line 278
    const/4 v0, 0x1

    :try_start_28
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->runningService(Z)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->bWaitSessionRequest:Z
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$300(Lcom/sec/android/app/FileTransferClient/FTCService;)Z

    move-result v0

    if-nez v0, :cond_187

    .line 281
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCService;->bWaitSessionRequest:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$302(Lcom/sec/android/app/FileTransferClient/FTCService;Z)Z

    .line 282
    const-string v0, "[FT]-Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FTCService :ADD new Session. flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->bWaitSessionRequest:Z
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$300(Lcom/sec/android/app/FileTransferClient/FTCService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->getFileList(Ljava/lang/Object;)[Ljava/io/File;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_5e} :catch_a8

    move-result-object v2

    .line 284
    const/4 v1, 0x0

    .line 288
    :try_start_60
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    check-cast v0, Landroid/os/Bundle;

    .line 289
    const-string v3, "DEVICE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mDeviceHash:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_342

    .line 292
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mDeviceHash:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .line 293
    sget-object v1, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mDeviceHash:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_81} :catch_c3

    .line 305
    :goto_81
    if-nez v2, :cond_fa

    .line 307
    :try_start_83
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService : wrong. file list is null: EVENT_FTC_INIT "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$400(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkFinish()V
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a6} :catch_a8

    goto/16 :goto_f

    .line 363
    :catch_a8
    move-exception v0

    .line 365
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on EVENT_FTC_SESSION_ADDED:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 297
    :catch_c3
    move-exception v0

    .line 299
    :try_start_c4
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService : getDeviceInfo Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$400(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    goto/16 :goto_f

    .line 311
    :cond_fa
    if-nez v0, :cond_121

    .line 313
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService : critical problem : can\'t find deviceItem."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$400(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 315
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    goto/16 :goto_f

    .line 320
    :cond_121
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCService;->bHaveUnregisterSession:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$502(Lcom/sec/android/app/FileTransferClient/FTCService;Z)Z

    .line 322
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 323
    iget-object v3, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-eqz v3, :cond_17f

    .line 339
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_p2p_ssid"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 347
    :goto_13d
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->setSenderName(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/sec/android/app/FileTransferClient/Data/CPManager;->getCP()Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->requestFileTransfer(Lcom/samsung/android/application/fileshare/api/DeviceItem;Ljava/lang/String;[Ljava/io/File;)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$600(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d3

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 350
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$400(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/FileTransferClient/Ui/FTCDialogForWait;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_f

    .line 344
    :cond_17f
    const-string v3, "[FT]-Client"

    const-string v4, "FTCService :device Name ERROR getContentResolver is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13d

    .line 357
    :cond_187
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService : NOW BUSY. WAIT ANOTHER SESSION Accept."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$600(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$600(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_1a7} :catch_a8

    goto/16 :goto_f

    .line 370
    :cond_1a9
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService : can\'t Start mControllerAPI:EVENT_FTC_INIT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$400(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$400(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    goto/16 :goto_f

    .line 379
    :pswitch_1eb
    :try_start_1eb
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService : don\'t receive create object msg "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCService;->bRegisterCancelSession:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$702(Lcom/sec/android/app/FileTransferClient/FTCService;Z)Z

    .line 381
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.FileTransferClient.REMOVE_WAIT_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendBroadcast(Landroid/content/Intent;)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$400(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$400(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const/4 v1, 0x1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCService;->bRegisterCancelSession:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$702(Lcom/sec/android/app/FileTransferClient/FTCService;Z)Z

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_24a} :catch_24c

    goto/16 :goto_f

    .line 387
    :catch_24c
    move-exception v0

    .line 389
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on EVENT_CONNECTION_FAIL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 395
    :pswitch_267
    :try_start_267
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService : Translate error "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.FileTransferClient.REMOVE_WAIT_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$400(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f06001c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$400(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060031

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 399
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 400
    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const/16 v2, 0x9c7

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByServer(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    invoke-static {v1, v0, v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$800(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->checkFinish()V
    :try_end_2c5
    .catch Ljava/lang/Exception; {:try_start_267 .. :try_end_2c5} :catch_2c7

    goto/16 :goto_f

    .line 403
    :catch_2c7
    move-exception v0

    .line 405
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :Exception on EVENT_DATA_TRANSLATE_FAIL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 411
    :pswitch_2e2
    :try_start_2e2
    const-string v0, "[FT]-Client"

    const-string v1, "FTCService : don\'t receive server event. "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const v2, 0x7f060031

    invoke-virtual {v1, v2}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 413
    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v0

    :goto_303
    if-lez v1, :cond_31a

    .line 415
    iget-object v2, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    sget-object v0, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    const/16 v3, 0x9c7

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByServer(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    invoke-static {v2, v0, v3}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$800(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V

    .line 413
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_303

    .line 417
    :cond_31a
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mConnectionMode:I
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$902(Lcom/sec/android/app/FileTransferClient/FTCService;I)I

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/FileTransferClient/FTCService$1;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v0}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V
    :try_end_325
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_325} :catch_327

    goto/16 :goto_f

    .line 420
    :catch_327
    move-exception v0

    .line 422
    const-string v1, "[FT]-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTCService :EVENT_NOT_RESPONSE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_342
    move-object v0, v1

    goto/16 :goto_81

    .line 264
    nop

    :pswitch_data_346
    .packed-switch 0x7d1
        :pswitch_10
        :pswitch_21
        :pswitch_1eb
        :pswitch_267
        :pswitch_2e2
    .end packed-switch
.end method

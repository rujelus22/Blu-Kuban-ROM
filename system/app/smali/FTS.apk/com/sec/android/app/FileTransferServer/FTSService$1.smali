.class Lcom/sec/android/app/FileTransferServer/FTSService$1;
.super Landroid/os/Handler;
.source "FTSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferServer/FTSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferServer/FTSService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferServer/FTSService;)V
    .registers 2
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/high16 v11, 0x1080

    const/4 v10, 0x1

    .line 402
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_280

    .line 519
    :goto_8
    :pswitch_8
    return-void

    .line 406
    :pswitch_9
    const-string v8, "[FT]-Server"

    const-string v9, "FTSService :HANDLE_RESTART_SERVER  ---  only called onCreate..so. I will Force start"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static {v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$000(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/app/NotificationManager;

    move-result-object v8

    if-nez v8, :cond_27

    .line 408
    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    const-string v10, "notification"

    invoke-virtual {v8, v10}, Lcom/sec/android/app/FileTransferServer/FTSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    #setter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static {v9, v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$002(Lcom/sec/android/app/FileTransferServer/FTSService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 409
    :cond_27
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static {v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$000(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/app/NotificationManager;

    move-result-object v8

    const-string v9, "FTServer"

    const/16 v10, 0x206d

    invoke-virtual {v8, v9, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 411
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V
    invoke-static {v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$100(Lcom/sec/android/app/FileTransferServer/FTSService;)V

    goto :goto_8

    .line 417
    :pswitch_3a
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$200(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$200(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 418
    .local v0, activityManager:Landroid/app/ActivityManager;
    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 419
    .local v4, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 420
    .local v6, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, className:Ljava/lang/String;
    const-string v8, "[FT]-Server"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FTSService :HANDLE_CHECK_POPUP_PRIORITY : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v8, "com.sec.android.app.FileTransferServer.Ui.FTSDialogForAccept"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f9

    .line 424
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v8

    if-eqz v8, :cond_10f

    .line 426
    const-string v8, "[FT]-Server"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FTSService :Intent  : FTSDialogForAccept mWaitSender ----(case2)send Intent"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v10}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v3, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$200(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 428
    .local v3, i:Landroid/content/Intent;
    const-string v8, "DEVICE"

    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v9}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v8, "MAIN_TITLE"

    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v9}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getTransportDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    const-string v8, "FILE_COUNT"

    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v9}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getTotalCount()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    const-string v8, "SESSIONID"

    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v9}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {v3, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 433
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/FileTransferServer/FTSService;->startActivity(Landroid/content/Intent;)V

    .line 442
    .end local v3           #i:Landroid/content/Intent;
    :cond_f9
    :goto_f9
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$400(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x519

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 443
    const-string v8, "[FT]-Server"

    const-string v9, "FTSService :HANDLE_CHECK_POPUP_PRIORITY after 5000 "

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 438
    :cond_10f
    const-string v8, "[FT]-Server"

    const-string v9, "FTSService :HANDLE_CHECK_POPUP_PRIORITY  : can\'t find mWaitSender"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f9

    .line 459
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #className:Ljava/lang/String;
    .end local v4           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v6           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :pswitch_117
    :try_start_117
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->bShowAcceptDialog:Z
    invoke-static {v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$500(Lcom/sec/android/app/FileTransferServer/FTSService;)Z

    move-result v8

    if-nez v8, :cond_1f8

    .line 461
    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    #setter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v9, v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$302(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 462
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    invoke-static {v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$610(Lcom/sec/android/app/FileTransferServer/FTSService;)I

    .line 463
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    iget-object v9, v8, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_166

    .line 465
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    iget-object v9, v8, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 466
    const-string v8, "[FT]-Server"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FTSService :mWaitSenderQueue size(remove)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    iget-object v10, v10, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_166
    const-string v8, "[FT]-Server"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FTSService :Intent  : FTSDialogForAccept mWaitSender   ---- (case 1)send Intent"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v10}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance v3, Landroid/content/Intent;

    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$200(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/sec/android/app/FileTransferServer/Ui/FTSDialogForAccept;

    invoke-direct {v3, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 471
    .restart local v3       #i:Landroid/content/Intent;
    const-string v8, "DEVICE"

    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v9}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getFriendlyName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    const-string v8, "MAIN_TITLE"

    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v9}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getTransportDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 473
    const-string v8, "FILE_COUNT"

    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v9}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getTotalCount()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    const-string v8, "SESSIONID"

    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v9}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const/high16 v8, 0x1080

    invoke-virtual {v3, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 476
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    invoke-virtual {v8, v3}, Lcom/sec/android/app/FileTransferServer/FTSService;->startActivity(Landroid/content/Intent;)V
    :try_end_1db
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_1db} :catch_1dd

    goto/16 :goto_8

    .line 489
    .end local v3           #i:Landroid/content/Intent;
    :catch_1dd
    move-exception v2

    .line 491
    .local v2, e:Ljava/lang/Exception;
    const-string v8, "[FT]-Server"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FTSService :Exception on mHandler:HANDLE_REQUEST_SESSION "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 480
    .end local v2           #e:Ljava/lang/Exception;
    :cond_1f8
    :try_start_1f8
    const-string v8, "[FT]-Server"

    const-string v9, "FTSService : NOW BUSY. WAIT ANOTHER SESSION Accept."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$400(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x515

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 482
    .local v5, msgNew:Landroid/os/Message;
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$400(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->Busy_Check_Time:I
    invoke-static {v9}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$700(Lcom/sec/android/app/FileTransferServer/FTSService;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v8, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_21d
    .catch Ljava/lang/Exception; {:try_start_1f8 .. :try_end_21d} :catch_1dd

    goto/16 :goto_8

    .line 497
    .end local v5           #msgNew:Landroid/os/Message;
    :pswitch_21f
    :try_start_21f
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    iget-object v9, v8, Lcom/sec/android/app/FileTransferServer/FTSService;->mDelayedList:Ljava/util/ArrayList;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v9, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    const/4 v10, 0x1

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionClosed(Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V
    invoke-static {v9, v8, v10}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$800(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V
    :try_end_234
    .catch Ljava/lang/Exception; {:try_start_21f .. :try_end_234} :catch_236

    goto/16 :goto_8

    .line 500
    :catch_236
    move-exception v2

    .line 502
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "[FT]-Server"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FTSService :Exception on mHandler:HANDLE_REQUEST_CLOSE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 508
    .end local v2           #e:Ljava/lang/Exception;
    :pswitch_251
    :try_start_251
    const-string v8, "[FT]-Server"

    const-string v9, "FTSService : receive HANDLE_DATA_TRANSLATE_FAIL- connection is failed."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    .line 510
    .local v7, si:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    iget-object v8, p0, Lcom/sec/android/app/FileTransferServer/FTSService$1;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    const/16 v9, 0x5e1

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionError_sender(Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V
    invoke-static {v8, v7, v9}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$900(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_251 .. :try_end_263} :catch_265

    goto/16 :goto_8

    .line 512
    .end local v7           #si:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    :catch_265
    move-exception v2

    .line 514
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v8, "[FT]-Server"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FTSService :Exception on mHandler:HANDLE_DATA_TRANSLATE_FAIL "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 402
    :pswitch_data_280
    .packed-switch 0x515
        :pswitch_117
        :pswitch_21f
        :pswitch_8
        :pswitch_251
        :pswitch_3a
        :pswitch_9
    .end packed-switch
.end method

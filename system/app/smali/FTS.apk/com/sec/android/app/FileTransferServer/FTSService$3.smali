.class Lcom/sec/android/app/FileTransferServer/FTSService$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 1367
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 30
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1370
    const-string v23, "[FT]-Server"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "FTSService :mBroadcastReceiver:onReceive: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "  mConnectionMode -"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v25, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mConnectionMode:I
    invoke-static/range {v25 .. v25}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1600(Lcom/sec/android/app/FileTransferServer/FTSService;)I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :try_start_30
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1389
    .local v3, action:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.MEDIA_EJECT"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_64

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_df

    .line 1391
    :cond_64
    const-string v23, "[FT]-Server"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "FTSService :SDCARD EJECT:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->checkForDeviceRunning()Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1700(Lcom/sec/android/app/FileTransferServer/FTSService;)Z

    move-result v23

    if-eqz v23, :cond_ce

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const v24, 0x7f060027

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 1396
    .local v18, tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/SenderInfo;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, i:I
    :goto_ac
    if-lez v10, :cond_ce

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v24, v0

    add-int/lit8 v23, v10, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    const/16 v25, 0x5dd

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionError_sender(Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$900(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V

    .line 1396
    add-int/lit8 v10, v10, -0x1

    goto :goto_ac

    .line 1401
    .end local v10           #i:I
    .end local v18           #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/SenderInfo;>;"
    :cond_ce
    const-string v23, "[FT]-Server"

    const-string v24, "FTSService : stop device : SD CARD REMOVED"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$100(Lcom/sec/android/app/FileTransferServer/FTSService;)V

    .line 1703
    .end local v3           #action:Ljava/lang/String;
    :cond_de
    :goto_de
    return-void

    .line 1404
    .restart local v3       #action:Ljava/lang/String;
    :cond_df
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v23

    const-string v24, "com.sec.android.app.FileShareServer.SERVER_CHECK"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_118

    .line 1406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.sec.android.app.FileShareServer.SERVER_ALIVE"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/FileTransferServer/FTSService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_fb
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_30 .. :try_end_fb} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_fb} :catch_1bd

    goto :goto_de

    .line 1694
    .end local v3           #action:Ljava/lang/String;
    :catch_fc
    move-exception v8

    .line 1696
    .local v8, e:Landroid/content/res/Resources$NotFoundException;
    const-string v23, "[FT]-Server"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "FTSService :NotFoundException on broadcast receiver"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    .line 1533
    .end local v8           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v3       #action:Ljava/lang/String;
    :cond_118
    :try_start_118
    const-string v23, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1da

    .line 1536
    const-string v23, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/NetworkInfo;

    .line 1537
    .local v12, netInfo:Landroid/net/NetworkInfo;
    const-string v23, "[FT]-Server"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "FTSService :Detail State: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    invoke-virtual {v12}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v23

    if-nez v23, :cond_de

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mConnectionMode:I
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1602(Lcom/sec/android/app/FileTransferServer/FTSService;I)I

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->checkForDeviceRunning()Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1700(Lcom/sec/android/app/FileTransferServer/FTSService;)Z

    move-result v23

    if-eqz v23, :cond_1ab

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const v24, 0x7f060027

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 1544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 1545
    .restart local v18       #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/SenderInfo;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v10

    .restart local v10       #i:I
    :goto_189
    if-lez v10, :cond_1ab

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v24, v0

    add-int/lit8 v23, v10, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    const/16 v25, 0x5e1

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionError_sender(Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$900(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V

    .line 1545
    add-int/lit8 v10, v10, -0x1

    goto :goto_189

    .line 1550
    .end local v10           #i:I
    .end local v18           #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/SenderInfo;>;"
    :cond_1ab
    const-string v23, "[FT]-Server"

    const-string v24, "FTSService : stop device : connection is failed : direct fail"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$100(Lcom/sec/android/app/FileTransferServer/FTSService;)V
    :try_end_1bb
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_118 .. :try_end_1bb} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_1bb} :catch_1bd

    goto/16 :goto_de

    .line 1698
    .end local v3           #action:Ljava/lang/String;
    .end local v12           #netInfo:Landroid/net/NetworkInfo;
    :catch_1bd
    move-exception v9

    .line 1700
    .local v9, e1:Ljava/lang/Exception;
    const-string v23, "[FT]-Server"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "FTSService :Exception on broadcast receiver"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_de

    .line 1554
    .end local v9           #e1:Ljava/lang/Exception;
    .restart local v3       #action:Ljava/lang/String;
    :cond_1da
    :try_start_1da
    const-string v23, "com.sec.android.app.FileTransferServer.FTS_ACCEPT_SHOW"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_218

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$400(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x519

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$400(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x519

    const-wide/16 v25, 0x1388

    invoke-virtual/range {v23 .. v26}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1558
    const-string v23, "[FT]-Server"

    const-string v24, "FTSService :r emove HANDLE_CHECK_POPUP_PRIORITY  == HANDLE_CHECK_POPUP_PRIORITY after 5000 "

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/sec/android/app/FileTransferServer/FTSService;->bShowAcceptDialog:Z
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$502(Lcom/sec/android/app/FileTransferServer/FTSService;Z)Z

    goto/16 :goto_de

    .line 1561
    :cond_218
    const-string v23, "com.sec.android.app.FileTransferServer.FTS_ACCEPT_OK"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_415

    .line 1563
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v14

    .line 1564
    .local v14, path:Ljava/io/File;
    new-instance v17, Landroid/os/StatFs;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mSavePath:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1800(Lcom/sec/android/app/FileTransferServer/FTSService;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1565
    .local v17, stat:Landroid/os/StatFs;
    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockSize()I

    move-result v23

    move/from16 v0, v23

    int-to-long v6, v0

    .line 1566
    .local v6, blockSize:J
    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v19, v0

    .line 1567
    .local v19, totalBlocks:J
    mul-long v4, v6, v19

    .line 1568
    .local v4, availableMemory:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getTotalSize()J

    move-result-wide v21

    .line 1569
    .local v21, totalSize:J
    const-string v23, "[FT]-Server"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "FTSService :** check size :"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " >? "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    cmp-long v23, v4, v21

    if-gez v23, :cond_2df

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const v24, 0x7f060055

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 1574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->allowFileTransfer(Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V

    .line 1576
    new-instance v13, Landroid/content/Intent;

    const-string v23, "com.sec.android.app.FileTransferServer.FTS_ACCEPT_CANCEL"

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1577
    .local v13, noIntent:Landroid/content/Intent;
    const-string v23, "SESSIONID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/sec/android/app/FileTransferServer/FTSService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_de

    .line 1582
    .end local v13           #noIntent:Landroid/content/Intent;
    :cond_2df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$400(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x519

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1583
    const-string v23, "[FT]-Server"

    const-string v24, "FTSService :HANDLE_CHECK_POPUP_PRIORITY Removed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const-string v23, "SESSIONID"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1585
    .local v11, id:Ljava/lang/String;
    if-eqz v11, :cond_30d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v23

    if-nez v23, :cond_350

    .line 1587
    :cond_30d
    const-string v23, "[FT]-Server"

    const-string v24, "FTSService : Error : sessionID is not matched"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const v24, 0x7f060027

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 1589
    const-string v23, "[FT]-Server"

    const-string v24, "FTSService : stop device : FTS_ACCEPT_OK  but error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_de

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$100(Lcom/sec/android/app/FileTransferServer/FTSService;)V

    goto/16 :goto_de

    .line 1594
    :cond_350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3d2

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-nez v23, :cond_3c7

    .line 1599
    invoke-static {}, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->removeAll()V

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$000(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/app/NotificationManager;

    move-result-object v23

    if-nez v23, :cond_3a6

    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const-string v25, "notification"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/NotificationManager;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    #setter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$002(Lcom/sec/android/app/FileTransferServer/FTSService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 1602
    :cond_3a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$000(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/app/NotificationManager;

    move-result-object v23

    const-string v24, "FTServer"

    const/16 v25, 0x206e

    invoke-virtual/range {v23 .. v25}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "android.intent.action.FTS_NEWSESSION_START"

    invoke-direct/range {v24 .. v25}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/app/FileTransferServer/FTSService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1605
    :cond_3c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionRegister()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1900(Lcom/sec/android/app/FileTransferServer/FTSService;)V

    goto/16 :goto_de

    .line 1610
    :cond_3d2
    const-string v23, "[FT]-Server"

    const-string v24, "FTSService : Error : sessionID is not matched"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const v24, 0x7f060027

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_de

    .line 1614
    const-string v23, "[FT]-Server"

    const-string v24, "FTSService : stop device : FTS_ACCEPT_OK  but error"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$100(Lcom/sec/android/app/FileTransferServer/FTSService;)V

    goto/16 :goto_de

    .line 1621
    .end local v4           #availableMemory:J
    .end local v6           #blockSize:J
    .end local v11           #id:Ljava/lang/String;
    .end local v14           #path:Ljava/io/File;
    .end local v17           #stat:Landroid/os/StatFs;
    .end local v19           #totalBlocks:J
    .end local v21           #totalSize:J
    :cond_415
    const-string v23, "com.sec.android.app.FileTransferServer.FTS_ACCEPT_CANCEL"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4fe

    .line 1623
    const-string v11, ""

    .line 1624
    .restart local v11       #id:Ljava/lang/String;
    const-string v23, "SESSIONID"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$400(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/os/Handler;

    move-result-object v23

    const/16 v24, 0x519

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1626
    const-string v23, "[FT]-Server"

    const-string v24, "FTSService :HANDLE_CHECK_POPUP_PRIORITY Removed"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    if-eqz v11, :cond_44f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v23

    if-nez v23, :cond_492

    .line 1630
    :cond_44f
    const-string v23, "[FT]-Server"

    const-string v24, "FTSService : Error : sessionID is not matched"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const v24, 0x7f060027

    const/16 v25, 0x0

    invoke-static/range {v23 .. v25}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    .line 1633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSenderQueue:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_de

    .line 1635
    const-string v23, "[FT]-Server"

    const-string v24, "FTSService : stop device : FTS_ACCEPT_CANCEL"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->stopDevice()V
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$100(Lcom/sec/android/app/FileTransferServer/FTSService;)V

    goto/16 :goto_de

    .line 1640
    :cond_492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4db

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->allowFileTransfer(Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V

    .line 1649
    :goto_4c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/sec/android/app/FileTransferServer/FTSService;->bShowAcceptDialog:Z
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$502(Lcom/sec/android/app/FileTransferServer/FTSService;Z)Z

    .line 1650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$302(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    goto/16 :goto_de

    .line 1646
    :cond_4db
    const-string v23, "[FT]-Server"

    const-string v24, "FTSService : maybe Error : sessionID is not matched"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v24, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mWaitSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static/range {v24 .. v24}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$300(Lcom/sec/android/app/FileTransferServer/FTSService;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v24

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->allowFileTransfer(Lcom/samsung/android/application/fileshare/api/SenderInfo;Z)V

    goto :goto_4c3

    .line 1652
    .end local v11           #id:Ljava/lang/String;
    :cond_4fe
    const-string v23, "com.sec.android.app.FileTransferServer.FTS_DOWNLOAD_CANCELED"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_542

    .line 1654
    const-string v23, "SESSIONID"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1655
    .local v16, sessionID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->findCurrentSession(Ljava/lang/String;)Lcom/samsung/android/application/fileshare/api/SenderInfo;
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$2000(Lcom/sec/android/app/FileTransferServer/FTSService;Ljava/lang/String;)Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v15

    .line 1656
    .local v15, sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->cancelSession(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const/16 v24, 0x5dd

    move-object/from16 v0, v23

    move/from16 v1, v24

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionError_sender(Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V
    invoke-static {v0, v15, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$900(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V

    goto/16 :goto_de

    .line 1660
    .end local v15           #sender:Lcom/samsung/android/application/fileshare/api/SenderInfo;
    .end local v16           #sessionID:Ljava/lang/String;
    :cond_542
    const-string v23, "com.sec.android.app.FileTransferServer.FTS_DOWNLOAD_CANCEL_ALL"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5a9

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->checkForDeviceRunning()Z
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$1700(Lcom/sec/android/app/FileTransferServer/FTSService;)Z

    move-result v23

    if-eqz v23, :cond_de

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mSenderList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    .line 1665
    .restart local v18       #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/SenderInfo;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v10

    .restart local v10       #i:I
    :goto_568
    if-lez v10, :cond_de

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService;->mDeviceManager:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    move-object/from16 v24, v0

    add-int/lit8 v23, v10, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->cancelSession(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V

    .line 1668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v24, v0

    add-int/lit8 v23, v10, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    const/16 v25, 0x5dd

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v25

    #calls: Lcom/sec/android/app/FileTransferServer/FTSService;->sessionError_sender(Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$900(Lcom/sec/android/app/FileTransferServer/FTSService;Lcom/samsung/android/application/fileshare/api/SenderInfo;I)V

    .line 1665
    add-int/lit8 v10, v10, -0x1

    goto :goto_568

    .line 1672
    .end local v10           #i:I
    .end local v18           #tmpList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/android/application/fileshare/api/SenderInfo;>;"
    :cond_5a9
    const-string v23, "com.sec.android.app.FileTransferServer.FTS_SHOW_DOWNLOAD_LIST"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5c0

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Lcom/sec/android/app/FileTransferServer/FTSService;->bShowDownloadList:Z
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$2102(Lcom/sec/android/app/FileTransferServer/FTSService;Z)Z

    goto/16 :goto_de

    .line 1676
    :cond_5c0
    const-string v23, "com.sec.android.app.FileTransferServer.FTS_DESTROY_DOWNLOAD_LIST"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5d7

    .line 1678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    #setter for: Lcom/sec/android/app/FileTransferServer/FTSService;->bShowDownloadList:Z
    invoke-static/range {v23 .. v24}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$2102(Lcom/sec/android/app/FileTransferServer/FTSService;Z)Z

    goto/16 :goto_de

    .line 1680
    :cond_5d7
    const-string v23, "com.sec.android.app.FileShareServer.REMOVE_DOWN_NOTI"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5de
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1da .. :try_end_5de} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_5de} :catch_1bd

    move-result v23

    if-eqz v23, :cond_de

    .line 1684
    :try_start_5e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$000(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/app/NotificationManager;

    move-result-object v23

    if-nez v23, :cond_60c

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    const-string v25, "notification"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/NotificationManager;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    #setter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static {v0, v1}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$002(Lcom/sec/android/app/FileTransferServer/FTSService;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    .line 1686
    :cond_60c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/FileTransferServer/FTSService$3;->this$0:Lcom/sec/android/app/FileTransferServer/FTSService;

    move-object/from16 v23, v0

    #getter for: Lcom/sec/android/app/FileTransferServer/FTSService;->mNotiManager:Landroid/app/NotificationManager;
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/FileTransferServer/FTSService;->access$000(Lcom/sec/android/app/FileTransferServer/FTSService;)Landroid/app/NotificationManager;

    move-result-object v23

    const-string v24, "FTServer"

    const/16 v25, 0x206d

    invoke-virtual/range {v23 .. v25}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_61d
    .catch Ljava/lang/Exception; {:try_start_5e1 .. :try_end_61d} :catch_61f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5e1 .. :try_end_61d} :catch_fc

    goto/16 :goto_de

    .line 1688
    :catch_61f
    move-exception v8

    .line 1690
    .local v8, e:Ljava/lang/Exception;
    :try_start_620
    const-string v23, "[FT]-Server"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "FTSService :com.sec.android.app.FileShareServer.REMOVE_DOWN_NOTI == Exception type is "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_620 .. :try_end_63a} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_620 .. :try_end_63a} :catch_1bd

    goto/16 :goto_de
.end method

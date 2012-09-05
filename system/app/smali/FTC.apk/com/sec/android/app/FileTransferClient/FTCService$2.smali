.class Lcom/sec/android/app/FileTransferClient/FTCService$2;
.super Landroid/content/BroadcastReceiver;
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
    .line 1507
    iput-object p1, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1513
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1515
    .local v0, action:Ljava/lang/String;
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCService :mBroadcastReceiver:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4c

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9f

    .line 1518
    :cond_4c
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCService :SDCARD EJECT:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const v11, 0x7f060031

    invoke-virtual {v10, v11}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1520
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, i:I
    :goto_7d
    if-lez v3, :cond_93

    .line 1522
    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    const/16 v11, 0x9c7

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByServer(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    invoke-static {v10, v9, v11}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$800(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V

    .line 1520
    add-int/lit8 v3, v3, -0x1

    goto :goto_7d

    .line 1524
    :cond_93
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const/4 v10, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mConnectionMode:I
    invoke-static {v9, v10}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$902(Lcom/sec/android/app/FileTransferClient/FTCService;I)I

    .line 1525
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V

    .line 1663
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #i:I
    :cond_9e
    :goto_9e
    return-void

    .line 1572
    .restart local v0       #action:Ljava/lang/String;
    :cond_9f
    const-string v9, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_117

    .line 1573
    const-string v9, "networkInfo"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkInfo;

    .line 1574
    .local v6, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_9e

    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mConnectionMode:I
    invoke-static {v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$900(Lcom/sec/android/app/FileTransferClient/FTCService;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_9e

    .line 1575
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const v11, 0x7f060031

    invoke-virtual {v10, v11}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1576
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3       #i:I
    :goto_db
    if-lez v3, :cond_f1

    .line 1578
    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    const/16 v11, 0x9c7

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByServer(Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V
    invoke-static {v10, v9, v11}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$800(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;I)V

    .line 1576
    add-int/lit8 v3, v3, -0x1

    goto :goto_db

    .line 1580
    :cond_f1
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const/4 v10, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mConnectionMode:I
    invoke-static {v9, v10}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$902(Lcom/sec/android/app/FileTransferClient/FTCService;I)I

    .line 1581
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_fc} :catch_fd

    goto :goto_9e

    .line 1659
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #i:I
    .end local v6           #netInfo:Landroid/net/NetworkInfo;
    :catch_fd
    move-exception v1

    .line 1661
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCService :Exception on BroadcastReceiver :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    .line 1584
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #action:Ljava/lang/String;
    :cond_117
    :try_start_117
    const-string v9, "com.sec.android.app.FileTransferClient.FTC_ADD_SESSION"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_141

    .line 1586
    const-string v9, "[FT]-Client"

    const-string v10, "FTCService :com.sec.android.app.filetransfer.FTC_ADD_SESSION"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1588
    .local v2, extras:Landroid/os/Bundle;
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$600(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x7d2

    invoke-virtual {v9, v10, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1589
    .local v5, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$600(Lcom/sec/android/app/FileTransferClient/FTCService;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_9e

    .line 1593
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v5           #msg:Landroid/os/Message;
    :cond_141
    const-string v9, "com.sec.android.app.FileTransferClient.FTC_UPLOAD_CANCELED_ALL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_146} :catch_fd

    move-result v9

    if-eqz v9, :cond_1a5

    .line 1597
    :try_start_149
    const-string v9, "[FT]-Client"

    const-string v10, "FTCService :com.sec.android.app.FileTransferClient.FTC_UPLOAD_CANCELED_ALL"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const v11, 0x7f060031

    invoke-virtual {v10, v11}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1599
    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3       #i:I
    :goto_169
    if-lez v3, :cond_17d

    .line 1601
    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    sget-object v9, Lcom/sec/android/app/FileTransferClient/Data/SendingDataMem;->mSessionList:Ljava/util/ArrayList;

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByUser(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    invoke-static {v10, v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$1000(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V

    .line 1599
    add-int/lit8 v3, v3, -0x1

    goto :goto_169

    .line 1603
    :cond_17d
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const/4 v10, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCService;->mConnectionMode:I
    invoke-static {v9, v10}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$902(Lcom/sec/android/app/FileTransferClient/FTCService;I)I

    .line 1604
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->finishService()V
    :try_end_188
    .catch Ljava/lang/Exception; {:try_start_149 .. :try_end_188} :catch_18a

    goto/16 :goto_9e

    .line 1606
    .end local v3           #i:I
    :catch_18a
    move-exception v1

    .line 1608
    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_18b
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCService :FTC_UPLOAD_CANCELED_ALL error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e

    .line 1611
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1a5
    const-string v9, "com.sec.android.app.FileTransferClient.FTC_UPLOAD_CANCELED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_219

    .line 1613
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    iget-object v10, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const v11, 0x7f060030

    invoke-virtual {v10, v11}, Lcom/sec/android/app/FileTransferClient/FTCService;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_1c0} :catch_fd

    .line 1616
    :try_start_1c0
    const-string v9, "SDATA"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/FileTransferClient/Data/SessionData;

    .line 1617
    .local v7, sd:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v7}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionID()Ljava/lang/String;

    move-result-object v10

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->findSession(Ljava/lang/String;)Lcom/samsung/android/application/fileshare/api/SessionInfo;
    invoke-static {v9, v10}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$1100(Lcom/sec/android/app/FileTransferClient/FTCService;Ljava/lang/String;)Lcom/samsung/android/application/fileshare/api/SessionInfo;

    move-result-object v8

    .line 1618
    .local v8, si:Lcom/samsung/android/application/fileshare/api/SessionInfo;
    if-nez v8, :cond_1db

    .line 1620
    const-string v9, "[FT]-Client"

    const-string v10, "FTCService :FTC_UPLOAD_CANCELED - can\'t get the sessionInfo"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_1db
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCService :CancelSession:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/sec/android/app/FileTransferClient/Data/SessionData;->getSessionID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->cancelSessionByUser(Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    invoke-static {v9, v8}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$1000(Lcom/sec/android/app/FileTransferClient/FTCService;Lcom/samsung/android/application/fileshare/api/SessionInfo;)V
    :try_end_1fc
    .catch Ljava/lang/NullPointerException; {:try_start_1c0 .. :try_end_1fc} :catch_1fe
    .catch Ljava/lang/Exception; {:try_start_1c0 .. :try_end_1fc} :catch_fd

    goto/16 :goto_9e

    .line 1625
    .end local v7           #sd:Lcom/sec/android/app/FileTransferClient/Data/SessionData;
    .end local v8           #si:Lcom/samsung/android/application/fileshare/api/SessionInfo;
    :catch_1fe
    move-exception v1

    .line 1627
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_1ff
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCService :FTC_UPLOAD_CANCELE error:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e

    .line 1630
    .end local v1           #e:Ljava/lang/NullPointerException;
    :cond_219
    const-string v9, "com.sec.android.app.FileTransferClient.FTC_WAIT_CANCEL"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_228

    .line 1632
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #calls: Lcom/sec/android/app/FileTransferClient/FTCService;->cancelWaitingSessionByUser()V
    invoke-static {v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$1200(Lcom/sec/android/app/FileTransferClient/FTCService;)V

    goto/16 :goto_9e

    .line 1634
    :cond_228
    const-string v9, "com.sec.android.app.FileTransferClient.FTC_SHOW_UPLOAD_LIST"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23f

    .line 1636
    const-string v9, "[FT]-Client"

    const-string v10, "FTCService :onBind FTC Service: success"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const/4 v10, 0x1

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z
    invoke-static {v9, v10}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$1302(Lcom/sec/android/app/FileTransferClient/FTCService;Z)Z

    goto/16 :goto_9e

    .line 1639
    :cond_23f
    const-string v9, "com.sec.android.app.FileTransferClient.FTC_DESTROY_UPLOAD_LIST"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_256

    .line 1641
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    const/4 v10, 0x0

    #setter for: Lcom/sec/android/app/FileTransferClient/FTCService;->bShowUploadList:Z
    invoke-static {v9, v10}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$1302(Lcom/sec/android/app/FileTransferClient/FTCService;Z)Z

    .line 1642
    const-string v9, "[FT]-Client"

    const-string v10, "FTCService :bShowUploadList set to false~~"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e

    .line 1644
    :cond_256
    const-string v9, "com.sec.android.app.FileTransferClient.FTC_WAIT_CREATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27f

    .line 1646
    const-string v9, "[FT]-Client"

    const-string v10, "FTCService :receive : com.sec.android.app.FileTransferClient.FTC_WAIT_CREATE"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    #getter for: Lcom/sec/android/app/FileTransferClient/FTCService;->bHaveUnregisterSession:Z
    invoke-static {v9}, Lcom/sec/android/app/FileTransferClient/FTCService;->access$500(Lcom/sec/android/app/FileTransferClient/FTCService;)Z

    move-result v9

    if-nez v9, :cond_9e

    .line 1649
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.FileTransferClient.REMOVE_WAIT_POPUP"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v4, intent2:Landroid/content/Intent;
    iget-object v9, p0, Lcom/sec/android/app/FileTransferClient/FTCService$2;->this$0:Lcom/sec/android/app/FileTransferClient/FTCService;

    invoke-virtual {v9, v4}, Lcom/sec/android/app/FileTransferClient/FTCService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_9e

    .line 1656
    .end local v4           #intent2:Landroid/content/Intent;
    :cond_27f
    const-string v9, "[FT]-Client"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FTCService :Unknown action: Broadcast receiver :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_297
    .catch Ljava/lang/Exception; {:try_start_1ff .. :try_end_297} :catch_fd

    goto/16 :goto_9e
.end method

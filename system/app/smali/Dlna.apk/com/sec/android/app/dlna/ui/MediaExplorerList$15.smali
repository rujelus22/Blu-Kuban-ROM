.class Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;
.super Landroid/os/Handler;
.source "MediaExplorerList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dlna/ui/MediaExplorerList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)V
    .registers 2
    .parameter

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 1587
    monitor-enter p0

    :try_start_2
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_53

    .line 1589
    :try_start_5
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/app/AlertDialog;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_53
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_a} :catch_4e

    move-result-object v2

    if-nez v2, :cond_f

    .line 1684
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 1591
    :cond_f
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "total"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1592
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3200(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/widget/ProgressBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "total"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsTotalLeng:I
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3102(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I

    .line 1593
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3200(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/widget/ProgressBar;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsTotalLeng:I
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3100(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1594
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "total"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_f .. :try_end_4d} :catchall_53
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_4d} :catch_4e

    goto :goto_d

    .line 1681
    :catch_4e
    move-exception v1

    .line 1682
    .local v1, e:Ljava/lang/NullPointerException;
    :try_start_4f
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_d

    .line 1587
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catchall_53
    move-exception v2

    monitor-exit p0

    throw v2

    .line 1595
    :cond_56
    :try_start_56
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "contentName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d8

    .line 1596
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "contentName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    .local v0, contentName:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 1598
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const v5, 0x7f09006c

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1604
    :goto_a3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "contentName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1601
    :cond_ae
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progressDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3000(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/app/AlertDialog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const v5, 0x7f090021

    invoke-virtual {v4, v5}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_a3

    .line 1605
    .end local v0           #contentName:Ljava/lang/String;
    :cond_d8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fail"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_141

    .line 1606
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v3, 0x1

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2902(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z

    .line 1607
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail :  isFailed ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fail"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1609
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v2

    if-eqz v2, :cond_134

    .line 1610
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1611
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAManager;->selectUploadServerUdn(Ljava/lang/String;)Z

    goto/16 :goto_d

    .line 1613
    :cond_134
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_d

    .line 1614
    :cond_141
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "finishProgressAll"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e9

    .line 1615
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isWheelProgress:Z
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v2

    if-ne v2, v5, :cond_19e

    .line 1616
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->removeDialog(I)V

    .line 1619
    :goto_15b
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1620
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v2

    if-nez v2, :cond_1b1

    .line 1621
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v2

    if-eqz v2, :cond_1a5

    .line 1622
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x69

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1634
    :cond_187
    :goto_187
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3400(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1635
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3400(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_d

    .line 1618
    :cond_19e
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->removeDialog(I)V

    goto :goto_15b

    .line 1624
    :cond_1a5
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_187

    .line 1626
    :cond_1b1
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v2

    if-eqz v2, :cond_1dd

    .line 1627
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Uploader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/dlnaservice/Uploader;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_187

    .line 1628
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1629
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAManager;->selectUploadServerUdn(Ljava/lang/String;)Z

    goto :goto_187

    .line 1632
    :cond_1dd
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_187

    .line 1637
    :cond_1e9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "finishProgress"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_273

    .line 1638
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishProgress :  isFailed ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isWheelProgress:Z
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v2

    if-ne v2, v5, :cond_256

    .line 1640
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->removeDialog(I)V

    .line 1643
    :goto_221
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1644
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v2

    if-nez v2, :cond_25d

    .line 1645
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x68

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1650
    :cond_23f
    :goto_23f
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3400(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1651
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3400(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_d

    .line 1642
    :cond_256
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->removeDialog(I)V

    goto :goto_221

    .line 1647
    :cond_25d
    invoke-static {}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->getInstance()Lcom/sec/android/app/dlna/dlnaservice/Downloader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/dlnaservice/Downloader;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_23f

    .line 1648
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_23f

    .line 1653
    :cond_273
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "onefiledone"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2fd

    .line 1654
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onefiledone :  isFailed ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v2

    if-nez v2, :cond_2cf

    .line 1656
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v2

    if-eqz v2, :cond_2be

    .line 1657
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->receivedContentsLeng:I
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3512(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I

    .line 1666
    :cond_2be
    :goto_2be
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2902(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z

    .line 1667
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "onefiledone"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1660
    :cond_2cf
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v2

    if-eqz v2, :cond_2f1

    .line 1661
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1662
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAManager;->selectUploadServerUdn(Ljava/lang/String;)Z

    goto :goto_2be

    .line 1664
    :cond_2f1
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2be

    .line 1668
    :cond_2fd
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "onefiledonefail"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_365

    .line 1669
    const-string v2, "DLNA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onefiledonefail :  isFailed ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2900(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/dlna/DLNAManager;->getServer()Lcom/samsung/api/DeviceItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/api/DeviceItem;->isLocalDevice()Z

    move-result v2

    if-eqz v2, :cond_359

    .line 1671
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1672
    invoke-static {}, Lcom/sec/android/app/dlna/DLNAManager;->getInstance()Lcom/sec/android/app/dlna/DLNAManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/dlna/DLNAManager;->selectUploadServerUdn(Ljava/lang/String;)Z

    .line 1675
    :goto_348
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->isFailed:Z
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$2902(Lcom/sec/android/app/dlna/ui/MediaExplorerList;Z)Z

    .line 1676
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "onefiledone"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1674
    :cond_359
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->guiHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$300(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_348

    .line 1677
    :cond_365
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progress:I
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3500(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->contentsTotalLeng:I
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3100(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 1678
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "progress"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->receivedContentsLeng:I
    invoke-static {v2, v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3602(Lcom/sec/android/app/dlna/ui/MediaExplorerList;I)I

    .line 1679
    iget-object v2, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->mProgress:Landroid/widget/ProgressBar;
    invoke-static {v2}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3200(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)Landroid/widget/ProgressBar;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->progress:I
    invoke-static {v3}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3500(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/dlna/ui/MediaExplorerList$15;->this$0:Lcom/sec/android/app/dlna/ui/MediaExplorerList;

    #getter for: Lcom/sec/android/app/dlna/ui/MediaExplorerList;->receivedContentsLeng:I
    invoke-static {v4}, Lcom/sec/android/app/dlna/ui/MediaExplorerList;->access$3600(Lcom/sec/android/app/dlna/ui/MediaExplorerList;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_398
    .catchall {:try_start_56 .. :try_end_398} :catchall_53
    .catch Ljava/lang/NullPointerException; {:try_start_56 .. :try_end_398} :catch_4e

    goto/16 :goto_d
.end method

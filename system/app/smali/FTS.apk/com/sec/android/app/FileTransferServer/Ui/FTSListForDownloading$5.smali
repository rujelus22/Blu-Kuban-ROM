.class Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;
.super Landroid/os/Handler;
.source "FTSListForDownloading.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;


# direct methods
.method constructor <init>(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V
    .registers 2
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 429
    if-eqz p1, :cond_3c

    .line 431
    :try_start_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x57a

    if-ne v1, v2, :cond_d

    .line 433
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    #calls: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->updateList()V
    invoke-static {v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$300(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V

    .line 435
    :cond_d
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x57b

    if-ne v1, v2, :cond_3c

    .line 437
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    iget-object v1, v1, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    if-eqz v1, :cond_1d

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_3d

    .line 439
    :cond_1d
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/16 v2, 0x1389

    invoke-virtual {v1, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V

    .line 440
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-virtual {v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeListActivity()V

    .line 441
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$202(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Z)Z
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2f} :catch_63

    .line 453
    :cond_2f
    :goto_2f
    :try_start_2f
    sget-object v1, Lcom/sec/android/app/FileTransferServer/Data/FTSServerDatas;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7d

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    invoke-virtual {v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeListActivity()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_83

    .line 473
    :cond_3c
    :goto_3c
    return-void

    .line 443
    :cond_3d
    :try_start_3d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    iget-object v2, v2, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mCurrentSession:Lcom/sec/android/app/FileTransferServer/Data/SessionData;

    iget-object v2, v2, Lcom/sec/android/app/FileTransferServer/Data/SessionData;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    #getter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z
    invoke-static {v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$200(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 447
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/16 v2, 0x1389

    invoke-virtual {v1, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->removeDialog(I)V

    .line 448
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->mShowUploadPopup:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$202(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;Z)Z
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_62} :catch_63

    goto :goto_2f

    .line 469
    :catch_63
    move-exception v0

    .line 471
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListForDownloading :Exception on mhandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 459
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7d
    :try_start_7d
    iget-object v1, p0, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading$5;->this$0:Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;

    #calls: Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->updateList()V
    invoke-static {v1}, Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;->access$300(Lcom/sec/android/app/FileTransferServer/Ui/FTSListForDownloading;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_82} :catch_83

    goto :goto_3c

    .line 462
    :catch_83
    move-exception v0

    .line 464
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_84
    const-string v1, "[FT]-Server"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FTSListForDownloading :Exception1  on mhandler"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_9c} :catch_63

    goto :goto_3c
.end method

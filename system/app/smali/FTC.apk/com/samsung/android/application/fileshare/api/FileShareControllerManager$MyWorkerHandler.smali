.class Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;
.super Landroid/os/Handler;
.source "FileShareControllerManager.java"

# interfaces
.implements Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;
.implements Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    .line 410
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 411
    return-void
.end method

.method private handleSessionStatusChanged(Lcom/samsung/android/application/fileshare/api/SessionInfo;Ljava/lang/String;)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/16 v1, 0x2713

    const/16 v0, 0x2712

    const/16 v6, 0xbc4

    const/16 v5, 0xbc1

    .line 619
    if-nez p1, :cond_b

    .line 705
    :cond_a
    :goto_a
    :sswitch_a
    return-void

    .line 622
    :cond_b
    const/4 v2, -0x1

    .line 623
    if-eqz p2, :cond_89

    .line 624
    const-string v3, "READY_FOR_TRANSPORT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 625
    const/16 v0, 0x2711

    .line 644
    :cond_18
    :goto_18
    iget v2, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTransferStatus:I

    if-eq v2, v0, :cond_a

    .line 647
    iput v0, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTransferStatus:I

    .line 649
    iget v0, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTransferStatus:I

    sparse-switch v0, :sswitch_data_1a4

    goto :goto_a

    .line 692
    :sswitch_24
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 693
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Some error occured in session : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v0, v6, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    goto :goto_a

    .line 626
    :cond_4e
    const-string v3, "TRANSPORTING"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 628
    const-string v3, "CANCELED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    move v0, v1

    .line 629
    goto :goto_18

    .line 630
    :cond_60
    const-string v3, "ERROR"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 631
    const/16 v0, 0x2714

    goto :goto_18

    .line 632
    :cond_6b
    const-string v3, "FINISHED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 635
    const-string v0, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "session state is unknown type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_18

    .line 640
    :cond_89
    const-string v0, "[FT]-Stack"

    const-string v3, "session state is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_18

    .line 651
    :sswitch_92
    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->moveToNextFile()Ljava/io/File;

    move-result-object v0

    .line 652
    if-nez v0, :cond_119

    .line 654
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    iput v1, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTransferStatus:I

    .line 657
    :try_start_a3
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTargetFileShareDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    iget-object v2, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->closeSession(Lcom/samsung/android/application/fileshare/api/DeviceItem;Ljava/lang/String;)V
    :try_end_b0
    .catchall {:try_start_a3 .. :try_end_b0} :catchall_fd
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_a3 .. :try_end_b0} :catch_cc

    .line 661
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 662
    const-string v0, "[FT]-Stack"

    const-string v1, "File transfer is finished. Close Session."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v0, v5, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 658
    :catch_cc
    move-exception v0

    .line 659
    :try_start_cd
    const-string v1, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AVAILABLE exception"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catchall {:try_start_cd .. :try_end_e1} :catchall_fd

    .line 661
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 662
    const-string v0, "[FT]-Stack"

    const-string v1, "File transfer is finished. Close Session."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v0, v5, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 660
    :catchall_fd
    move-exception v0

    .line 661
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_118

    .line 662
    const-string v1, "[FT]-Stack"

    const-string v2, "File transfer is finished. Close Session."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v1, v5, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    .line 665
    :cond_118
    throw v0

    .line 670
    :cond_119
    :try_start_119
    const-string v1, "[FT]-Stack"

    const-string v2, "Invoke sendItem: "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTargetFileShareDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    iget-object v3, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->sendItem(Lcom/samsung/android/application/fileshare/api/DeviceItem;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    .line 674
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v1, 0xbc5

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V
    :try_end_134
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_119 .. :try_end_134} :catch_136

    goto/16 :goto_a

    .line 675
    :catch_136
    move-exception v0

    .line 676
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 677
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v0, v6, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 685
    :sswitch_14c
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 686
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Session Canceled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v1, 0xbc3

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 699
    :sswitch_179
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 700
    const-string v0, "[FT]-Stack"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Some error occured in session : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v0, v6, p1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 649
    :sswitch_data_1a4
    .sparse-switch
        -0x1 -> :sswitch_24
        0x2711 -> :sswitch_92
        0x2712 -> :sswitch_a
        0x2713 -> :sswitch_14c
        0x2714 -> :sswitch_179
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter

    .prologue
    const/16 v7, 0x270f

    const/16 v10, 0xbbe

    const/16 v6, 0xbbf

    const/4 v5, 0x0

    .line 415
    .line 419
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_3c8

    .line 573
    :cond_c
    :goto_c
    return-void

    .line 422
    :sswitch_d
    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$1(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/application/fileshare/NetworkUtils;->getLocalServerIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->setInterfaceAddress(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->start()V

    .line 424
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->setDeviceListChangedListener(Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;)V

    .line 425
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->setTransferDeviceEventListener(Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;)V

    .line 426
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->setFileTransferEventListener(Landroid/os/Handler;)V

    .line 427
    const-string v1, "[FT]-Stack"

    const-string v2, "a controller is started successfully."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v2, 0xbb9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V
    :try_end_53
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_d .. :try_end_53} :catch_54

    goto :goto_c

    .line 429
    :catch_54
    move-exception v1

    .line 430
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fail to start a controller error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/api/FileShareException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v1, v7, v5}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    goto :goto_c

    .line 436
    :sswitch_73
    :try_start_73
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessionsMutex:Ljava/lang/Object;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$2(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_7a
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_73 .. :try_end_7a} :catch_c6

    .line 437
    :try_start_7a
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_88
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_ce

    .line 439
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 436
    monitor-exit v2
    :try_end_98
    .catchall {:try_start_7a .. :try_end_98} :catchall_d8

    .line 442
    :try_start_98
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->setDeviceListChangedListener(Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI$OnDeviceListChangedListener;)V

    .line 443
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->setTransferDeviceEventListener(Lcom/samsung/android/application/fileshare/controlpoint/TransferCP$ITransferDeviceEventListener;)V

    .line 444
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->stop()V

    .line 445
    const-string v1, "[FT]-Stack"

    const-string v2, "successfully stopped a controller."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v2, 0xbba

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V
    :try_end_c4
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_98 .. :try_end_c4} :catch_c6

    goto/16 :goto_c

    .line 447
    :catch_c6
    move-exception v1

    .line 448
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v1, v7, v5}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 437
    :cond_ce
    :try_start_ce
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 438
    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/api/SessionInfo;->clear()V

    goto :goto_88

    .line 436
    :catchall_d8
    move-exception v1

    monitor-exit v2
    :try_end_da
    .catchall {:try_start_ce .. :try_end_da} :catchall_d8

    :try_start_da
    throw v1
    :try_end_db
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_da .. :try_end_db} :catch_c6

    .line 453
    :sswitch_db
    :try_start_db
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->search()V

    .line 454
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v2, 0xbbb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    .line 455
    const-string v1, "[FT]-Stack"

    const-string v2, "sending device search packet succefully."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_f3} :catch_f5

    goto/16 :goto_c

    .line 456
    :catch_f5
    move-exception v1

    .line 457
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FILE_SHARE_CONTROLLER_SEARCH exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 461
    :sswitch_10c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 463
    if-eqz v1, :cond_11f

    .line 464
    :try_start_112
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTargetFileShareDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    iget-object v4, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->cancelSession(Lcom/samsung/android/application/fileshare/api/DeviceItem;Ljava/lang/String;)V
    :try_end_11f
    .catchall {:try_start_112 .. :try_end_11f} :catchall_198
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_112 .. :try_end_11f} :catch_151

    .line 469
    :cond_11f
    iget-object v2, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 470
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v2, v6, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    .line 472
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "session : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is successfully canceled."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 466
    :catch_151
    move-exception v2

    .line 467
    :try_start_152
    const-string v3, "[FT]-Stack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "REQUEST_CANCEL_SESSION exception"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_166
    .catchall {:try_start_152 .. :try_end_166} :catchall_198

    .line 469
    iget-object v2, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    if-eqz v2, :cond_c

    .line 470
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v2, v6, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    .line 472
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "session : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is successfully canceled."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 468
    :catchall_198
    move-exception v2

    .line 469
    iget-object v3, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    if-eqz v3, :cond_1c9

    .line 470
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v3, v6, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    .line 472
    const-string v3, "[FT]-Stack"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "session : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is successfully canceled."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_1c9
    throw v2

    .line 478
    :sswitch_1ca
    :try_start_1ca
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    move-object v9, v0

    .line 479
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v1

    iget-object v2, v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTargetFileShareDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    invoke-virtual {v1, v2}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->connectToDevice(Lcom/samsung/android/application/fileshare/api/DeviceItem;)Z

    move-result v1

    if-eqz v1, :cond_240

    .line 480
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mControlAPI:Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;

    move-result-object v1

    .line 481
    iget-object v2, v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTargetFileShareDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .line 482
    iget-object v3, v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSenderName:Ljava/lang/String;

    .line 483
    iget-object v4, v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSenderDescription:Ljava/lang/String;

    .line 484
    iget-object v5, v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionDescription:Ljava/lang/String;

    .line 485
    iget v6, v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTotalCount:I

    .line 486
    iget-wide v7, v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTotalByteSize:J

    .line 480
    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/application/fileshare/controlpoint/FileShareControlAPI;->createSession(Lcom/samsung/android/application/fileshare/api/DeviceItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    .line 487
    const/16 v1, 0x2712

    iput v1, v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTransferStatus:I

    .line 488
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessionsMutex:Ljava/lang/Object;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$2(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_201
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_1ca .. :try_end_201} :catch_21d

    .line 489
    :try_start_201
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v3, v9, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v1, v3, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    monitor-exit v2
    :try_end_20d
    .catchall {:try_start_201 .. :try_end_20d} :catchall_23d

    .line 491
    :try_start_20d
    const-string v1, "[FT]-Stack"

    const-string v2, "file transfer request is successfully done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v2, 0xbbd

    invoke-virtual {v1, v2, v9}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V
    :try_end_21b
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_20d .. :try_end_21b} :catch_21d

    goto/16 :goto_c

    .line 498
    :catch_21d
    move-exception v1

    .line 499
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file transfer request is failed. error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/api/FileShareException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    invoke-virtual {v2, v10, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    goto/16 :goto_c

    .line 488
    :catchall_23d
    move-exception v1

    :try_start_23e
    monitor-exit v2
    :try_end_23f
    .catchall {:try_start_23e .. :try_end_23f} :catchall_23d

    :try_start_23f
    throw v1

    .line 494
    :cond_240
    const-string v1, "[FT]-Stack"

    const-string v2, "file transfer request is failed. device is not respond to subscribe request."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v2, 0xbbe

    .line 496
    new-instance v3, Lcom/samsung/android/application/fileshare/api/FileShareException;

    const/16 v4, -0x3eb

    invoke-direct {v3, v4}, Lcom/samsung/android/application/fileshare/api/FileShareException;-><init>(I)V

    .line 495
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V
    :try_end_255
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_23f .. :try_end_255} :catch_21d

    goto/16 :goto_c

    .line 505
    :sswitch_257
    :try_start_257
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 506
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 507
    if-eqz v1, :cond_c

    iget v2, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mCurrentFileIndex:I

    if-nez v2, :cond_c

    .line 510
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "device is now allowed to send file with session: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v3, 0xbc2

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V
    :try_end_28a
    .catch Ljava/lang/Exception; {:try_start_257 .. :try_end_28a} :catch_28c

    goto/16 :goto_c

    .line 514
    :catch_28c
    move-exception v1

    .line 515
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FILE_DOWNLOAD_STARTED exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 520
    :sswitch_2a3
    :try_start_2a3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 521
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 522
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 523
    if-eqz v1, :cond_c

    .line 524
    iget-wide v3, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSentByteSize:J

    int-to-long v5, v2

    add-long v2, v3, v5

    iput-wide v2, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSentByteSize:J

    .line 525
    const-string v2, "[FT]-Stack"

    const-string v3, "one specific file transfer is successfully done."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v3, 0xbc0

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V
    :try_end_2cc
    .catch Ljava/lang/Exception; {:try_start_2a3 .. :try_end_2cc} :catch_2ce

    goto/16 :goto_c

    .line 529
    :catch_2ce
    move-exception v1

    .line 530
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FILE_DOWNLOAD_FINISHED exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 535
    :sswitch_2e5
    :try_start_2e5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 536
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 537
    if-eqz v1, :cond_c

    .line 538
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "session : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is canceled by a device."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v3, 0xbc3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V
    :try_end_323
    .catch Ljava/lang/Exception; {:try_start_2e5 .. :try_end_323} :catch_325

    goto/16 :goto_c

    .line 542
    :catch_325
    move-exception v1

    .line 543
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FILE_DOWNLOAD_CANCELED exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 548
    :sswitch_33c
    :try_start_33c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 549
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 550
    if-eqz v1, :cond_c

    .line 551
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error occured in session : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v3, 0xbc4

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V
    :try_end_374
    .catch Ljava/lang/Exception; {:try_start_33c .. :try_end_374} :catch_376

    goto/16 :goto_c

    .line 555
    :catch_376
    move-exception v1

    .line 556
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FILE_DOWNLOAD_ERROR exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 561
    :sswitch_38d
    :try_start_38d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 562
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 563
    iget-object v3, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v3}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 564
    if-eqz v1, :cond_c

    .line 565
    iget-wide v3, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSentByteSize:J

    int-to-long v5, v2

    add-long v2, v3, v5

    iput-wide v2, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSentByteSize:J

    .line 566
    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v3, 0xbc0

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V
    :try_end_3af
    .catch Ljava/lang/Exception; {:try_start_38d .. :try_end_3af} :catch_3b1

    goto/16 :goto_c

    .line 568
    :catch_3b1
    move-exception v1

    .line 569
    const-string v2, "[FT]-Stack"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FILE_DOWNLOAD_PROGRESSED exception"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 419
    :sswitch_data_3c8
    .sparse-switch
        0x3ea -> :sswitch_2a3
        0x3eb -> :sswitch_38d
        0x3ec -> :sswitch_257
        0x3ed -> :sswitch_2e5
        0x3ee -> :sswitch_33c
        0xbb9 -> :sswitch_d
        0xbba -> :sswitch_73
        0xfa5 -> :sswitch_1ca
        0xfa6 -> :sswitch_10c
        0xfa7 -> :sswitch_db
    .end sparse-switch
.end method

.method public onDeviceChanged()V
    .registers 4

    .prologue
    .line 591
    const-string v0, "[FT]-Stack"

    const-string v1, "Device list changed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v1, 0xbbc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    .line 593
    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/application/fileshare/api/DeviceItem;)V
    .registers 11
    .parameter

    .prologue
    .line 597
    if-nez p1, :cond_3

    .line 616
    :goto_2
    return-void

    .line 600
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessionsMutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$2(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 601
    :try_start_a
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 602
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_18
    :goto_18
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_23

    .line 600
    monitor-exit v2

    goto :goto_2

    :catchall_20
    move-exception v0

    monitor-exit v2
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw v0

    .line 602
    :cond_23
    :try_start_23
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 603
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 604
    if-eqz v1, :cond_18

    .line 605
    iget-object v5, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTargetFileShareDevice:Lcom/samsung/android/application/fileshare/api/DeviceItem;

    .line 606
    if-eqz v5, :cond_18

    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getUdn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 607
    const/16 v6, 0x2714

    iput v6, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mTransferStatus:I

    .line 608
    const-string v6, "[FT]-Stack"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Device "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/samsung/android/application/fileshare/api/DeviceItem;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " removed."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v5, "[FT]-Stack"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Close assosiated session: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/samsung/android/application/fileshare/api/SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v5, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    const/16 v6, 0xbc4

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->notifyGUIEvent(ILjava/lang/Object;)V

    .line 611
    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_8b
    .catchall {:try_start_23 .. :try_end_8b} :catchall_20

    goto :goto_18
.end method

.method public onTransportStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "sessionID"
    .parameter "state"

    .prologue
    .line 578
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessionsMutex:Ljava/lang/Object;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$2(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 579
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;->access$3(Lcom/samsung/android/application/fileshare/api/FileShareControllerManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/application/fileshare/api/SessionInfo;

    .line 580
    .local v0, session:Lcom/samsung/android/application/fileshare/api/SessionInfo;
    if-eqz v0, :cond_18

    .line 581
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/application/fileshare/api/FileShareControllerManager$MyWorkerHandler;->handleSessionStatusChanged(Lcom/samsung/android/application/fileshare/api/SessionInfo;Ljava/lang/String;)V

    .line 578
    :cond_18
    monitor-exit v2

    .line 587
    return-void

    .line 578
    .end local v0           #session:Lcom/samsung/android/application/fileshare/api/SessionInfo;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw v1
.end method

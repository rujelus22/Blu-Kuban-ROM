.class Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;
.super Landroid/os/Handler;
.source "FileShareDeviceManager.java"

# interfaces
.implements Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;
.implements Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 392
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    .line 393
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 394
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 441
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3b

    sparse-switch v1, :sswitch_data_9c

    .line 477
    :goto_5
    return-void

    .line 444
    :sswitch_6
    :try_start_6
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;)Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mAppContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->access$1(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/application/fileshare/NetworkUtils;->getLocalServerIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->setInterfaceAddress(Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;)Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->start()V

    .line 446
    const-string v1, "[FT]-Stack"

    const-string v2, "stack: Device API start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v2, 0x1b59

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V
    :try_end_31
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_6 .. :try_end_31} :catch_32
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_31} :catch_3b

    goto :goto_5

    .line 448
    :catch_32
    move-exception v0

    .line 449
    .local v0, e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    :try_start_33
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v2, 0x270f

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_3b

    goto :goto_5

    .line 472
    .end local v0           #e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    :catch_3b
    move-exception v0

    .line 474
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "[FT]-Stack"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "exception on handleMessage():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 454
    .end local v0           #e:Ljava/lang/Exception;
    :sswitch_51
    :try_start_51
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;)Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->stop()V

    .line 455
    const-string v1, "[FT]-Stack"

    const-string v2, "stack: Device API stop"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v2, 0x1b5a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V
    :try_end_69
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_51 .. :try_end_69} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_69} :catch_3b

    goto :goto_5

    .line 457
    :catch_6a
    move-exception v0

    .line 458
    .local v0, e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    :try_start_6b
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v2, 0x270f

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_72} :catch_3b

    goto :goto_5

    .line 463
    .end local v0           #e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    :sswitch_73
    :try_start_73
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    #getter for: Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->mDeviceAPI:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;
    invoke-static {v1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->access$0(Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;)Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI;->setFriendlyName(Ljava/lang/String;)V

    .line 464
    const-string v1, "[FT]-Stack"

    const-string v2, "stack: Device API set Friendly Name"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v2, 0x1b5b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V
    :try_end_8f
    .catch Lcom/samsung/android/application/fileshare/api/FileShareException; {:try_start_73 .. :try_end_8f} :catch_91
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_8f} :catch_3b

    goto/16 :goto_5

    .line 466
    :catch_91
    move-exception v0

    .line 467
    .restart local v0       #e:Lcom/samsung/android/application/fileshare/api/FileShareException;
    :try_start_92
    iget-object v1, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v2, 0x270f

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_99} :catch_3b

    goto/16 :goto_5

    .line 441
    nop

    :sswitch_data_9c
    .sparse-switch
        0xfa4 -> :sswitch_73
        0x1b59 -> :sswitch_6
        0x1b5a -> :sswitch_51
    .end sparse-switch
.end method

.method public onCancelSessionRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    .registers 4
    .parameter "cp"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v1, 0x1b5e

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V

    .line 434
    return-void
.end method

.method public onCloseSessionRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    .registers 4
    .parameter "cp"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v1, 0x1b5d

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V

    .line 424
    return-void
.end method

.method public onCreateSessionRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V
    .registers 4
    .parameter "cp"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v1, 0x1b5c

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V

    .line 429
    return-void
.end method

.method public onTransferFailed(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 5
    .parameter "sender"
    .parameter "info"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v1, 0x1b62

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V

    .line 414
    return-void
.end method

.method public onTransferFinished(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 5
    .parameter "sender"
    .parameter "info"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v1, 0x1b61

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V

    .line 399
    return-void
.end method

.method public onTransferProgress(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 5
    .parameter "sender"
    .parameter "info"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v1, 0x1b63

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V

    .line 404
    return-void
.end method

.method public onTransferRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 5
    .parameter "sender"
    .parameter "info"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v1, 0x1b5f

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V

    .line 409
    return-void
.end method

.method public onTransferStarted(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    .registers 5
    .parameter "sender"
    .parameter "info"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager$MyWorkerHandler;->this$0:Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;

    const/16 v1, 0x1b60

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/application/fileshare/api/FileShareDeviceManager;->notifyEvent(ILjava/lang/Object;)V

    .line 419
    return-void
.end method

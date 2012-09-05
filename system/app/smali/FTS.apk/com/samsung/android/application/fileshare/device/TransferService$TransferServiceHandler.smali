.class Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;
.super Landroid/os/Handler;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/application/fileshare/device/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/application/fileshare/device/TransferService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/application/fileshare/device/TransferService;Landroid/os/Looper;)V
    .registers 3
    .parameter
    .parameter "looper"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    .line 410
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 411
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 18
    .parameter "msg"

    .prologue
    .line 415
    const-string v7, ""

    .line 416
    .local v7, sessionID:Ljava/lang/String;
    const/4 v6, 0x0

    .line 417
    .local v6, session:Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;
    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_29e

    .line 537
    :goto_a
    return-void

    .line 419
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6           #session:Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;
    check-cast v6, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;

    .line 420
    .restart local v6       #session:Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;
    iget-object v7, v6, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSessionID:Ljava/lang/String;

    .line 421
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    const-string v10, "CANCELED"

    invoke-virtual {v9, v7, v10}, Lcom/samsung/android/application/fileshare/device/TransferService;->setTransferStatus(Ljava/lang/String;Ljava/lang/String;)Z

    .line 423
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v10, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionsMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 424
    if-eqz v6, :cond_48

    :try_start_25
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v6}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 425
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const/16 v11, 0x1581

    iget-object v12, v6, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSender:Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-virtual {v9, v11, v12}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 426
    .local v5, m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    invoke-virtual {v9, v5}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 423
    .end local v5           #m:Landroid/os/Message;
    :cond_48
    monitor-exit v10

    goto :goto_a

    :catchall_4a
    move-exception v9

    monitor-exit v10
    :try_end_4c
    .catchall {:try_start_25 .. :try_end_4c} :catchall_4a

    throw v9

    .line 431
    :sswitch_4d
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6           #session:Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;
    check-cast v6, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;

    .line 433
    .restart local v6       #session:Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferStatus:Lcom/samsung/upnp/StateVariable;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    invoke-virtual {v10, v6}, Lcom/samsung/android/application/fileshare/device/TransferService;->getTransferStatusEventString(Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/upnp/StateVariable;->setValue(Ljava/lang/String;)V

    .line 434
    iget-object v9, v6, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    const-string v10, "FINISHED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 439
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v10, v6, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSessionID:Ljava/lang/String;

    const-string v11, "READY_FOR_TRANSPORT"

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/application/fileshare/device/TransferService;->setTransferStatus(Ljava/lang/String;Ljava/lang/String;)Z

    .line 443
    :cond_79
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v10, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionsMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 444
    :try_start_80
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 445
    .local v8, set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8e
    :goto_8e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_9a

    .line 443
    monitor-exit v10

    goto/16 :goto_a

    .end local v8           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;>;>;"
    :catchall_97
    move-exception v9

    monitor-exit v10
    :try_end_99
    .catchall {:try_start_80 .. :try_end_99} :catchall_97

    throw v9

    .line 445
    .restart local v8       #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;>;>;"
    :cond_9a
    :try_start_9a
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 446
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_8e

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    if-eqz v9, :cond_8e

    .line 448
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    const-string v12, "CANCELED"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d0

    .line 449
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    const-string v12, "ERROR"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 451
    :cond_d0
    invoke-interface {v8, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_d3
    .catchall {:try_start_9a .. :try_end_d3} :catchall_97

    goto :goto_8e

    .line 458
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;>;"
    .end local v8           #set:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;>;>;"
    :sswitch_d4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v6           #session:Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;
    check-cast v6, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;

    .line 459
    .restart local v6       #session:Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mFileGetter:Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;

    iget-object v10, v6, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mSessionID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/samsung/android/application/fileshare/device/SimpleFileDownloader;->cancelTransfer(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 462
    :sswitch_e7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v10, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListenerMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 463
    :try_start_ee
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;

    if-eqz v9, :cond_105

    .line 464
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v11, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-interface {v11, v9}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;->onCreateSessionRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V

    .line 462
    :cond_105
    monitor-exit v10

    goto/16 :goto_a

    :catchall_108
    move-exception v9

    monitor-exit v10
    :try_end_10a
    .catchall {:try_start_ee .. :try_end_10a} :catchall_108

    throw v9

    .line 468
    :sswitch_10b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v10, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListenerMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 469
    :try_start_112
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;

    if-eqz v9, :cond_129

    .line 470
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v11, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-interface {v11, v9}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;->onCloseSessionRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V

    .line 468
    :cond_129
    monitor-exit v10

    goto/16 :goto_a

    :catchall_12c
    move-exception v9

    monitor-exit v10
    :try_end_12e
    .catchall {:try_start_112 .. :try_end_12e} :catchall_12c

    throw v9

    .line 474
    :sswitch_12f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v10, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListenerMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 475
    :try_start_136
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;

    if-eqz v9, :cond_14d

    .line 476
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v11, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/samsung/android/application/fileshare/api/SenderInfo;

    invoke-interface {v11, v9}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ISessionRequestReceivedListener;->onCancelSessionRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;)V

    .line 474
    :cond_14d
    monitor-exit v10

    goto/16 :goto_a

    :catchall_150
    move-exception v9

    monitor-exit v10
    :try_end_152
    .catchall {:try_start_136 .. :try_end_152} :catchall_150

    throw v9

    .line 480
    :sswitch_153
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v10, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListenerMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 481
    :try_start_15a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    if-eqz v9, :cond_175

    .line 482
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    .line 483
    .local v4, key:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    invoke-virtual {v4}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v11

    invoke-interface {v9, v11, v4}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;->onTransferRequested(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V

    .line 480
    .end local v4           #key:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    :cond_175
    monitor-exit v10

    goto/16 :goto_a

    :catchall_178
    move-exception v9

    monitor-exit v10
    :try_end_17a
    .catchall {:try_start_15a .. :try_end_17a} :catchall_178

    throw v9

    .line 488
    :sswitch_17b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v10, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListenerMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 489
    :try_start_182
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    if-eqz v9, :cond_19d

    .line 490
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    .line 491
    .restart local v4       #key:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    invoke-virtual {v4}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v11

    invoke-interface {v9, v11, v4}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;->onTransferStarted(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V

    .line 488
    .end local v4           #key:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    :cond_19d
    monitor-exit v10

    goto/16 :goto_a

    :catchall_1a0
    move-exception v9

    monitor-exit v10
    :try_end_1a2
    .catchall {:try_start_182 .. :try_end_1a2} :catchall_1a0

    throw v9

    .line 497
    :sswitch_1a3
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    .line 498
    .local v3, item:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    invoke-virtual {v3}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/application/fileshare/api/SenderInfo;->getSessionID()Ljava/lang/String;

    move-result-object v7

    .line 499
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v10, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessionsMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 500
    :try_start_1b8
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mSessions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;

    move-object v6, v0

    .line 501
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v11, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListenerMutex:Ljava/lang/Object;

    monitor-enter v11
    :try_end_1cd
    .catchall {:try_start_1b8 .. :try_end_1cd} :catchall_22a

    .line 502
    :try_start_1cd
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    .line 503
    .local v2, info:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    if-eqz v2, :cond_1e1

    invoke-virtual {v2}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getDownloadedSize()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getFileSize()J

    move-result-wide v14

    cmp-long v9, v12, v14

    if-eqz v9, :cond_259

    .line 505
    :cond_1e1
    if-eqz v6, :cond_20f

    iget-object v9, v6, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    const-string v12, "CANCELED"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_20f

    .line 506
    const-string v9, "CANCELED"

    iput-object v9, v6, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    .line 507
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    if-eqz v9, :cond_206

    .line 508
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    invoke-virtual {v2}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v12

    invoke-interface {v9, v12, v2}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;->onTransferFailed(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V

    .line 509
    :cond_206
    if-nez v2, :cond_22d

    .line 510
    const-string v9, "[FT]-Stack"

    const-string v12, "Fail to download : invalid session info"

    invoke-static {v9, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_20f
    :goto_20f
    if-eqz v6, :cond_226

    .line 522
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    const/16 v12, 0x157e

    invoke-virtual {v9, v12, v6}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 523
    .restart local v5       #m:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mWorkerHandler:Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;

    invoke-virtual {v9, v5}, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    .end local v5           #m:Landroid/os/Message;
    :cond_226
    monitor-exit v11
    :try_end_227
    .catchall {:try_start_1cd .. :try_end_227} :catchall_256

    .line 499
    :try_start_227
    monitor-exit v10

    goto/16 :goto_a

    .end local v2           #info:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    :catchall_22a
    move-exception v9

    monitor-exit v10
    :try_end_22c
    .catchall {:try_start_227 .. :try_end_22c} :catchall_22a

    throw v9

    .line 512
    .restart local v2       #info:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    :cond_22d
    :try_start_22d
    const-string v9, "[FT]-Stack"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Fail to download : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is fail to download(size is not correct)."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20f

    .line 501
    .end local v2           #info:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    :catchall_256
    move-exception v9

    monitor-exit v11
    :try_end_258
    .catchall {:try_start_22d .. :try_end_258} :catchall_256

    :try_start_258
    throw v9
    :try_end_259
    .catchall {:try_start_258 .. :try_end_259} :catchall_22a

    .line 516
    .restart local v2       #info:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    :cond_259
    if-eqz v6, :cond_25f

    .line 517
    :try_start_25b
    const-string v9, "FINISHED"

    iput-object v9, v6, Lcom/samsung/android/application/fileshare/device/TransferService$SessionInfo;->mTransferStatus:Ljava/lang/String;

    .line 518
    :cond_25f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    if-eqz v9, :cond_20f

    .line 519
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    invoke-virtual {v2}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v12

    invoke-interface {v9, v12, v2}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;->onTransferFinished(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V
    :try_end_274
    .catchall {:try_start_25b .. :try_end_274} :catchall_256

    goto :goto_20f

    .line 529
    .end local v2           #info:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    .end local v3           #item:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    :sswitch_275
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v10, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListenerMutex:Ljava/lang/Object;

    monitor-enter v10

    .line 530
    :try_start_27c
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    if-eqz v9, :cond_297

    .line 531
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;

    .line 532
    .restart local v4       #key:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/application/fileshare/device/TransferService$TransferServiceHandler;->this$0:Lcom/samsung/android/application/fileshare/device/TransferService;

    iget-object v9, v9, Lcom/samsung/android/application/fileshare/device/TransferService;->mTransferListener:Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;

    invoke-virtual {v4}, Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;->getSenderInfo()Lcom/samsung/android/application/fileshare/api/SenderInfo;

    move-result-object v11

    invoke-interface {v9, v11, v4}, Lcom/samsung/android/application/fileshare/device/FileShareDeviceAPI$ITransferStateListener;->onTransferProgress(Lcom/samsung/android/application/fileshare/api/SenderInfo;Lcom/samsung/android/application/fileshare/api/TransferItem;)V

    .line 529
    .end local v4           #key:Lcom/samsung/android/application/fileshare/device/DefaultTransferItemInfo;
    :cond_297
    monitor-exit v10

    goto/16 :goto_a

    :catchall_29a
    move-exception v9

    monitor-exit v10
    :try_end_29c
    .catchall {:try_start_27c .. :try_end_29c} :catchall_29a

    throw v9

    .line 417
    nop

    :sswitch_data_29e
    .sparse-switch
        0x157e -> :sswitch_4d
        0x157f -> :sswitch_e7
        0x1580 -> :sswitch_10b
        0x1581 -> :sswitch_12f
        0x1582 -> :sswitch_b
        0x1583 -> :sswitch_d4
        0x182ba -> :sswitch_17b
        0x182bb -> :sswitch_153
        0x182bc -> :sswitch_1a3
        0x182bd -> :sswitch_275
    .end sparse-switch
.end method

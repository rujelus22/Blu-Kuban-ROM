.class Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
.super Landroid/os/Handler;
.source "SafeReaderAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vlingo/client/safereader/SafeReaderAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TTSHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;


# direct methods
.method private constructor <init>(Lcom/vlingo/client/safereader/SafeReaderAPI;)V
    .registers 2
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vlingo/client/safereader/SafeReaderAPI;Lcom/vlingo/client/safereader/SafeReaderAPI$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;-><init>(Lcom/vlingo/client/safereader/SafeReaderAPI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .parameter "msg"

    .prologue
    .line 431
    iget-object v7, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    monitor-enter v7

    .line 432
    :try_start_3
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;
    invoke-static {v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$100(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/ISafeReaderService;

    move-result-object v6

    if-nez v6, :cond_24

    .line 433
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v6

    iget-object v8, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_APIHandler:Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;
    invoke-static {v8}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$300(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->sendMessage(Landroid/os/Message;)Z

    .line 434
    monitor-exit v7

    .line 518
    :goto_23
    return-void

    .line 436
    :cond_24
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_12c

    .line 517
    :cond_29
    :goto_29
    :pswitch_29
    monitor-exit v7

    goto :goto_23

    :catchall_2b
    move-exception v6

    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v6

    .line 438
    :pswitch_2e
    :try_start_2e
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/vlingo/client/safereader/SafeReaderAPI;->start(Z)V

    goto :goto_29

    .line 441
    :pswitch_35
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/vlingo/client/safereader/SafeReaderAPI;->stop(Z)V

    goto :goto_29

    .line 444
    :pswitch_3c
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/vlingo/client/safereader/SafeReaderAPI;->start(Z)V

    goto :goto_29

    .line 447
    :pswitch_43
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/vlingo/client/safereader/SafeReaderAPI;->stop(Z)V

    goto :goto_29

    .line 450
    :pswitch_4a
    iget-object v8, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->pause(I)V

    goto :goto_29

    .line 453
    :pswitch_58
    iget-object v8, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->resume(I)V

    goto :goto_29

    .line 456
    :pswitch_66
    iget-object v8, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v8, v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->speak(Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_29

    .line 459
    :pswitch_70
    iget-object v8, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, [Lcom/vlingo/client/core/tts/TTSDemand;

    check-cast v6, [Lcom/vlingo/client/core/tts/TTSDemand;

    invoke-virtual {v8, v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->speakCompondRequests([Lcom/vlingo/client/core/tts/TTSDemand;)V

    goto :goto_29

    .line 462
    :pswitch_7c
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    invoke-virtual {v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->reloadOnboardTTS()V

    goto :goto_29

    .line 465
    :pswitch_82
    iget-object v8, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v8, v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->cancel(Z)V

    goto :goto_29

    .line 468
    :pswitch_90
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderFeature;

    .line 469
    .local v1, f:Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderFeature;
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget v8, v1, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderFeature;->What:I

    iget-boolean v9, v1, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderFeature;->OnOff:Z

    invoke-virtual {v6, v8, v9}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setFeature(IZ)V

    goto :goto_29

    .line 472
    .end local v1           #f:Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderFeature;
    :pswitch_9e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderIntFeature;

    .line 473
    .local v2, feature:Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderIntFeature;
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget v8, v2, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderIntFeature;->What:I

    iget v9, v2, Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderIntFeature;->Value:I

    invoke-virtual {v6, v8, v9}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setIntFeature(II)V

    goto/16 :goto_29

    .line 476
    .end local v2           #feature:Lcom/vlingo/client/safereader/SafeReaderAPI$SafeReaderIntFeature;
    :pswitch_ad
    iget-object v8, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setLanguage(I)V

    goto/16 :goto_29

    .line 479
    :pswitch_bc
    iget-object v8, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v8, v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setBluetoothConnected(Z)V

    goto/16 :goto_29

    .line 482
    :pswitch_cb
    iget-object v8, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->setVoice(I)V

    goto/16 :goto_29

    .line 485
    :pswitch_da
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    invoke-virtual {v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->skipCurrentlyPlayingItem()V

    goto/16 :goto_29

    .line 488
    :pswitch_e1
    iget-object v8, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->removeNotificationWithID(I)V

    goto/16 :goto_29

    .line 491
    :pswitch_f0
    iget-object v8, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/vlingo/client/core/tts/ITTSListener;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v6, v9}, Lcom/vlingo/client/safereader/SafeReaderAPI;->addTTSListener(Lcom/vlingo/client/core/tts/ITTSListener;I)V

    goto/16 :goto_29

    .line 494
    :pswitch_fd
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v8}, Lcom/vlingo/client/safereader/SafeReaderAPI;->removeTTSListener(I)V
    :try_end_104
    .catchall {:try_start_2e .. :try_end_104} :catchall_2b

    goto/16 :goto_29

    .line 498
    :pswitch_106
    :try_start_106
    invoke-static {}, Lcom/vlingo/client/settings/Settings;->isSafeReaderEnabled()Z

    move-result v4

    .line 499
    .local v4, old:Z
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    #getter for: Lcom/vlingo/client/safereader/SafeReaderAPI;->m_SafeReader:Lcom/vlingo/client/safereader/ISafeReaderService;
    invoke-static {v6}, Lcom/vlingo/client/safereader/SafeReaderAPI;->access$100(Lcom/vlingo/client/safereader/SafeReaderAPI;)Lcom/vlingo/client/safereader/ISafeReaderService;

    move-result-object v6

    invoke-interface {v6}, Lcom/vlingo/client/safereader/ISafeReaderService;->isSafeReaderEnabled()Z

    move-result v3

    .line 500
    .local v3, now:Z
    if-eq v4, v3, :cond_29

    .line 501
    invoke-static {v3}, Lcom/vlingo/client/settings/Settings;->setSafeReaderEnabled(Z)V
    :try_end_119
    .catchall {:try_start_106 .. :try_end_119} :catchall_2b
    .catch Landroid/os/RemoteException; {:try_start_106 .. :try_end_119} :catch_11b

    goto/16 :goto_29

    .line 508
    .end local v3           #now:Z
    .end local v4           #old:Z
    :catch_11b
    move-exception v0

    .line 509
    .local v0, e:Landroid/os/RemoteException;
    :try_start_11c
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_29

    .line 513
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_121
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/vlingo/client/safereader/SafeReaderAPI$MessageContextReceiver;

    .line 514
    .local v5, receiver:Lcom/vlingo/client/safereader/SafeReaderAPI$MessageContextReceiver;
    iget-object v6, p0, Lcom/vlingo/client/safereader/SafeReaderAPI$TTSHandler;->this$0:Lcom/vlingo/client/safereader/SafeReaderAPI;

    invoke-virtual {v6, v5}, Lcom/vlingo/client/safereader/SafeReaderAPI;->getCurrentMessageContext(Lcom/vlingo/client/safereader/SafeReaderAPI$MessageContextReceiver;)V
    :try_end_12a
    .catchall {:try_start_11c .. :try_end_12a} :catchall_2b

    goto/16 :goto_29

    .line 436
    :pswitch_data_12c
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_35
        :pswitch_4a
        :pswitch_66
        :pswitch_82
        :pswitch_90
        :pswitch_106
        :pswitch_ad
        :pswitch_cb
        :pswitch_58
        :pswitch_e1
        :pswitch_29
        :pswitch_f0
        :pswitch_fd
        :pswitch_70
        :pswitch_7c
        :pswitch_121
        :pswitch_da
        :pswitch_3c
        :pswitch_43
        :pswitch_9e
        :pswitch_bc
    .end packed-switch
.end method

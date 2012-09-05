.class Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;
.super Landroid/os/Handler;
.source "TransferService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/youtube/core/transfer/TransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/transfer/TransferService;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/transfer/TransferService;)V
    .registers 3
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    .line 433
    invoke-virtual {p1}, Lcom/google/android/youtube/core/transfer/TransferService;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 434
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .parameter "msg"

    .prologue
    const/16 v10, 0x1f

    const/4 v8, 0x1

    .line 438
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_140

    .line 511
    :cond_8
    :goto_8
    return-void

    .line 442
    :pswitch_9
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    .line 443
    .local v6, snapshots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/transfer/Transfer;>;"
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #calls: Lcom/google/android/youtube/core/transfer/TransferService;->restore(Ljava/util/List;)V
    invoke-static {v8, v6}, Lcom/google/android/youtube/core/transfer/TransferService;->access$200(Lcom/google/android/youtube/core/transfer/TransferService;Ljava/util/List;)V

    goto :goto_8

    .line 448
    .end local v6           #snapshots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/transfer/Transfer;>;"
    :pswitch_13
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;
    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$300(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    .line 449
    .local v7, transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    iget v8, p1, Landroid/os/Message;->arg1:I

    int-to-long v8, v8

    shl-long/2addr v8, v10

    iget v10, p1, Landroid/os/Message;->arg2:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->bytesTotal:J

    .line 450
    invoke-virtual {v7}, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v3

    .line 451
    .local v3, immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;
    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$400(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 452
    .local v4, listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v4, v3}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onSize(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_39

    .line 454
    .end local v4           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    :cond_49
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;
    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$500(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_8

    .line 459
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v7           #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    :pswitch_53
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;
    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$300(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    .line 460
    .restart local v7       #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->failures:Ljava/util/Map;
    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$600(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v8

    iget-object v9, v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    iget v8, p1, Landroid/os/Message;->arg1:I

    int-to-long v8, v8

    shl-long/2addr v8, v10

    iget v10, p1, Landroid/os/Message;->arg2:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->bytesTransfered:J

    .line 462
    invoke-virtual {v7}, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->getImmutable()Lcom/google/android/youtube/core/transfer/Transfer;

    move-result-object v3

    .line 463
    .restart local v3       #immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->listeners:Ljava/util/Set;
    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$400(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/youtube/core/transfer/TransferService$Listener;

    .line 464
    .restart local v4       #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    invoke-interface {v4, v3}, Lcom/google/android/youtube/core/transfer/TransferService$Listener;->onProgress(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto :goto_84

    .line 466
    .end local v4           #listener:Lcom/google/android/youtube/core/transfer/TransferService$Listener;
    :cond_94
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->store:Lcom/google/android/youtube/core/transfer/TransfersDbHelper;
    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$500(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransfersDbHelper;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/google/android/youtube/core/transfer/TransfersDbHelper;->update(Lcom/google/android/youtube/core/transfer/Transfer;)V

    goto/16 :goto_8

    .line 471
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #immutable:Lcom/google/android/youtube/core/transfer/Transfer;
    .end local v7           #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    :pswitch_9f
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;
    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$300(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v8

    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    .line 472
    .restart local v7       #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #calls: Lcom/google/android/youtube/core/transfer/TransferService;->cancelTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V
    invoke-static {v8, v7}, Lcom/google/android/youtube/core/transfer/TransferService;->access$700(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V

    goto/16 :goto_8

    .line 478
    .end local v7           #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    :pswitch_b4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    .line 479
    .local v5, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v1, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 480
    .local v1, filePath:Ljava/lang/String;
    iget-object v0, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 481
    .local v0, extras:Landroid/os/Bundle;
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;
    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$300(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    .line 482
    .restart local v7       #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    if-eqz v0, :cond_e2

    .end local v0           #extras:Landroid/os/Bundle;
    :goto_ce
    iput-object v0, v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->outputExtras:Landroid/os/Bundle;

    .line 483
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->toBeRemoved:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$800(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/HashSet;

    move-result-object v8

    iget-object v9, v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 484
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #calls: Lcom/google/android/youtube/core/transfer/TransferService;->completeTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V
    invoke-static {v8, v7}, Lcom/google/android/youtube/core/transfer/TransferService;->access$900(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V

    goto/16 :goto_8

    .line 482
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_e2
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #extras:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_ce

    .line 489
    .end local v1           #filePath:Ljava/lang/String;
    .end local v5           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    .end local v7           #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    :pswitch_e8
    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->transfers:Ljava/util/Map;
    invoke-static {v9}, Lcom/google/android/youtube/core/transfer/TransferService;->access$300(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/Map;

    move-result-object v9

    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;

    .line 490
    .restart local v7       #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->toBeRemoved:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/google/android/youtube/core/transfer/TransferService;->access$800(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/HashSet;

    move-result-object v9

    iget-object v10, v7, Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;->filePath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10b

    .line 491
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #calls: Lcom/google/android/youtube/core/transfer/TransferService;->cancelTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V
    invoke-static {v8, v7}, Lcom/google/android/youtube/core/transfer/TransferService;->access$700(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;)V

    goto/16 :goto_8

    .line 493
    :cond_10b
    iget-object v9, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v8, :cond_116

    :goto_111
    #calls: Lcom/google/android/youtube/core/transfer/TransferService;->failTransfer(Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;Z)V
    invoke-static {v9, v7, v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1000(Lcom/google/android/youtube/core/transfer/TransferService;Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;Z)V

    goto/16 :goto_8

    :cond_116
    const/4 v8, 0x0

    goto :goto_111

    .line 499
    .end local v7           #transfer:Lcom/google/android/youtube/core/transfer/TransferService$MutableTransfer;
    :pswitch_118
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->networkStateReceiver:Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;
    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1100(Lcom/google/android/youtube/core/transfer/TransferService;)Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/youtube/core/transfer/TransferService$NetworkStateReceiver;->releaseWifi()V

    .line 500
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->stopSelf()V

    goto/16 :goto_8

    .line 504
    :pswitch_128
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 505
    .restart local v1       #filePath:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    #getter for: Lcom/google/android/youtube/core/transfer/TransferService;->backedOff:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->access$1200(Lcom/google/android/youtube/core/transfer/TransferService;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 506
    iget-object v8, p0, Lcom/google/android/youtube/core/transfer/TransferService$MainHandler;->this$0:Lcom/google/android/youtube/core/transfer/TransferService;

    invoke-virtual {v8}, Lcom/google/android/youtube/core/transfer/TransferService;->ping()V

    goto/16 :goto_8

    .line 438
    nop

    :pswitch_data_140
    .packed-switch 0x1
        :pswitch_9
        :pswitch_13
        :pswitch_53
        :pswitch_9f
        :pswitch_b4
        :pswitch_e8
        :pswitch_118
        :pswitch_128
    .end packed-switch
.end method

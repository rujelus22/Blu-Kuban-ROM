.class Landroid/support/place/api/broker/BrokerManager$2;
.super Landroid/support/place/connector/ConnectorRegistry$Listener;
.source "BrokerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/place/api/broker/BrokerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/place/api/broker/BrokerManager;


# direct methods
.method constructor <init>(Landroid/support/place/api/broker/BrokerManager;)V
    .registers 2
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    invoke-direct {p0}, Landroid/support/place/connector/ConnectorRegistry$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedToRegistry(Ljava/util/List;)V
    .registers 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/connector/ConnectorInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 366
    .local p1, allConnectorInfos:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/connector/ConnectorInfo;>;"
    iget-object v8, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v8}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v9

    monitor-enter v9

    .line 367
    :try_start_7
    iget-object v8, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v8}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->clear()V

    .line 368
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 369
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_15
    if-ge v2, v0, :cond_46

    .line 370
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/place/connector/ConnectorInfo;

    .line 371
    .local v3, info:Landroid/support/place/connector/ConnectorInfo;
    invoke-virtual {v3}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v1

    .line 372
    .local v1, ei:Landroid/support/place/rpc/EndpointInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 373
    .local v7, uniqueId:Ljava/lang/String;
    iget-object v8, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v8}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v8

    invoke-virtual {v8, v7, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 375
    .end local v1           #ei:Landroid/support/place/rpc/EndpointInfo;
    .end local v3           #info:Landroid/support/place/connector/ConnectorInfo;
    .end local v7           #uniqueId:Ljava/lang/String;
    :cond_46
    monitor-exit v9
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_6e

    .line 378
    iget-object v8, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v8}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v9

    monitor-enter v9

    .line 379
    :try_start_4e
    iget-object v8, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v8}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/LinkedList;

    .line 380
    .local v6, listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    monitor-exit v9
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_71

    .line 381
    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v4

    .line 387
    .local v4, lCount:I
    const/4 v2, 0x0

    :goto_60
    if-ge v2, v4, :cond_74

    .line 388
    invoke-virtual {v6, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 389
    .local v5, listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    invoke-virtual {v5, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onConnectedToRegistry(Ljava/util/List;)V

    .line 387
    add-int/lit8 v2, v2, 0x1

    goto :goto_60

    .line 375
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v4           #lCount:I
    .end local v5           #listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    .end local v6           #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :catchall_6e
    move-exception v8

    :try_start_6f
    monitor-exit v9
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v8

    .line 380
    .restart local v0       #count:I
    .restart local v2       #i:I
    :catchall_71
    move-exception v8

    :try_start_72
    monitor-exit v9
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw v8

    .line 391
    .restart local v4       #lCount:I
    .restart local v6       #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :cond_74
    return-void
.end method

.method public onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 10
    .parameter "connector"

    .prologue
    .line 395
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    .line 396
    .local v0, ei:Landroid/support/place/rpc/EndpointInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 397
    .local v5, uniqueId:Ljava/lang/String;
    iget-object v6, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v6}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v7

    monitor-enter v7

    .line 398
    :try_start_24
    iget-object v6, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v6}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, v5, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    monitor-exit v7
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_55

    .line 402
    iget-object v6, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v6}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7

    .line 403
    :try_start_35
    iget-object v6, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v6}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 404
    .local v4, listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    monitor-exit v7
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_58

    .line 405
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 409
    .local v2, lCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_47
    if-ge v1, v2, :cond_5b

    .line 410
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 411
    .local v3, listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    invoke-virtual {v3, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 399
    .end local v1           #i:I
    .end local v2           #lCount:I
    .end local v3           #listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    .end local v4           #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :catchall_55
    move-exception v6

    :try_start_56
    monitor-exit v7
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v6

    .line 404
    :catchall_58
    move-exception v6

    :try_start_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v6

    .line 413
    .restart local v1       #i:I
    .restart local v2       #lCount:I
    .restart local v4       #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :cond_5b
    return-void
.end method

.method public onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 10
    .parameter "connector"

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    .line 418
    .local v0, ei:Landroid/support/place/rpc/EndpointInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 419
    .local v5, uniqueId:Ljava/lang/String;
    iget-object v6, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v6}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v7

    monitor-enter v7

    .line 420
    :try_start_24
    iget-object v6, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v6}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    monitor-exit v7
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_55

    .line 424
    iget-object v6, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v6}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7

    .line 425
    :try_start_35
    iget-object v6, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v6}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    .line 426
    .local v4, listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    monitor-exit v7
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_58

    .line 427
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 431
    .local v2, lCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_47
    if-ge v1, v2, :cond_5b

    .line 432
    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 433
    .local v3, listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    invoke-virtual {v3, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;)V

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    .line 421
    .end local v1           #i:I
    .end local v2           #lCount:I
    .end local v3           #listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    .end local v4           #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :catchall_55
    move-exception v6

    :try_start_56
    monitor-exit v7
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw v6

    .line 426
    :catchall_58
    move-exception v6

    :try_start_59
    monitor-exit v7
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v6

    .line 435
    .restart local v1       #i:I
    .restart local v2       #lCount:I
    .restart local v4       #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :cond_5b
    return-void
.end method

.method public onDisconnected()V
    .registers 2

    .prologue
    .line 439
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$200(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/connector/Broker;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$200(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getConnectorRegistry()Landroid/support/place/connector/ConnectorRegistry;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 440
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$200(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/connector/Broker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/place/connector/Broker;->getConnectorRegistry()Landroid/support/place/connector/ConnectorRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/place/connector/ConnectorRegistry;->startListeningForConnectors(Landroid/support/place/connector/ConnectorRegistry$Listener;)V

    .line 442
    :cond_21
    return-void
.end method

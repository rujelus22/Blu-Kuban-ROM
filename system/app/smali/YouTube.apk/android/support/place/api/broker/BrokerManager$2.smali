.class Landroid/support/place/api/broker/BrokerManager$2;
.super Landroid/support/place/connector/ConnectorRegistry$Listener;
.source "SourceFile"


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
    .registers 10
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 366
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v3

    monitor-enter v3

    .line 367
    :try_start_8
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 368
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    .line 369
    :goto_16
    if-ge v2, v4, :cond_48

    .line 370
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/connector/ConnectorInfo;

    .line 371
    invoke-virtual {v0}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v5

    .line 372
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 373
    iget-object v6, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v6}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v6

    invoke-virtual {v6, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16

    .line 375
    :cond_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_71

    .line 378
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 379
    :try_start_50
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 380
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_50 .. :try_end_5d} :catchall_74

    .line 381
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    move v2, v1

    .line 387
    :goto_62
    if-ge v2, v3, :cond_77

    .line 388
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 389
    invoke-virtual {v1, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onConnectedToRegistry(Ljava/util/List;)V

    .line 387
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_62

    .line 375
    :catchall_71
    move-exception v0

    monitor-exit v3

    throw v0

    .line 380
    :catchall_74
    move-exception v0

    monitor-exit v2

    throw v0

    .line 391
    :cond_77
    return-void
.end method

.method public onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 6
    .parameter

    .prologue
    .line 395
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v1}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 398
    :try_start_24
    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v2}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_57

    .line 402
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 403
    :try_start_35
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 404
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_5a

    .line 405
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 409
    const/4 v1, 0x0

    move v2, v1

    :goto_48
    if-ge v2, v3, :cond_5d

    .line 410
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 411
    invoke-virtual {v1, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onConnectorAdded(Landroid/support/place/connector/ConnectorInfo;)V

    .line 409
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_48

    .line 399
    :catchall_57
    move-exception v0

    monitor-exit v1

    throw v0

    .line 404
    :catchall_5a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 413
    :cond_5d
    return-void
.end method

.method public onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;)V
    .registers 6
    .parameter

    .prologue
    .line 417
    invoke-virtual {p1}, Landroid/support/place/connector/ConnectorInfo;->getEndpointInfo()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/place/rpc/EndpointInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 419
    iget-object v1, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v1}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 420
    :try_start_24
    iget-object v2, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mConnectors:Ljava/util/LinkedHashMap;
    invoke-static {v2}, Landroid/support/place/api/broker/BrokerManager;->access$400(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_57

    .line 424
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 425
    :try_start_35
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$2;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 426
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_5a

    .line 427
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 431
    const/4 v1, 0x0

    move v2, v1

    :goto_48
    if-ge v2, v3, :cond_5d

    .line 432
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 433
    invoke-virtual {v1, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onConnectorRemoved(Landroid/support/place/connector/ConnectorInfo;)V

    .line 431
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_48

    .line 421
    :catchall_57
    move-exception v0

    monitor-exit v1

    throw v0

    .line 426
    :catchall_5a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 435
    :cond_5d
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

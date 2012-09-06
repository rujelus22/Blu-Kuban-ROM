.class Landroid/support/place/api/broker/BrokerManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/place/beacon/BeaconScanner$Listener;


# instance fields
.field final synthetic this$0:Landroid/support/place/api/broker/BrokerManager;


# direct methods
.method constructor <init>(Landroid/support/place/api/broker/BrokerManager;)V
    .registers 2
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeaconsChanged(Ljava/util/List;)V
    .registers 9
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$200(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/connector/Broker;

    move-result-object v0

    if-nez v0, :cond_9

    .line 360
    :goto_8
    return-void

    .line 305
    :cond_9
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mBeaconsCache:Ljava/util/List;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$300(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/beacon/BeaconInfo;

    .line 307
    iget-object v0, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {p0, v0}, Landroid/support/place/api/broker/BrokerManager$1;->onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V

    goto :goto_15

    .line 309
    :cond_27
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #setter for: Landroid/support/place/api/broker/BrokerManager;->mBeaconsCache:Ljava/util/List;
    invoke-static {v0, p1}, Landroid/support/place/api/broker/BrokerManager;->access$302(Landroid/support/place/api/broker/BrokerManager;Ljava/util/List;)Ljava/util/List;

    goto :goto_8

    .line 313
    :cond_2d
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 314
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 315
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/beacon/BeaconInfo;

    .line 316
    iget-object v4, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v4}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v4

    .line 317
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 321
    :cond_5c
    new-instance v3, Ljava/util/HashSet;

    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mBeaconsCache:Ljava/util/List;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$300(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 322
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 324
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mBeaconsCache:Ljava/util/List;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$300(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/beacon/BeaconInfo;

    .line 325
    iget-object v6, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v6}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v6

    .line 326
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    .line 330
    :cond_97
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 331
    invoke-interface {v5, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 332
    invoke-interface {v3, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 333
    invoke-interface {v1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 336
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 337
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/beacon/BeaconInfo;

    .line 338
    iget-object v0, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {p0, v0}, Landroid/support/place/api/broker/BrokerManager$1;->onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V

    goto :goto_a9

    .line 342
    :cond_c1
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_dd

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/beacon/BeaconInfo;

    .line 344
    iget-object v0, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {p0, v0}, Landroid/support/place/api/broker/BrokerManager$1;->onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V

    goto :goto_c5

    .line 348
    :cond_dd
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_e1
    :goto_e1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/beacon/BeaconInfo;

    .line 350
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/beacon/BeaconInfo;

    .line 351
    iget-object v5, v1, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v5}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v6}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    iget-object v5, v1, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v5}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v5

    iget-object v6, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v6}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/place/rpc/EndpointInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    iget-object v5, v1, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v5}, Landroid/support/place/connector/PlaceInfo;->getPlaceName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v6}, Landroid/support/place/connector/PlaceInfo;->getPlaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_139

    iget-object v1, v1, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    iget-object v5, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v1, v5}, Landroid/support/place/connector/PlaceInfo;->hasSameExtras(Landroid/support/place/connector/PlaceInfo;)Z

    move-result v1

    if-nez v1, :cond_e1

    .line 355
    :cond_139
    iget-object v0, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {p0, v0}, Landroid/support/place/api/broker/BrokerManager$1;->onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V

    goto :goto_e1

    .line 359
    :cond_13f
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #setter for: Landroid/support/place/api/broker/BrokerManager;->mBeaconsCache:Ljava/util/List;
    invoke-static {v0, p1}, Landroid/support/place/api/broker/BrokerManager;->access$302(Landroid/support/place/api/broker/BrokerManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_8
.end method

.method public onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V
    .registers 6
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 242
    :try_start_7
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3e

    .line 246
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 247
    :try_start_1c
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 248
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_41

    .line 249
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 250
    const/4 v1, 0x0

    move v2, v1

    :goto_2f
    if-ge v2, v3, :cond_44

    .line 251
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 252
    invoke-virtual {v1, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V

    .line 250
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2f

    .line 243
    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 248
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0

    .line 254
    :cond_44
    return-void
.end method

.method public onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V
    .registers 6
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 261
    :try_start_7
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3e

    .line 265
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 266
    :try_start_1c
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 267
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_41

    .line 268
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 269
    const/4 v1, 0x0

    move v2, v1

    :goto_2f
    if-ge v2, v3, :cond_44

    .line 270
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 271
    invoke-virtual {v1, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V

    .line 269
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2f

    .line 262
    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 267
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0

    .line 273
    :cond_44
    return-void
.end method

.method public onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V
    .registers 6
    .parameter

    .prologue
    .line 279
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v1

    monitor-enter v1

    .line 280
    :try_start_7
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3e

    .line 284
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v1

    monitor-enter v1

    .line 285
    :try_start_1c
    iget-object v0, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v0}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 286
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_41

    .line 287
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 288
    const/4 v1, 0x0

    move v2, v1

    :goto_2f
    if-ge v2, v3, :cond_44

    .line 289
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 290
    invoke-virtual {v1, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V

    .line 288
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2f

    .line 281
    :catchall_3e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 286
    :catchall_41
    move-exception v0

    monitor-exit v1

    throw v0

    .line 292
    :cond_44
    return-void
.end method

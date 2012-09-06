.class Landroid/support/place/api/broker/BrokerManager$1;
.super Ljava/lang/Object;
.source "BrokerManager.java"

# interfaces
.implements Landroid/support/place/beacon/BeaconScanner$Listener;


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
    .line 232
    iput-object p1, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeaconsChanged(Ljava/util/List;)V
    .registers 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/place/beacon/BeaconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, beacons:Ljava/util/List;,"Ljava/util/List<Landroid/support/place/beacon/BeaconInfo;>;"
    iget-object v10, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mBroker:Landroid/support/place/connector/Broker;
    invoke-static {v10}, Landroid/support/place/api/broker/BrokerManager;->access$200(Landroid/support/place/api/broker/BrokerManager;)Landroid/support/place/connector/Broker;

    move-result-object v10

    if-nez v10, :cond_9

    .line 360
    :goto_8
    return-void

    .line 305
    :cond_9
    iget-object v10, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mBeaconsCache:Ljava/util/List;
    invoke-static {v10}, Landroid/support/place/api/broker/BrokerManager;->access$300(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_2d

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/beacon/BeaconInfo;

    .line 307
    .local v0, beacon:Landroid/support/place/beacon/BeaconInfo;
    iget-object v10, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {p0, v10}, Landroid/support/place/api/broker/BrokerManager$1;->onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V

    goto :goto_15

    .line 309
    .end local v0           #beacon:Landroid/support/place/beacon/BeaconInfo;
    :cond_27
    iget-object v10, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #setter for: Landroid/support/place/api/broker/BrokerManager;->mBeaconsCache:Ljava/util/List;
    invoke-static {v10, p1}, Landroid/support/place/api/broker/BrokerManager;->access$302(Landroid/support/place/api/broker/BrokerManager;Ljava/util/List;)Ljava/util/List;

    goto :goto_8

    .line 313
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2d
    new-instance v8, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 314
    .local v8, newBeacons:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 315
    .local v9, newBeaconsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/support/place/beacon/BeaconInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/beacon/BeaconInfo;

    .line 316
    .restart local v0       #beacon:Landroid/support/place/beacon/BeaconInfo;
    iget-object v10, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v10}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v5

    .line 317
    .local v5, id:Ljava/lang/String;
    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    invoke-interface {v9, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_43

    .line 321
    .end local v0           #beacon:Landroid/support/place/beacon/BeaconInfo;
    .end local v5           #id:Ljava/lang/String;
    :cond_5c
    new-instance v2, Ljava/util/HashSet;

    iget-object v10, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mBeaconsCache:Ljava/util/List;
    invoke-static {v10}, Landroid/support/place/api/broker/BrokerManager;->access$300(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v2, v10}, Ljava/util/HashSet;-><init>(I)V

    .line 322
    .local v2, currentBeacons:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v3, v10}, Ljava/util/HashMap;-><init>(I)V

    .line 324
    .local v3, currentBeaconsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/support/place/beacon/BeaconInfo;>;"
    iget-object v10, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mBeaconsCache:Ljava/util/List;
    invoke-static {v10}, Landroid/support/place/api/broker/BrokerManager;->access$300(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_97

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/beacon/BeaconInfo;

    .line 325
    .restart local v0       #beacon:Landroid/support/place/beacon/BeaconInfo;
    iget-object v10, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v10}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v5

    .line 326
    .restart local v5       #id:Ljava/lang/String;
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    .line 330
    .end local v0           #beacon:Landroid/support/place/beacon/BeaconInfo;
    .end local v5           #id:Ljava/lang/String;
    :cond_97
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 331
    .local v1, common:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 332
    invoke-interface {v2, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 333
    invoke-interface {v8, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 336
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 337
    .restart local v5       #id:Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/beacon/BeaconInfo;

    .line 338
    .restart local v0       #beacon:Landroid/support/place/beacon/BeaconInfo;
    iget-object v10, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {p0, v10}, Landroid/support/place/api/broker/BrokerManager$1;->onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V

    goto :goto_a9

    .line 342
    .end local v0           #beacon:Landroid/support/place/beacon/BeaconInfo;
    .end local v5           #id:Ljava/lang/String;
    :cond_c1
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_dd

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 343
    .restart local v5       #id:Ljava/lang/String;
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/place/beacon/BeaconInfo;

    .line 344
    .restart local v0       #beacon:Landroid/support/place/beacon/BeaconInfo;
    iget-object v10, v0, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {p0, v10}, Landroid/support/place/api/broker/BrokerManager$1;->onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V

    goto :goto_c5

    .line 348
    .end local v0           #beacon:Landroid/support/place/beacon/BeaconInfo;
    .end local v5           #id:Ljava/lang/String;
    :cond_dd
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e1
    :goto_e1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 349
    .restart local v5       #id:Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/place/beacon/BeaconInfo;

    .line 350
    .local v6, localBeacon:Landroid/support/place/beacon/BeaconInfo;
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/place/beacon/BeaconInfo;

    .line 351
    .local v7, newBeacon:Landroid/support/place/beacon/BeaconInfo;
    iget-object v10, v6, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v10}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v11}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e1

    iget-object v10, v6, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v10}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v10

    iget-object v11, v7, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v11}, Landroid/support/place/connector/PlaceInfo;->getMaster()Landroid/support/place/rpc/EndpointInfo;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/place/rpc/EndpointInfo;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e1

    iget-object v10, v6, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v10}, Landroid/support/place/connector/PlaceInfo;->getPlaceName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v7, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v11}, Landroid/support/place/connector/PlaceInfo;->getPlaceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_139

    iget-object v10, v6, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    iget-object v11, v7, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {v10, v11}, Landroid/support/place/connector/PlaceInfo;->hasSameExtras(Landroid/support/place/connector/PlaceInfo;)Z

    move-result v10

    if-nez v10, :cond_e1

    .line 355
    :cond_139
    iget-object v10, v7, Landroid/support/place/beacon/BeaconInfo;->place:Landroid/support/place/connector/PlaceInfo;

    invoke-virtual {p0, v10}, Landroid/support/place/api/broker/BrokerManager$1;->onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V

    goto :goto_e1

    .line 359
    .end local v5           #id:Ljava/lang/String;
    .end local v6           #localBeacon:Landroid/support/place/beacon/BeaconInfo;
    .end local v7           #newBeacon:Landroid/support/place/beacon/BeaconInfo;
    :cond_13f
    iget-object v10, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #setter for: Landroid/support/place/api/broker/BrokerManager;->mBeaconsCache:Ljava/util/List;
    invoke-static {v10, p1}, Landroid/support/place/api/broker/BrokerManager;->access$302(Landroid/support/place/api/broker/BrokerManager;Ljava/util/List;)Ljava/util/List;

    goto/16 :goto_8
.end method

.method public onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V
    .registers 9
    .parameter "place"

    .prologue
    .line 241
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v5

    monitor-enter v5

    .line 242
    :try_start_7
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    monitor-exit v5
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3c

    .line 246
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 247
    :try_start_1c
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 248
    .local v3, listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_3f

    .line 249
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 250
    .local v1, lCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2e
    if-ge v0, v1, :cond_42

    .line 251
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 252
    .local v2, listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    invoke-virtual {v2, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onPlaceAdded(Landroid/support/place/connector/PlaceInfo;)V

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 243
    .end local v0           #i:I
    .end local v1           #lCount:I
    .end local v2           #listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    .end local v3           #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v4

    .line 248
    :catchall_3f
    move-exception v4

    :try_start_40
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v4

    .line 254
    .restart local v0       #i:I
    .restart local v1       #lCount:I
    .restart local v3       #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :cond_42
    return-void
.end method

.method public onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V
    .registers 9
    .parameter "place"

    .prologue
    .line 260
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v5

    monitor-enter v5

    .line 261
    :try_start_7
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    monitor-exit v5
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3c

    .line 265
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 266
    :try_start_1c
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 267
    .local v3, listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_3f

    .line 268
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 269
    .local v1, lCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2e
    if-ge v0, v1, :cond_42

    .line 270
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 271
    .local v2, listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    invoke-virtual {v2, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onPlaceRemoved(Landroid/support/place/connector/PlaceInfo;)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 262
    .end local v0           #i:I
    .end local v1           #lCount:I
    .end local v2           #listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    .end local v3           #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v4

    .line 267
    :catchall_3f
    move-exception v4

    :try_start_40
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v4

    .line 273
    .restart local v0       #i:I
    .restart local v1       #lCount:I
    .restart local v3       #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :cond_42
    return-void
.end method

.method public onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V
    .registers 9
    .parameter "place"

    .prologue
    .line 279
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v5

    monitor-enter v5

    .line 280
    :try_start_7
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mAvailablePlaces:Ljava/util/LinkedHashMap;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$000(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/place/connector/PlaceInfo;->getPlaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    monitor-exit v5
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_3c

    .line 284
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 285
    :try_start_1c
    iget-object v4, p0, Landroid/support/place/api/broker/BrokerManager$1;->this$0:Landroid/support/place/api/broker/BrokerManager;

    #getter for: Landroid/support/place/api/broker/BrokerManager;->mListeners:Ljava/util/LinkedList;
    invoke-static {v4}, Landroid/support/place/api/broker/BrokerManager;->access$100(Landroid/support/place/api/broker/BrokerManager;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 286
    .local v3, listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    monitor-exit v5
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_3f

    .line 287
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 288
    .local v1, lCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2e
    if-ge v0, v1, :cond_42

    .line 289
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;

    .line 290
    .local v2, listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    invoke-virtual {v2, p1}, Landroid/support/place/api/broker/BrokerManager$ConnectionListener;->onPlaceUpdated(Landroid/support/place/connector/PlaceInfo;)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 281
    .end local v0           #i:I
    .end local v1           #lCount:I
    .end local v2           #listener:Landroid/support/place/api/broker/BrokerManager$ConnectionListener;
    .end local v3           #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :catchall_3c
    move-exception v4

    :try_start_3d
    monitor-exit v5
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v4

    .line 286
    :catchall_3f
    move-exception v4

    :try_start_40
    monitor-exit v5
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v4

    .line 292
    .restart local v0       #i:I
    .restart local v1       #lCount:I
    .restart local v3       #listeners:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/support/place/api/broker/BrokerManager$ConnectionListener;>;"
    :cond_42
    return-void
.end method

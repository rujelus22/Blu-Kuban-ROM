.class public Lorg/snmp4j/mp/MPv3$Cache;
.super Ljava/lang/Object;
.source "MPv3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/snmp4j/mp/MPv3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Cache"
.end annotation


# instance fields
.field private entries:Ljava/util/Map;


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 412
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 414
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/snmp4j/mp/MPv3$Cache;->entries:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized addEntry(Lorg/snmp4j/mp/StateReference;)I
    .registers 7
    .parameter "entry"

    .prologue
    .line 429
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lorg/snmp4j/mp/MPv3;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    invoke-interface {v2}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 430
    invoke-static {}, Lorg/snmp4j/mp/MPv3;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Adding cache entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V

    .line 432
    :cond_25
    iget-object v2, p0, Lorg/snmp4j/mp/MPv3$Cache;->entries:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/snmp4j/mp/StateReference;->getPduHandle()Lorg/snmp4j/mp/PduHandle;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/mp/StateReference;

    .line 434
    .local v0, existing:Lorg/snmp4j/mp/StateReference;
    if-eqz v0, :cond_61

    .line 435
    invoke-virtual {v0, p1}, Lorg/snmp4j/mp/StateReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 436
    invoke-static {}, Lorg/snmp4j/mp/MPv3;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    invoke-interface {v2}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 437
    invoke-static {}, Lorg/snmp4j/mp/MPv3;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Doubled message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_70

    .line 439
    :cond_5d
    const/16 v2, -0x57c

    .line 448
    :goto_5f
    monitor-exit p0

    return v2

    .line 443
    :cond_61
    :try_start_61
    invoke-virtual {p1}, Lorg/snmp4j/mp/StateReference;->getPduHandle()Lorg/snmp4j/mp/PduHandle;

    move-result-object v1

    .line 446
    .local v1, key:Lorg/snmp4j/mp/PduHandle;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/snmp4j/mp/StateReference;->setPduHandle(Lorg/snmp4j/mp/PduHandle;)V

    .line 447
    iget-object v2, p0, Lorg/snmp4j/mp/MPv3$Cache;->entries:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6e
    .catchall {:try_start_61 .. :try_end_6e} :catchall_70

    .line 448
    const/4 v2, 0x0

    goto :goto_5f

    .line 429
    .end local v0           #existing:Lorg/snmp4j/mp/StateReference;
    .end local v1           #key:Lorg/snmp4j/mp/PduHandle;
    :catchall_70
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized deleteEntry(Lorg/snmp4j/mp/PduHandle;)Z
    .registers 4
    .parameter "pduHandle"

    .prologue
    .line 479
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lorg/snmp4j/mp/MPv3$Cache;->entries:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/mp/StateReference;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_10

    .line 480
    .local v0, e:Lorg/snmp4j/mp/StateReference;
    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :goto_c
    monitor-exit p0

    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_c

    .line 479
    .end local v0           #e:Lorg/snmp4j/mp/StateReference;
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized popEntry(I)Lorg/snmp4j/mp/StateReference;
    .registers 8
    .parameter "msgID"

    .prologue
    .line 493
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lorg/snmp4j/mp/MPv3$Cache;->entries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 494
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/snmp4j/mp/PduHandle;

    .line 495
    .local v2, key:Lorg/snmp4j/mp/PduHandle;
    iget-object v3, p0, Lorg/snmp4j/mp/MPv3$Cache;->entries:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/snmp4j/mp/StateReference;

    .line 496
    .local v0, e:Lorg/snmp4j/mp/StateReference;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lorg/snmp4j/mp/StateReference;->getMsgID()I

    move-result v3

    if-ne v3, p1, :cond_b

    .line 497
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 498
    invoke-virtual {v0, v2}, Lorg/snmp4j/mp/StateReference;->setPduHandle(Lorg/snmp4j/mp/PduHandle;)V

    .line 499
    invoke-static {}, Lorg/snmp4j/mp/MPv3;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v3

    invoke-interface {v3}, Lorg/snmp4j/log/LogAdapter;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_51

    .line 500
    invoke-static {}, Lorg/snmp4j/mp/MPv3;->access$000()Lorg/snmp4j/log/LogAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Removed cache entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/snmp4j/log/LogAdapter;->debug(Ljava/lang/Object;)V
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_55

    .line 505
    .end local v0           #e:Lorg/snmp4j/mp/StateReference;
    .end local v2           #key:Lorg/snmp4j/mp/PduHandle;
    :cond_51
    :goto_51
    monitor-exit p0

    return-object v0

    :cond_53
    const/4 v0, 0x0

    goto :goto_51

    .line 493
    .end local v1           #it:Ljava/util/Iterator;
    :catchall_55
    move-exception v3

    monitor-exit p0

    throw v3
.end method

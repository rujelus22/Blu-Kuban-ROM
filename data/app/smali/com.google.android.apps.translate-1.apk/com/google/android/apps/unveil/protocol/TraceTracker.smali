.class public Lcom/google/android/apps/unveil/protocol/TraceTracker;
.super Ljava/lang/Object;
.source "TraceTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/protocol/TraceTracker$1;,
        Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    }
.end annotation


# static fields
.field static final MAX_EVICT_NOTICES:I = 0x4

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final cookieFetcher:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

.field private final currentActions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;",
            ">;"
        }
    .end annotation
.end field

.field private final networkInfoProvider:Lcom/google/android/apps/unveil/network/NetworkInfoProvider;

.field private traceActionNumber:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 49
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "TraceTracker"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/network/NetworkInfoProvider;Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;)V
    .registers 4
    .parameter "networkInfoProvider"
    .parameter "cookieFetcher"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->networkInfoProvider:Lcom/google/android/apps/unveil/network/NetworkInfoProvider;

    .line 105
    iput-object p2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->cookieFetcher:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    .line 107
    return-void
.end method

.method static synthetic access$1100()Lcom/google/android/apps/unveil/env/UnveilLogger;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-object v0
.end method

.method private addAction(ILcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)V
    .registers 9
    .parameter "actionNumber"
    .parameter "actionData"

    .prologue
    .line 405
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    monitor-enter v1

    .line 406
    :try_start_3
    sget-object v0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Adding action %d with tracing cookie %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    #getter for: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->tracingCookie:Ljava/lang/String;
    invoke-static {p2}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$900(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    monitor-exit v1

    .line 409
    return-void

    .line 408
    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method

.method private addFinishedTraceActions(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)V
    .registers 6
    .parameter "traceRequest"

    .prologue
    .line 358
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    monitor-enter v3

    .line 359
    :try_start_3
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    .line 360
    .local v0, actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->isEnded()Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$400(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 361
    invoke-virtual {v0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->populate(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)V

    goto :goto_d

    .line 364
    .end local v0           #actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_26
    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_23

    .line 365
    return-void
.end method

.method private clearFinishedTraceActions()V
    .registers 7

    .prologue
    .line 374
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 375
    .local v1, finishedTraceActionNumbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    monitor-enter v5

    .line 378
    :try_start_8
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_12
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 379
    .local v3, traceActionNumber:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->isEnded()Z
    invoke-static {v4}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$400(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 380
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 386
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #traceActionNumber:Ljava/lang/Integer;
    :catchall_30
    move-exception v4

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_30

    throw v4

    .line 383
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_33
    :try_start_33
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 384
    .local v0, finishedTraceActionNumber:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    .line 386
    .end local v0           #finishedTraceActionNumber:Ljava/lang/Integer;
    :cond_49
    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_30

    .line 387
    return-void
.end method

.method private getActionData(I)Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    .registers 5
    .parameter "actionNumber"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    monitor-enter v1

    .line 396
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    monitor-exit v1

    return-object v0

    .line 397
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method private declared-synchronized incrementCurrentActionNumber()V
    .registers 4

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v1, "Incrementing current action number."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->traceActionNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->traceActionNumber:I
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 134
    monitor-exit p0

    return-void

    .line 132
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addDurationInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;II)V
    .registers 10
    .parameter "intervalName"
    .parameter "durationMs"
    .parameter "actionNumber"

    .prologue
    .line 211
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p3}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getActionData(I)Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    move-result-object v0

    .line 212
    .local v0, actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    if-nez v0, :cond_1d

    .line 213
    sget-object v1, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "TraceAction %d has already been completed, cannot add duration interval %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_21

    .line 219
    :goto_1b
    monitor-exit p0

    return-void

    .line 218
    :cond_1d
    :try_start_1d
    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->addDurationInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_1b

    .line 211
    .end local v0           #actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addPoint(ILcom/google/goggles/TracingProtos$PointVariable$Type;)V
    .registers 9
    .parameter "actionNumber"
    .parameter "pointName"

    .prologue
    .line 242
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getActionData(I)Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    move-result-object v0

    .line 243
    .local v0, actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    if-nez v0, :cond_1d

    .line 244
    sget-object v1, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Tried to add point of type %s to action %d but that action is not currently open."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_21

    .line 250
    :goto_1b
    monitor-exit p0

    return-void

    .line 249
    :cond_1d
    :try_start_1d
    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->addPoint(Lcom/google/goggles/TracingProtos$PointVariable$Type;)V
    invoke-static {v0, p2}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$200(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;Lcom/google/goggles/TracingProtos$PointVariable$Type;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_1b

    .line 242
    .end local v0           #actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addPoint(Lcom/google/goggles/TracingProtos$PointVariable$Type;)V
    .registers 3
    .parameter "pointName"

    .prologue
    .line 238
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getCurrentActionNumber()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->addPoint(ILcom/google/goggles/TracingProtos$PointVariable$Type;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 239
    monitor-exit p0

    return-void

    .line 238
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addProcessorStatus(ILcom/google/goggles/TracingProtos$ProcessorStatus;)V
    .registers 9
    .parameter "actionNumber"
    .parameter "processorStatus"

    .prologue
    .line 253
    if-nez p2, :cond_3

    .line 265
    :goto_2
    return-void

    .line 257
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getActionData(I)Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    move-result-object v0

    .line 258
    .local v0, actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    if-nez v0, :cond_1b

    .line 259
    sget-object v1, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Tried to add processor status to action %d but that action is not currently open."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 264
    :cond_1b
    invoke-virtual {v0, p2}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->addProcessorStatus(Lcom/google/goggles/TracingProtos$ProcessorStatus;)V

    goto :goto_2
.end method

.method public addRawInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;JJI)V
    .registers 13
    .parameter "intervalName"
    .parameter "startMs"
    .parameter "endMs"
    .parameter "actionNumber"

    .prologue
    .line 224
    invoke-direct {p0, p6}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getActionData(I)Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    move-result-object v0

    .line 225
    .local v0, actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    if-nez v0, :cond_1b

    .line 226
    sget-object v1, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "TraceAction %d has already been completed, cannot add duration interval %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    :goto_1a
    return-void

    :cond_1b
    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->addRawInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;JJ)V

    goto :goto_1a
.end method

.method public declared-synchronized beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)I
    .registers 4
    .parameter "intervalName"

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getCurrentActionNumber()I

    move-result v0

    .line 146
    .local v0, currentActionNumber:I
    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 147
    monitor-exit p0

    return v0

    .line 145
    .end local v0           #currentActionNumber:I
    :catchall_a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public beginInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V
    .registers 8
    .parameter "intervalName"
    .parameter "actionNumber"

    .prologue
    .line 154
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getActionData(I)Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    move-result-object v0

    .line 155
    .local v0, actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    if-nez v0, :cond_14

    .line 156
    sget-object v1, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "[%s]: null TraceAction in beginInterval!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :goto_13
    return-void

    .line 159
    :cond_14
    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->startInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$000(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;Lcom/google/goggles/TracingProtos$SpanVariable$Type;)V

    goto :goto_13
.end method

.method public declared-synchronized beginTraceAction(I)V
    .registers 6
    .parameter "actionNumber"

    .prologue
    .line 272
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_25

    move-result v0

    if-eqz v0, :cond_f

    .line 278
    :goto_d
    monitor-exit p0

    return-void

    .line 276
    :cond_f
    :try_start_f
    new-instance v0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->cookieFetcher:Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;

    invoke-virtual {v1}, Lcom/google/android/apps/unveil/protocol/TracingCookieFetcher;->getFreshCookie()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->networkInfoProvider:Lcom/google/android/apps/unveil/network/NetworkInfoProvider;

    invoke-virtual {v2}, Lcom/google/android/apps/unveil/network/NetworkInfoProvider;->getNetworkInfo()Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;-><init>(ILjava/lang/String;Lcom/google/goggles/NetworkInfoProtos$NetworkInfo;Lcom/google/android/apps/unveil/protocol/TraceTracker$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->addAction(ILcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)V
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_25

    goto :goto_d

    .line 272
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearAll()V
    .registers 3

    .prologue
    .line 442
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    monitor-enter v1

    .line 443
    :try_start_3
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 444
    monitor-exit v1

    .line 445
    return-void

    .line 444
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public declared-synchronized deleteTraceAction(I)V
    .registers 6
    .parameter "actionNumber"

    .prologue
    .line 311
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_2b

    .line 312
    :try_start_4
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 313
    sget-object v0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "key was not in actions list!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_28

    .line 319
    :goto_1b
    monitor-exit p0

    return-void

    .line 317
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    monitor-exit v1

    goto :goto_1b

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_2b

    .line 311
    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)V
    .registers 3
    .parameter "intervalName"

    .prologue
    .line 176
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getCurrentActionNumber()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 177
    monitor-exit p0

    return-void

    .line 176
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized endInterval(Lcom/google/goggles/TracingProtos$SpanVariable$Type;I)V
    .registers 9
    .parameter "intervalName"
    .parameter "actionNumber"

    .prologue
    .line 188
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getActionData(I)Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    move-result-object v0

    .line 189
    .local v0, actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    if-nez v0, :cond_1d

    .line 190
    sget-object v1, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "TraceAction %d has already been completed, cannot end interval %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_21

    .line 195
    :goto_1b
    monitor-exit p0

    return-void

    .line 194
    :cond_1d
    :try_start_1d
    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->endIntervalNow(Lcom/google/goggles/TracingProtos$SpanVariable$Type;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$100(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;Lcom/google/goggles/TracingProtos$SpanVariable$Type;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_1b

    .line 188
    .end local v0           #actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    :catchall_21
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public endIntervalDelayed(Lcom/google/goggles/TracingProtos$SpanVariable$Type;IJ)V
    .registers 11
    .parameter "intervalName"
    .parameter "actionNumber"
    .parameter "intervalEndedTimestamp"

    .prologue
    .line 199
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getActionData(I)Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    move-result-object v0

    .line 200
    .local v0, actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    if-nez v0, :cond_1b

    .line 201
    sget-object v1, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "TraceAction %d has already been completed, cannot end interval %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :goto_1a
    return-void

    .line 206
    :cond_1b
    invoke-virtual {v0, p1, p3, p4}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->endIntervalAtTime(Lcom/google/goggles/TracingProtos$SpanVariable$Type;J)V

    goto :goto_1a
.end method

.method declared-synchronized getCurrentActionNumber()I
    .registers 2

    .prologue
    .line 121
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->traceActionNumber:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestActionString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 125
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    iget v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->traceActionNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 126
    const-string v0, ""
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_26

    .line 128
    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    iget v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->traceActionNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    invoke-virtual {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->toString()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_26

    move-result-object v0

    goto :goto_11

    .line 125
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getTracingCookieForAction(I)Ljava/lang/String;
    .registers 6
    .parameter "actionNumber"

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getActionData(I)Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    move-result-object v0

    .line 338
    .local v0, actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    if-nez v0, :cond_12

    .line 339
    sget-object v1, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Null action in getTracingCookieForAction."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    const/4 v1, 0x0

    .line 343
    :goto_11
    return-object v1

    :cond_12
    #getter for: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->tracingCookie:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$900(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)Ljava/lang/String;

    move-result-object v1

    goto :goto_11
.end method

.method public getTracingCookieForCurrentAction()Ljava/lang/String;
    .registers 2

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getCurrentActionNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getTracingCookieForAction(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPendingActions()Z
    .registers 5

    .prologue
    .line 452
    iget-object v3, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    monitor-enter v3

    .line 453
    :try_start_3
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    .line 454
    .local v0, actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->isEnded()Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$400(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 455
    const/4 v2, 0x1

    monitor-exit v3

    .line 459
    .end local v0           #actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    :goto_21
    return v2

    .line 458
    :cond_22
    monitor-exit v3

    .line 459
    const/4 v2, 0x0

    goto :goto_21

    .line 458
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_25
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public populateRequest(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)V
    .registers 4
    .parameter "traceRequest"

    .prologue
    .line 423
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    monitor-enter v1

    .line 424
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getCurrentActionNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->tryToEndAllExcept(Ljava/util/List;)V

    .line 425
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->addFinishedTraceActions(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)V

    .line 426
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->clearFinishedTraceActions()V

    .line 427
    monitor-exit v1

    .line 428
    return-void

    .line 427
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public populateRequestContinuous(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)V
    .registers 4
    .parameter "traceRequest"

    .prologue
    .line 435
    iget-object v1, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    monitor-enter v1

    .line 436
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->addFinishedTraceActions(Lcom/google/goggles/TracingProtos$TraceRequest$Builder;)V

    .line 437
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->clearFinishedTraceActions()V

    .line 438
    monitor-exit v1

    .line 439
    return-void

    .line 438
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setTrackingId(Ljava/lang/String;I)V
    .registers 9
    .parameter "trackingId"
    .parameter "actionNumber"

    .prologue
    .line 466
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getActionData(I)Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    move-result-object v0

    .line 467
    .local v0, actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    if-nez v0, :cond_18

    .line 468
    sget-object v1, Lcom/google/android/apps/unveil/protocol/TraceTracker;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    const-string v2, "Null action in setTracingId for number %d."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/unveil/env/UnveilLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    :goto_17
    return-void

    .line 471
    :cond_18
    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->setTrackingId(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$1000(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;Ljava/lang/String;)V

    goto :goto_17
.end method

.method declared-synchronized startNewTraceAction()V
    .registers 2

    .prologue
    .line 326
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getCurrentActionNumber()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getActionData(I)Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 327
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getCurrentActionNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->tryToEndTraceAction(I)V

    .line 329
    :cond_12
    invoke-direct {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->incrementCurrentActionNumber()V

    .line 330
    invoke-virtual {p0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getCurrentActionNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->beginTraceAction(I)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 331
    monitor-exit p0

    return-void

    .line 326
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v0, s:Ljava/lang/StringBuilder;
    const-string v1, "TraceTracker ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "traceActionNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->traceActionNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v1, "currentActions("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "),"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized tryToEndAllExcept(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, excluding:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/apps/unveil/protocol/TraceTracker;->currentActions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    .line 300
    .local v0, a:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    #getter for: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->actionNumber:I
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$800(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 301
    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->isEnded()Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$400(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)Z

    move-result v2

    if-nez v2, :cond_38

    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->shouldEnd()Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$500(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 302
    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->end()V
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$600(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)V
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_35

    goto :goto_b

    .line 299
    .end local v0           #a:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_35
    move-exception v2

    monitor-exit p0

    throw v2

    .line 304
    .restart local v0       #a:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_38
    :try_start_38
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$708(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)I
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_35

    goto :goto_b

    .line 308
    .end local v0           #a:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    :cond_3c
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized tryToEndTraceAction(I)V
    .registers 4
    .parameter "actionNumber"

    .prologue
    .line 285
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/android/apps/unveil/protocol/TraceTracker;->getActionData(I)Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;

    move-result-object v0

    .line 286
    .local v0, actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    if-eqz v0, :cond_16

    .line 287
    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->isEnded()Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$400(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)Z

    move-result v1

    if-nez v1, :cond_18

    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->shouldEnd()Z
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$500(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 288
    #calls: Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->end()V
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$600(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_1c

    .line 293
    :cond_16
    :goto_16
    monitor-exit p0

    return-void

    .line 290
    :cond_18
    :try_start_18
    invoke-static {v0}, Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;->access$704(Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;)I
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_1c

    goto :goto_16

    .line 285
    .end local v0           #actionData:Lcom/google/android/apps/unveil/protocol/TraceTracker$ActionData;
    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

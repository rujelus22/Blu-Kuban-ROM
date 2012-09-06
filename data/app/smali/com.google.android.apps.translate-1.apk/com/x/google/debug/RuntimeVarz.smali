.class public Lcom/x/google/debug/RuntimeVarz;
.super Lcom/x/google/common/util/AbstractObservable;


# static fields
.field private static final FALSE:Ljava/lang/String; = "False"

.field private static final TRUE:Ljava/lang/String; = "True"

.field private static runtimeVarz:Lcom/x/google/debug/RuntimeVarz;


# instance fields
.field private logger:Lcom/x/google/debug/LogSource;

.field private varzTable:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/x/google/common/util/AbstractObservable;-><init>()V

    const-class v0, Lcom/x/google/debug/RuntimeVarz;

    invoke-static {v0}, Lcom/x/google/debug/LogSource;->getLogSource(Ljava/lang/Class;)Lcom/x/google/debug/LogSource;

    move-result-object v0

    iput-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->logger:Lcom/x/google/debug/LogSource;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    return-void
.end method

.method public static getInstance()Lcom/x/google/debug/RuntimeVarz;
    .registers 1

    sget-object v0, Lcom/x/google/debug/RuntimeVarz;->runtimeVarz:Lcom/x/google/debug/RuntimeVarz;

    if-nez v0, :cond_f

    sget-object v0, Lcom/x/google/debug/RuntimeVarz;->runtimeVarz:Lcom/x/google/debug/RuntimeVarz;

    if-nez v0, :cond_f

    new-instance v0, Lcom/x/google/debug/RuntimeVarz;

    invoke-direct {v0}, Lcom/x/google/debug/RuntimeVarz;-><init>()V

    sput-object v0, Lcom/x/google/debug/RuntimeVarz;->runtimeVarz:Lcom/x/google/debug/RuntimeVarz;

    :cond_f
    sget-object v0, Lcom/x/google/debug/RuntimeVarz;->runtimeVarz:Lcom/x/google/debug/RuntimeVarz;

    return-object v0
.end method

.method private getMinAvgMax([I)Ljava/lang/String;
    .registers 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v0, p1, v6

    if-nez v0, :cond_9

    const-string v0, "NA"

    :goto_8
    return-object v0

    :cond_9
    aget v3, p1, v5

    aget v2, p1, v5

    aget v1, p1, v5

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget v0, p1, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/4 v0, 0x2

    :goto_1f
    aget v5, p1, v6

    add-int/lit8 v5, v5, 0x1

    if-ge v0, v5, :cond_41

    aget v5, p1, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v5, p1, v0

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    aget v5, p1, v0

    add-int/2addr v1, v5

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_41
    const/16 v0, 0x5d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget v0, p1, v6

    div-int v0, v1, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method public declared-synchronized appendVarz(Ljava/lang/StringBuffer;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/x/google/debug/RuntimeVarz;->getKeys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/x/google/debug/RuntimeVarz;->runtimeVarz:Lcom/x/google/debug/RuntimeVarz;

    invoke-virtual {v2, v0}, Lcom/x/google/debug/RuntimeVarz;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_28

    goto :goto_5

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2b
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized deleteStartWith(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1f

    goto :goto_7

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_22
    monitor-exit p0

    return-void
.end method

.method public getAsString()Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lcom/x/google/debug/RuntimeVarz;->appendVarz(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getBooleanValue(Ljava/lang/String;Z)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/x/google/debug/RuntimeVarz;->getValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    move-result-object v0

    if-nez v0, :cond_9

    :goto_7
    monitor-exit p0

    return p2

    :cond_9
    :try_start_9
    const-string v1, "True"
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_12

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_e
    move p2, v0

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIntValue(Ljava/lang/String;I)I
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_13

    if-nez v0, :cond_f

    :goto_d
    monitor-exit p0

    return p2

    :cond_f
    const/4 v1, 0x0

    :try_start_10
    aget p2, v0, v1
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_13

    goto :goto_d

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeys()Ljava/util/Enumeration;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getLogSource()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/x/google/debug/DebugUtil;->getLogSource(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_46

    move-result-object v0

    if-nez v0, :cond_d

    move-object v0, v1

    :goto_b
    monitor-exit p0

    return-object v0

    :cond_d
    :try_start_d
    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_1d

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    if-nez v0, :cond_19

    move-object v0, v1

    goto :goto_b

    :cond_19
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_b

    :cond_1d
    instance-of v2, v0, [I

    if-eqz v2, :cond_3a

    check-cast v0, [I

    check-cast v0, [I

    if-nez v0, :cond_29

    move-object v0, v1

    goto :goto_b

    :cond_29
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_35

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_35
    invoke-direct {p0, v0}, Lcom/x/google/debug/RuntimeVarz;->getMinAvgMax([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_3a
    instance-of v1, v0, Lcom/x/google/common/task/Task;

    if-eqz v1, :cond_41

    const-string v0, "Run"

    goto :goto_b

    :cond_41
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_44
    .catchall {:try_start_d .. :try_end_44} :catchall_46

    move-result-object v0

    goto :goto_b

    :catchall_46
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValues(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_11

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_20

    :goto_f
    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_11
    instance-of v1, v0, [I

    if-eqz v1, :cond_23

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/x/google/debug/RuntimeVarz;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_20

    goto :goto_f

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_23
    :try_start_23
    instance-of v1, v0, Lcom/x/google/common/task/Task;

    if-eqz v1, :cond_35

    check-cast v0, Lcom/x/google/common/task/Task;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->getStateLabel()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    move-object v0, v1

    goto :goto_f

    :cond_35
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Unsupported"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_48
    .catchall {:try_start_23 .. :try_end_48} :catchall_20

    move-object v0, v1

    goto :goto_f
.end method

.method public hasRegisteredValues()Z
    .registers 2

    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public declared-synchronized isRegistered(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTask(Ljava/lang/String;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/x/google/common/task/Task;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/String;Lcom/x/google/common/task/Task;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized register(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/x/google/debug/RuntimeVarz;->notifyObservers()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerBoolean(Ljava/lang/String;Z)V
    .registers 6

    monitor-enter p0

    if-eqz p2, :cond_15

    const/4 v0, 0x2

    :try_start_4
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "True"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "False"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/x/google/debug/RuntimeVarz;->register(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_26

    :goto_13
    monitor-exit p0

    return-void

    :cond_15
    const/4 v0, 0x2

    :try_start_16
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "False"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "True"

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/x/google/debug/RuntimeVarz;->register(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_26

    goto :goto_13

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerStatus(Ljava/lang/String;I)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    instance-of v1, v0, [I

    if-eqz v1, :cond_3a

    check-cast v0, [I

    check-cast v0, [I

    add-int/lit8 v1, p2, 0x1

    new-array v2, v1, [I

    array-length v3, v0

    if-gt v3, v1, :cond_23

    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1e
    invoke-virtual {p0, p1}, Lcom/x/google/debug/RuntimeVarz;->notifyObservers(Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_37

    monitor-exit p0

    return-void

    :cond_23
    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_25
    array-length v4, v2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    array-length v1, v2

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    aput v1, v2, v0
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_37

    goto :goto_1e

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3a
    add-int/lit8 v0, p2, 0x1

    :try_start_3c
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iget-object v1, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_37

    goto :goto_1e
.end method

.method public schedule(Ljava/lang/String;)Z
    .registers 6

    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v0, v1, Lcom/x/google/common/task/Task;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->logger:Lcom/x/google/debug/LogSource;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scheduling"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/x/google/debug/LogSource;->info(Ljava/lang/Object;)V

    move-object v0, v1

    check-cast v0, Lcom/x/google/common/task/Task;

    invoke-virtual {v0}, Lcom/x/google/common/task/Task;->schedule()V

    :cond_28
    if-eqz v1, :cond_30

    instance-of v0, v1, Lcom/x/google/common/task/Task;

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method public declared-synchronized setValue(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_2b

    move-result-object v1

    if-nez v1, :cond_c

    :cond_a
    :goto_a
    monitor-exit p0

    return v0

    :cond_c
    :try_start_c
    instance-of v1, v1, [Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    if-eqz p2, :cond_29

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x0

    aget-object v3, v0, p2

    aput-object v3, v0, v2

    aput-object v1, v0, p2

    invoke-virtual {p0, p1}, Lcom/x/google/debug/RuntimeVarz;->notifyObservers(Ljava/lang/Object;)V
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_2b

    :cond_29
    const/4 v0, 0x1

    goto :goto_a

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setValue(Ljava/lang/String;Z)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/x/google/debug/RuntimeVarz;->registerBoolean(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateStatus(Ljava/lang/String;I)V
    .registers 7

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_47

    instance-of v1, v0, [I

    if-eqz v1, :cond_47

    check-cast v0, [I

    check-cast v0, [I

    array-length v1, v0

    if-ne v1, v2, :cond_1d

    const/4 v1, 0x0

    aput p2, v0, v1

    :goto_18
    invoke-virtual {p0, p1}, Lcom/x/google/debug/RuntimeVarz;->notifyObservers(Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_31

    monitor-exit p0

    return-void

    :cond_1d
    const/4 v1, 0x0

    :try_start_1e
    aget v1, v0, v1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_34

    const/4 v1, 0x1

    const/4 v2, 0x2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    aput p2, v0, v1
    :try_end_30
    .catchall {:try_start_1e .. :try_end_30} :catchall_31

    goto :goto_18

    :catchall_31
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_34
    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_37
    aget v3, v0, v3

    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    goto :goto_18

    :cond_47
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_37 .. :try_end_52} :catchall_31

    goto :goto_18
.end method

.method public declared-synchronized updateStatus(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    instance-of v1, v0, [Ljava/lang/String;

    if-eqz v1, :cond_19

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    :goto_14
    invoke-virtual {p0, p1}, Lcom/x/google/debug/RuntimeVarz;->notifyObservers(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_25

    monitor-exit p0

    return-void

    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/x/google/debug/RuntimeVarz;->varzTable:Ljava/util/Hashtable;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_25

    goto :goto_14

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

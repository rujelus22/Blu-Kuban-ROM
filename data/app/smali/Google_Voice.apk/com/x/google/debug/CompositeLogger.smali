.class public Lcom/x/google/debug/CompositeLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/x/google/debug/Logger;


# instance fields
.field private final loggers:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/x/google/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    return-void
.end method

.method private hasLoggableChild(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/x/google/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    move v2, v1

    :goto_8
    if-ge v2, v3, :cond_1e

    iget-object v0, p0, Lcom/x/google/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/debug/Logger;

    invoke-virtual {p0, p1, p2, p3}, Lcom/x/google/debug/CompositeLogger;->isLoggable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_1e
    move v0, v1

    goto :goto_19
.end method


# virtual methods
.method public declared-synchronized add(Lcom/x/google/debug/Logger;)V
    .registers 3

    monitor-enter p0

    if-nez p1, :cond_c

    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_9

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/x/google/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_9

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized flush()V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/x/google/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    move v1, v0

    :goto_9
    if-ge v1, v2, :cond_1a

    iget-object v0, p0, Lcom/x/google/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/debug/Logger;

    invoke-interface {v0}, Lcom/x/google/debug/Logger;->flush()V
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_1c

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLoggable(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/x/google/debug/CompositeLogger;->hasLoggableChild(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized log(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 14

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/x/google/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v7

    move v6, v0

    :goto_9
    if-ge v6, v7, :cond_1f

    iget-object v0, p0, Lcom/x/google/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/debug/Logger;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/x/google/debug/Logger;->log(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_21

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_9

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 16

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/x/google/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v8

    move v7, v0

    :goto_9
    if-ge v7, v8, :cond_20

    iget-object v0, p0, Lcom/x/google/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/debug/Logger;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/x/google/debug/Logger;->logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1c
    .catchall {:try_start_2 .. :try_end_1c} :catchall_22

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_9

    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized logTimer(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V
    .registers 18

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/x/google/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    move v8, v0

    :goto_9
    if-ge v8, v9, :cond_22

    iget-object v0, p0, Lcom/x/google/debug/CompositeLogger;->loggers:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/x/google/debug/Logger;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/x/google/debug/Logger;->logTimer(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1e
    .catchall {:try_start_2 .. :try_end_1e} :catchall_24

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_9

    :cond_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/vlingo/client/core/logging/LoggingEngine;
.super Ljava/lang/Object;
.source "LoggingEngine.java"


# static fields
.field public static final LEVEL_DEBUG:Ljava/lang/String; = "DEBUG"

.field public static final LEVEL_ERROR:Ljava/lang/String; = "ERROR"

.field public static final LEVEL_INFO:Ljava/lang/String; = "INFO "

.field protected static volatile instance:Lcom/vlingo/client/core/logging/LoggingEngine;


# instance fields
.field private final classFilter:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filterClasses:Z

.field private filterThreads:Z

.field private logMsgPrefix:Ljava/lang/String;

.field protected final logTargets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/logging/LogTarget;",
            ">;"
        }
    .end annotation
.end field

.field private loggingEnabled:Z

.field private final threadFilter:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/vlingo/client/core/logging/LoggingEngine;->instance:Lcom/vlingo/client/core/logging/LoggingEngine;

    return-void
.end method

.method protected constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->logMsgPrefix:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->logTargets:Ljava/util/Vector;

    .line 29
    iput-boolean v1, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->filterClasses:Z

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->classFilter:Ljava/util/Vector;

    .line 31
    iput-boolean v1, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->filterThreads:Z

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->threadFilter:Ljava/util/Vector;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->loggingEnabled:Z

    .line 40
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/vlingo/client/core/logging/LoggingEngine;
    .registers 2

    .prologue
    .line 43
    const-class v1, Lcom/vlingo/client/core/logging/LoggingEngine;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/core/logging/LoggingEngine;->instance:Lcom/vlingo/client/core/logging/LoggingEngine;

    if-nez v0, :cond_e

    .line 44
    new-instance v0, Lcom/vlingo/client/core/logging/LoggingEngine;

    invoke-direct {v0}, Lcom/vlingo/client/core/logging/LoggingEngine;-><init>()V

    sput-object v0, Lcom/vlingo/client/core/logging/LoggingEngine;->instance:Lcom/vlingo/client/core/logging/LoggingEngine;

    .line 45
    :cond_e
    sget-object v0, Lcom/vlingo/client/core/logging/LoggingEngine;->instance:Lcom/vlingo/client/core/logging/LoggingEngine;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isInitialized()Z
    .registers 2

    .prologue
    .line 87
    const-class v1, Lcom/vlingo/client/core/logging/LoggingEngine;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/vlingo/client/core/logging/LoggingEngine;->instance:Lcom/vlingo/client/core/logging/LoggingEngine;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_c

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addClassToFilter(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 107
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->classFilter:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 108
    monitor-exit p0

    return-void

    .line 107
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addTarget(Lcom/vlingo/client/core/logging/LogTarget;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 119
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->logTargets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 120
    monitor-exit p0

    return-void

    .line 119
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addThreadToFilter(Ljava/lang/String;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->threadFilter:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeLoggers()V
    .registers 5

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->logTargets:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 92
    .local v1, numTargets:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    if-ge v0, v1, :cond_18

    .line 93
    iget-object v3, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->logTargets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vlingo/client/core/logging/LogTarget;

    .line 94
    .local v2, target:Lcom/vlingo/client/core/logging/LogTarget;
    invoke-interface {v2}, Lcom/vlingo/client/core/logging/LogTarget;->close()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 96
    .end local v2           #target:Lcom/vlingo/client/core/logging/LogTarget;
    :cond_18
    monitor-exit p0

    return-void

    .line 91
    .end local v0           #i:I
    .end local v1           #numTargets:I
    :catchall_1a
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized enableClassFilter(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 103
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->filterClasses:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 104
    monitor-exit p0

    return-void

    .line 103
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized enableThreadFilter(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 111
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->filterThreads:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 112
    monitor-exit p0

    return-void

    .line 111
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected formatLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "className"
    .parameter "level"
    .parameter "msg"

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 64
    .local v0, curTime:J
    const-wide/16 v6, 0x3e8

    rem-long v3, v0, v6

    .line 65
    .local v3, msecs:J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 66
    .local v2, date:Ljava/util/Date;
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v6, 0x50

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 67
    .local v5, sb:Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->logMsgPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " +"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    const-string v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    if-eqz p1, :cond_63

    .line 79
    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    :cond_63
    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public declared-synchronized getLogMessagePrefix()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->logMsgPrefix:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTargets()Ljava/util/Vector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/vlingo/client/core/logging/LogTarget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->logTargets:Ljava/util/Vector;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "className"
    .parameter "level"
    .parameter "msg"

    .prologue
    .line 49
    iget-boolean v4, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->loggingEnabled:Z

    if-eqz v4, :cond_24

    iget-boolean v4, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->filterClasses:Z

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->classFilter:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    :cond_10
    iget-boolean v4, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->filterThreads:Z

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->threadFilter:Ljava/util/Vector;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 60
    :cond_24
    return-void

    .line 54
    :cond_25
    iget-object v4, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->logTargets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 55
    .local v2, numTargets:I
    invoke-virtual {p0, p1, p2, p3}, Lcom/vlingo/client/core/logging/LoggingEngine;->formatLogMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, finalMessage:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_30
    if-ge v1, v2, :cond_24

    .line 57
    iget-object v4, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->logTargets:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vlingo/client/core/logging/LogTarget;

    .line 58
    .local v3, target:Lcom/vlingo/client/core/logging/LogTarget;
    const-string v4, "ERROR"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/vlingo/client/core/logging/LogTarget;->log(Ljava/lang/String;Z)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_30
.end method

.method public declared-synchronized removeTarget(Lcom/vlingo/client/core/logging/LogTarget;)V
    .registers 3
    .parameter "target"

    .prologue
    .line 127
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->logTargets:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 128
    monitor-exit p0

    return-void

    .line 127
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->loggingEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLogMessagePrefix(Ljava/lang/String;)V
    .registers 3
    .parameter "prefix"

    .prologue
    .line 135
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/vlingo/client/core/logging/LoggingEngine;->logMsgPrefix:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 136
    monitor-exit p0

    return-void

    .line 135
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

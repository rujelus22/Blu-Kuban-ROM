.class public abstract Lcom/googlex/debug/SimpleLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/debug/Logger;


# static fields
.field protected static final FORBIDDEN_KEYWORDS:Ljava/lang/String; = "${LOG_FORBIDDEN_KEY}"

.field protected static final MASK_KEYWORDS:Ljava/lang/String; = "${LOG_MASK_KEY}"


# instance fields
.field private activationLevel:I

.field private buffer:Ljava/lang/StringBuffer;

.field private final forbiddenKeys:[Ljava/lang/String;

.field private final logThreads:Z

.field private final logTime:Z

.field private final maskKeys:[Ljava/lang/String;

.field private final startTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/googlex/debug/Log;->parseLogLevel(I)I

    move-result v0

    iput v0, p0, Lcom/googlex/debug/SimpleLogger;->activationLevel:I

    invoke-static {}, Lcom/googlex/debug/Log;->logThreads()Z

    move-result v0

    iput-boolean v0, p0, Lcom/googlex/debug/SimpleLogger;->logThreads:Z

    invoke-static {}, Lcom/googlex/debug/Log;->logTime()Z

    move-result v0

    iput-boolean v0, p0, Lcom/googlex/debug/SimpleLogger;->logTime:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/googlex/debug/SimpleLogger;->startTime:J

    const-string v0, "${LOG_FORBIDDEN_KEY}"

    invoke-virtual {p0, v0}, Lcom/googlex/debug/SimpleLogger;->getKeywords(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/debug/SimpleLogger;->forbiddenKeys:[Ljava/lang/String;

    const-string v0, "${LOG_MASK_KEY}"

    invoke-virtual {p0, v0}, Lcom/googlex/debug/SimpleLogger;->getKeywords(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlex/debug/SimpleLogger;->maskKeys:[Ljava/lang/String;

    return-void
.end method

.method private censure(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v5, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->forbiddenKeys:[Ljava/lang/String;

    if-eqz v0, :cond_1e

    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/googlex/debug/SimpleLogger;->forbiddenKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    iget-object v2, p0, Lcom/googlex/debug/SimpleLogger;->forbiddenKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_1b

    iget-object v1, p0, Lcom/googlex/debug/SimpleLogger;->forbiddenKeys:[Ljava/lang/String;

    aget-object p1, v1, v0

    :cond_1a
    return-object p1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1e
    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->maskKeys:[Ljava/lang/String;

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_23
    iget-object v2, p0, Lcom/googlex/debug/SimpleLogger;->maskKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    :goto_28
    iget-object v2, p0, Lcom/googlex/debug/SimpleLogger;->maskKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_5f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "XXX"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/googlex/debug/SimpleLogger;->maskKeys:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_28

    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_23
.end method


# virtual methods
.method public flush()V
    .registers 1

    return-void
.end method

.method protected getKeywords(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Lcom/googlex/debug/DebugUtil;->isAntPropertyExpanded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, ","

    invoke-static {p1, v0}, Lcom/googlex/common/util/text/TextUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getLogTime()I
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/googlex/debug/SimpleLogger;->startTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getThreadId()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isLoggable(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5

    iget v0, p0, Lcom/googlex/debug/SimpleLogger;->activationLevel:I

    if-gt v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public log(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 10

    iget v0, p0, Lcom/googlex/debug/SimpleLogger;->activationLevel:I

    if-gt v0, p2, :cond_88

    iget-object v1, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p2}, Lcom/googlex/debug/Log;->getLevelName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v0, p0, Lcom/googlex/debug/SimpleLogger;->logThreads:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlex/debug/SimpleLogger;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_29
    iget-boolean v0, p0, Lcom/googlex/debug/SimpleLogger;->logTime:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/googlex/debug/SimpleLogger;->getLogTime()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3c
    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_65

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_65
    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/googlex/debug/SimpleLogger;->censure(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_7d
    .catchall {:try_start_7 .. :try_end_7d} :catchall_89

    move-result-object v0

    :try_start_7e
    iget-object v2, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v1
    :try_end_85
    .catchall {:try_start_7e .. :try_end_85} :catchall_91

    invoke-virtual {p0, v0}, Lcom/googlex/debug/SimpleLogger;->log(Ljava/lang/String;)V

    :cond_88
    return-void

    :catchall_89
    move-exception v0

    :try_start_8a
    iget-object v2, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    throw v0

    :catchall_91
    move-exception v0

    monitor-exit v1
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_91

    throw v0
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    iget v0, p0, Lcom/googlex/debug/SimpleLogger;->activationLevel:I

    if-gt v0, p3, :cond_76

    iget-object v1, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p3}, Lcom/googlex/debug/Log;->getLevelName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ":EXCEPTION]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_3f

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3f
    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_66

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p2}, Lcom/googlex/debug/StackTraceUtil;->getCallStack(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_66
    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_6b
    .catchall {:try_start_7 .. :try_end_6b} :catchall_77

    move-result-object v0

    :try_start_6c
    iget-object v2, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v1
    :try_end_73
    .catchall {:try_start_6c .. :try_end_73} :catchall_7f

    invoke-virtual {p0, v0}, Lcom/googlex/debug/SimpleLogger;->log(Ljava/lang/String;)V

    :cond_76
    return-void

    :catchall_77
    move-exception v0

    :try_start_78
    iget-object v2, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    throw v0

    :catchall_7f
    move-exception v0

    monitor-exit v1
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_7f

    throw v0
.end method

.method public logTimer(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V
    .registers 13

    iget v0, p0, Lcom/googlex/debug/SimpleLogger;->activationLevel:I

    if-gt v0, p4, :cond_6e

    iget-object v1, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p4}, Lcom/googlex/debug/Log;->getLevelName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ":TIMER]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_3f

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3f
    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-ltz v0, :cond_6f

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_5b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_72

    move-result-object v0

    :try_start_64
    iget-object v2, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_7a

    invoke-virtual {p0, v0}, Lcom/googlex/debug/SimpleLogger;->log(Ljava/lang/String;)V

    :cond_6e
    return-void

    :cond_6f
    :try_start_6f
    const-string v0, "START"
    :try_end_71
    .catchall {:try_start_6f .. :try_end_71} :catchall_72

    goto :goto_5b

    :catchall_72
    move-exception v0

    :try_start_73
    iget-object v2, p0, Lcom/googlex/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    throw v0

    :catchall_7a
    move-exception v0

    monitor-exit v1
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_7a

    throw v0
.end method

.class public abstract Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/uploader/googlemobile/debug/Logger;


# instance fields
.field private activationLevel:I

.field private buffer:Ljava/lang/StringBuffer;

.field private final logThreads:Z

.field private final logTime:Z

.field private final startTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->parseLogLevel(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->activationLevel:I

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->logThreads()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->logThreads:Z

    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->logTime()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->logTime:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->startTime:J

    return-void
.end method


# virtual methods
.method public flush()V
    .registers 1

    return-void
.end method

.method public getLogTime()I
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->startTime:J

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

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->activationLevel:I

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

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->activationLevel:I

    if-gt v0, p2, :cond_80

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p2}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->getLevelName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->logThreads:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->getThreadId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_29
    iget-boolean v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->logTime:Z

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->getLogTime()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3c
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-eqz p3, :cond_65

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_65
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_75
    .catchall {:try_start_7 .. :try_end_75} :catchall_81

    move-result-object v1

    :try_start_76
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_76 .. :try_end_7d} :catchall_89

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->log(Ljava/lang/String;)V

    :cond_80
    return-void

    :catchall_81
    move-exception v1

    :try_start_82
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    throw v1

    :catchall_89
    move-exception v1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_82 .. :try_end_8b} :catchall_89

    throw v1
.end method

.method public abstract log(Ljava/lang/String;)V
.end method

.method public logThrowable(Ljava/lang/Object;Ljava/lang/Throwable;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->activationLevel:I

    if-gt v0, p3, :cond_65

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p3}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->getLevelName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ":EXCEPTION]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_3f

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3f
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5a
    .catchall {:try_start_7 .. :try_end_5a} :catchall_66

    move-result-object v1

    :try_start_5b
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_6e

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->log(Ljava/lang/String;)V

    :cond_65
    return-void

    :catchall_66
    move-exception v1

    :try_start_67
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    throw v1

    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public logTimer(Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;I)V
    .registers 12

    iget v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->activationLevel:I

    if-gt v0, p4, :cond_6e

    iget-object v0, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {p4}, Lcom/google/android/apps/uploader/googlemobile/debug/Log;->getLevelName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ":TIMER]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p5, :cond_3f

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_3f
    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-ltz v2, :cond_6f

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_63
    .catchall {:try_start_7 .. :try_end_63} :catchall_72

    move-result-object v1

    :try_start_64
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_7a

    invoke-virtual {p0, v1}, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->log(Ljava/lang/String;)V

    :cond_6e
    return-void

    :cond_6f
    :try_start_6f
    const-string v2, "START"
    :try_end_71
    .catchall {:try_start_6f .. :try_end_71} :catchall_72

    goto :goto_5b

    :catchall_72
    move-exception v1

    :try_start_73
    iget-object v2, p0, Lcom/google/android/apps/uploader/googlemobile/debug/SimpleLogger;->buffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    throw v1

    :catchall_7a
    move-exception v1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_73 .. :try_end_7c} :catchall_7a

    throw v1
.end method

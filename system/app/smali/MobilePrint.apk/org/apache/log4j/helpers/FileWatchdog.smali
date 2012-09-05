.class public abstract Lorg/apache/log4j/helpers/FileWatchdog;
.super Ljava/lang/Thread;
.source "FileWatchdog.java"


# static fields
.field public static final DEFAULT_DELAY:J = 0xea60L


# instance fields
.field protected delay:J

.field file:Ljava/io/File;

.field protected filename:Ljava/lang/String;

.field interrupted:Z

.field lastModif:J

.field warnedAlready:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 45
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->delay:J

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->lastModif:J

    .line 49
    iput-boolean v2, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    .line 50
    iput-boolean v2, p0, Lorg/apache/log4j/helpers/FileWatchdog;->interrupted:Z

    .line 54
    iput-object p1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->file:Ljava/io/File;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 57
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/FileWatchdog;->checkAndConfigure()V

    .line 58
    return-void
.end method


# virtual methods
.method protected checkAndConfigure()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 76
    :try_start_1
    iget-object v4, p0, Lorg/apache/log4j/helpers/FileWatchdog;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_6} :catch_1e

    move-result v1

    .line 84
    .local v1, fileExists:Z
    if-eqz v1, :cond_40

    .line 85
    iget-object v4, p0, Lorg/apache/log4j/helpers/FileWatchdog;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 86
    .local v2, l:J
    iget-wide v4, p0, Lorg/apache/log4j/helpers/FileWatchdog;->lastModif:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_1d

    .line 87
    iput-wide v2, p0, Lorg/apache/log4j/helpers/FileWatchdog;->lastModif:J

    .line 88
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/FileWatchdog;->doOnChange()V

    .line 89
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    .line 97
    .end local v1           #fileExists:Z
    .end local v2           #l:J
    :cond_1d
    :goto_1d
    return-void

    .line 78
    :catch_1e
    move-exception v0

    .local v0, e:Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Was not allowed to read check file existance, file:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 80
    iput-boolean v6, p0, Lorg/apache/log4j/helpers/FileWatchdog;->interrupted:Z

    goto :goto_1d

    .line 92
    .end local v0           #e:Ljava/lang/SecurityException;
    .restart local v1       #fileExists:Z
    :cond_40
    iget-boolean v4, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    if-nez v4, :cond_1d

    .line 93
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] does not exist."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 94
    iput-boolean v6, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    goto :goto_1d
.end method

.method protected abstract doOnChange()V
.end method

.method public run()V
    .registers 3

    .prologue
    .line 101
    :goto_0
    iget-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->interrupted:Z

    if-eqz v0, :cond_5

    .line 109
    return-void

    .line 103
    :cond_5
    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    iget-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->delay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_d} :catch_11

    .line 107
    :goto_d
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/FileWatchdog;->checkAndConfigure()V

    goto :goto_0

    .line 104
    :catch_11
    move-exception v0

    goto :goto_d
.end method

.method public setDelay(J)V
    .registers 3
    .parameter "delay"

    .prologue
    .line 65
    iput-wide p1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->delay:J

    .line 66
    return-void
.end method

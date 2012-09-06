.class public Lcom/google/android/music/log/LogFile;
.super Ljava/lang/Object;
.source "LogFile.java"


# static fields
.field private static final LOGV:Z


# instance fields
.field private mLogDir:Ljava/io/File;

.field private mLogFileName:Ljava/lang/String;

.field private mLogRecord:Ljava/util/logging/LogRecord;

.field private mLogger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "LogFile"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/log/LogFile;->LOGV:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .registers 11
    .parameter "name"
    .parameter "dir"
    .parameter "fileName"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v3, Ljava/util/logging/LogRecord;

    sget-object v4, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/music/log/LogFile;->mLogRecord:Ljava/util/logging/LogRecord;

    .line 37
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_18

    if-nez p3, :cond_25

    .line 38
    :cond_18
    const-string v3, "LogFile"

    const-string v4, "Invalid configuration provided"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 42
    :cond_25
    iput-object p2, p0, Lcom/google/android/music/log/LogFile;->mLogDir:Ljava/io/File;

    .line 43
    iput-object p3, p0, Lcom/google/android/music/log/LogFile;->mLogFileName:Ljava/lang/String;

    .line 45
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/music/log/LogFile;->mLogDir:Ljava/io/File;

    iget-object v4, p0, Lcom/google/android/music/log/LogFile;->mLogFileName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 46
    .local v2, path:Ljava/io/File;
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/log/LogFile;->mLogger:Ljava/util/logging/Logger;

    .line 49
    :try_start_38
    new-instance v1, Ljava/util/logging/FileHandler;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x10

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {v1, v3, v4, v5, v6}, Ljava/util/logging/FileHandler;-><init>(Ljava/lang/String;IIZ)V

    .line 51
    .local v1, handler:Ljava/util/logging/Handler;
    sget-boolean v3, Lcom/google/android/music/log/LogFile;->LOGV:Z

    if-eqz v3, :cond_65

    .line 52
    const-string v3, "LogFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_65
    new-instance v3, Lcom/google/android/music/log/CustomFormatter;

    invoke-direct {v3}, Lcom/google/android/music/log/CustomFormatter;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/logging/Handler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 55
    iget-object v3, p0, Lcom/google/android/music/log/LogFile;->mLogger:Ljava/util/logging/Logger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 56
    iget-object v3, p0, Lcom/google/android/music/log/LogFile;->mLogger:Ljava/util/logging/Logger;

    invoke-virtual {v3, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 57
    iget-object v3, p0, Lcom/google/android/music/log/LogFile;->mLogger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_7f} :catch_80

    .line 62
    .end local v1           #handler:Ljava/util/logging/Handler;
    :goto_7f
    return-void

    .line 59
    :catch_80
    move-exception v0

    .line 60
    .local v0, e:Ljava/io/IOException;
    const-string v3, "LogFile"

    const-string v4, "Exception: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7f
.end method

.method private dumpLogFile(Ljava/io/File;Ljava/io/PrintWriter;)V
    .registers 10
    .parameter "file"
    .parameter "writer"

    .prologue
    .line 182
    const/4 v2, 0x0

    .line 183
    .local v2, reader:Ljava/io/InputStreamReader;
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 187
    :try_start_21
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_48
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_26} :catch_50

    .line 188
    .end local v2           #reader:Ljava/io/InputStreamReader;
    .local v3, reader:Ljava/io/InputStreamReader;
    const/16 v5, 0x2000

    :try_start_28
    new-array v0, v5, [C

    .line 190
    .local v0, buf:[C
    :goto_2a
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_3b

    move-result v4

    .line 191
    .local v4, ret:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_36

    .line 199
    invoke-static {v3}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 201
    .end local v0           #buf:[C
    .end local v3           #reader:Ljava/io/InputStreamReader;
    .end local v4           #ret:I
    .restart local v2       #reader:Ljava/io/InputStreamReader;
    :goto_35
    return-void

    .line 194
    .end local v2           #reader:Ljava/io/InputStreamReader;
    .restart local v0       #buf:[C
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    .restart local v4       #ret:I
    :cond_36
    const/4 v5, 0x0

    :try_start_37
    invoke-virtual {p2, v0, v5, v4}, Ljava/io/PrintWriter;->write([CII)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_4d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_2a

    .line 196
    .end local v0           #buf:[C
    .end local v4           #ret:I
    :catch_3b
    move-exception v1

    move-object v2, v3

    .line 197
    .end local v3           #reader:Ljava/io/InputStreamReader;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #reader:Ljava/io/InputStreamReader;
    :goto_3d
    :try_start_3d
    const-string v5, "LogFile"

    const-string v6, "Exception: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_48

    .line 199
    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_35

    .end local v1           #e:Ljava/io/IOException;
    :catchall_48
    move-exception v5

    :goto_49
    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .end local v2           #reader:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    :catchall_4d
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/InputStreamReader;
    .restart local v2       #reader:Ljava/io/InputStreamReader;
    goto :goto_49

    .line 196
    :catch_50
    move-exception v1

    goto :goto_3d
.end method

.method private declared-synchronized log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .parameter "level"
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 134
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/log/LogFile;->mLogger:Ljava/util/logging/Logger;

    if-nez v0, :cond_e

    .line 135
    const-string v0, "LogFile"

    const-string v1, "File logger not configured"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_38

    .line 142
    :goto_c
    monitor-exit p0

    return-void

    .line 138
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/music/log/LogFile;->mLogRecord:Ljava/util/logging/LogRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/LogRecord;->setMillis(J)V

    .line 139
    iget-object v0, p0, Lcom/google/android/music/log/LogFile;->mLogRecord:Ljava/util/logging/LogRecord;

    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setLevel(Ljava/util/logging/Level;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/music/log/LogFile;->mLogRecord:Ljava/util/logging/LogRecord;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setMessage(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/music/log/LogFile;->mLogger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/android/music/log/LogFile;->mLogRecord:Ljava/util/logging/LogRecord;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V
    :try_end_37
    .catchall {:try_start_e .. :try_end_37} :catchall_38

    goto :goto_c

    .line 134
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 9
    .parameter "level"
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/music/log/LogFile;->mLogger:Ljava/util/logging/Logger;

    if-nez v0, :cond_e

    .line 146
    const-string v0, "LogFile"

    const-string v1, "File logger not configured"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3d

    .line 154
    :goto_c
    monitor-exit p0

    return-void

    .line 149
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/music/log/LogFile;->mLogRecord:Ljava/util/logging/LogRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/LogRecord;->setMillis(J)V

    .line 150
    iget-object v0, p0, Lcom/google/android/music/log/LogFile;->mLogRecord:Ljava/util/logging/LogRecord;

    invoke-virtual {v0, p1}, Ljava/util/logging/LogRecord;->setLevel(Ljava/util/logging/Level;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/music/log/LogFile;->mLogRecord:Ljava/util/logging/LogRecord;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/LogRecord;->setMessage(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/music/log/LogFile;->mLogRecord:Ljava/util/logging/LogRecord;

    invoke-virtual {v0, p4}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 153
    iget-object v0, p0, Lcom/google/android/music/log/LogFile;->mLogger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/google/android/music/log/LogFile;->mLogRecord:Ljava/util/logging/LogRecord;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V
    :try_end_3c
    .catchall {:try_start_e .. :try_end_3c} :catchall_3d

    goto :goto_c

    .line 145
    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 74
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/music/log/LogFile;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 7
    .parameter "writer"

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/google/android/music/log/LogFile;->mLogDir:Ljava/io/File;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/google/android/music/log/LogFile;->mLogFileName:Ljava/lang/String;

    if-nez v2, :cond_12

    .line 170
    :cond_9
    const-string v2, "LogFile"

    const-string v3, "The file or directory of the log file is unknown"

    invoke-static {v2, v3}, Lcom/google/android/music/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_42

    .line 179
    :cond_10
    monitor-exit p0

    return-void

    .line 173
    :cond_12
    const/4 v1, 0x0

    .local v1, i:I
    :goto_13
    const/4 v2, 0x2

    if-ge v1, v2, :cond_10

    .line 174
    :try_start_16
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/google/android/music/log/LogFile;->mLogDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/google/android/music/log/LogFile;->mLogFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 176
    invoke-direct {p0, v0, p1}, Lcom/google/android/music/log/LogFile;->dumpLogFile(Ljava/io/File;Ljava/io/PrintWriter;)V
    :try_end_3f
    .catchall {:try_start_16 .. :try_end_3f} :catchall_42

    .line 173
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 169
    .end local v0           #f:Ljava/io/File;
    .end local v1           #i:I
    :catchall_42
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 102
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/music/log/LogFile;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 106
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/music/log/LogFile;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 122
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/music/log/LogFile;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 130
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/music/log/LogFile;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 82
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/music/log/LogFile;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 86
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/music/log/LogFile;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 65
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/music/log/LogFile;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 90
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/music/log/LogFile;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 94
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/music/log/LogFile;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    return-void
.end method

.method public wtf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 110
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/music/log/LogFile;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 118
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/music/log/LogFile;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    return-void
.end method

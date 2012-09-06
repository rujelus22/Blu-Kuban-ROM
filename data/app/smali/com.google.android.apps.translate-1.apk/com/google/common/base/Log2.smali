.class public final Lcom/google/common/base/Log2;
.super Ljava/lang/Object;
.source "Log2.java"


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final LOG2_USE_JAVA_LOG_PROP:Ljava/lang/String; = "google.log2UseJavaLog"

.field private static defaultLog:Lcom/google/common/logging/Logger;

.field private static systemErrLog:Lcom/google/common/logging/Logger;

.field public static useJavaLogging:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 71
    sput-object v2, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    .line 72
    sput-object v2, Lcom/google/common/base/Log2;->systemErrLog:Lcom/google/common/logging/Logger;

    .line 77
    const/4 v2, 0x0

    sput-boolean v2, Lcom/google/common/base/Log2;->useJavaLogging:Z

    .line 85
    const-string v2, "google.log2UseJavaLog"

    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/google/common/base/Log2;->useJavaLogging:Z

    .line 86
    sget-boolean v2, Lcom/google/common/base/Log2;->useJavaLogging:Z

    if-eqz v2, :cond_1f

    .line 87
    new-instance v2, Lcom/google/common/base/Log2Logger;

    invoke-direct {v2}, Lcom/google/common/base/Log2Logger;-><init>()V

    sput-object v2, Lcom/google/common/base/Log2;->systemErrLog:Lcom/google/common/logging/Logger;

    .line 88
    sget-object v2, Lcom/google/common/base/Log2;->systemErrLog:Lcom/google/common/logging/Logger;

    sput-object v2, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    .line 90
    :cond_1f
    sget-object v2, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    if-nez v2, :cond_3a

    .line 92
    :try_start_23
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 94
    .local v0, bw:Ljava/io/BufferedWriter;
    new-instance v2, Lcom/google/common/base/LogWriter;

    invoke-direct {v2, v0}, Lcom/google/common/base/LogWriter;-><init>(Ljava/io/Writer;)V

    sput-object v2, Lcom/google/common/base/Log2;->systemErrLog:Lcom/google/common/logging/Logger;

    .line 95
    sget-object v2, Lcom/google/common/base/Log2;->systemErrLog:Lcom/google/common/logging/Logger;

    sput-object v2, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_3a} :catch_3b

    .line 101
    :cond_3a
    return-void

    .line 96
    :catch_3b
    move-exception v1

    .line 97
    .local v1, t:Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Log2: could not initialize  LogWriter object!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultLog()Lcom/google/common/logging/Logger;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 132
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    return-object v0
.end method

.method public static getExceptionTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6
    .parameter "t"

    .prologue
    .line 213
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 214
    .local v2, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 215
    .local v0, pw:Ljava/io/PrintWriter;
    instance-of v3, p0, Ljava/sql/SQLException;

    if-eqz v3, :cond_4d

    move-object v1, p0

    .line 216
    check-cast v1, Ljava/sql/SQLException;

    .line 218
    .local v1, sqlx:Ljava/sql/SQLException;
    :goto_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLException: errorCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sqlState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, v0}, Ljava/sql/SQLException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 222
    invoke-virtual {v1}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object v1

    .line 223
    if-nez v1, :cond_47

    .line 231
    .end local v1           #sqlx:Ljava/sql/SQLException;
    :goto_42
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 225
    .restart local v1       #sqlx:Ljava/sql/SQLException;
    :cond_47
    const-string v3, "chained to:"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    .line 228
    .end local v1           #sqlx:Ljava/sql/SQLException;
    :cond_4d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_42
.end method

.method public static getThreshold()I
    .registers 1

    .prologue
    .line 151
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    invoke-interface {v0}, Lcom/google/common/logging/Logger;->getThreshold()I

    move-result v0

    return v0
.end method

.method public static logDebug(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 158
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p0}, Lcom/google/common/logging/Logger;->logDebug(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 197
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p0}, Lcom/google/common/logging/Logger;->logError(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static logEvent(Ljava/lang/String;)V
    .registers 2
    .parameter "msg"

    .prologue
    .line 165
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p0}, Lcom/google/common/logging/Logger;->logEvent(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .registers 2
    .parameter "t"

    .prologue
    .line 179
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p0}, Lcom/google/common/logging/Logger;->logException(Ljava/lang/Throwable;)V

    .line 180
    return-void
.end method

.method public static logException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3
    .parameter "t"
    .parameter "msg"

    .prologue
    .line 186
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/common/logging/Logger;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public static logSevereException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 3
    .parameter "t"
    .parameter "msg"

    .prologue
    .line 190
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p0, p1}, Lcom/google/common/logging/Logger;->logSevereException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static setDefaultLog(Lcom/google/common/logging/Logger;)V
    .registers 4
    .parameter "log"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    const-class v1, Lcom/google/common/base/Log2;

    monitor-enter v1

    .line 115
    :try_start_3
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    sget-object v2, Lcom/google/common/base/Log2;->systemErrLog:Lcom/google/common/logging/Logger;

    if-eq v0, v2, :cond_12

    .line 116
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    invoke-interface {v0}, Lcom/google/common/logging/Logger;->close()V

    .line 118
    :cond_12
    if-eqz p0, :cond_18

    .line 119
    sput-object p0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    .line 122
    :goto_16
    monitor-exit v1

    .line 123
    return-void

    .line 121
    :cond_18
    sget-object v0, Lcom/google/common/base/Log2;->systemErrLog:Lcom/google/common/logging/Logger;

    sput-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    goto :goto_16

    .line 122
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public static setErrorEmail(Ljava/lang/String;)V
    .registers 2
    .parameter "emailAddr"

    .prologue
    .line 172
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p0}, Lcom/google/common/logging/Logger;->setErrorEmail(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public static setThreadTag(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 206
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p0}, Lcom/google/common/logging/Logger;->setThreadTag(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public static setThreshold(I)V
    .registers 2
    .parameter "level"

    .prologue
    .line 144
    sget-object v0, Lcom/google/common/base/Log2;->defaultLog:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p0}, Lcom/google/common/logging/Logger;->setThreshold(I)V

    .line 145
    return-void
.end method

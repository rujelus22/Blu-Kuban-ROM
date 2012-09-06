.class Lcom/google/common/base/LogWriter;
.super Ljava/lang/Object;
.source "LogWriter.java"

# interfaces
.implements Lcom/google/common/logging/Logger;


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/LogWriter$LoggedError;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final DEFAULT_THRESHOLD:I = 0x0

.field private static final LEVEL_IDS:Ljava/lang/String; = "DIX"


# instance fields
.field dateFormatter:Ljava/text/SimpleDateFormat;

.field private javaLogger:Lcom/google/common/logging/Logger;

.field threadTagMap:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private threshold:I

.field writer:Ljava/io/Writer;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/google/common/base/LogWriter;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 64
    iput-object v0, p0, Lcom/google/common/base/LogWriter;->writer:Ljava/io/Writer;

    .line 66
    iput-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    .line 260
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/LogWriter;->threadTagMap:Ljava/lang/ThreadLocal;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .registers 4
    .parameter "writer"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/google/common/base/LogWriter;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 64
    iput-object v0, p0, Lcom/google/common/base/LogWriter;->writer:Ljava/io/Writer;

    .line 66
    iput-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    .line 260
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/common/base/LogWriter;->threadTagMap:Ljava/lang/ThreadLocal;

    .line 78
    iput-object p1, p0, Lcom/google/common/base/LogWriter;->writer:Ljava/io/Writer;

    .line 79
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMdd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/common/base/LogWriter;->dateFormatter:Ljava/text/SimpleDateFormat;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/base/LogWriter;->threshold:I

    .line 81
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    if-eqz v0, :cond_a

    .line 288
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    invoke-interface {v0}, Lcom/google/common/logging/Logger;->close()V

    .line 297
    :goto_9
    return-void

    .line 293
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 294
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_15

    goto :goto_9

    .line 295
    :catch_15
    move-exception v0

    goto :goto_9
.end method

.method public createAndSetJavaLogger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;Ljava/text/DateFormat;J)V
    .registers 16
    .parameter "fileName"
    .end parameter
    .parameter "linkName"
    .end parameter
    .parameter "extension"
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter "recordTsFormat"
    .end parameter
    .parameter "fileNameTsFormat"
    .end parameter
    .parameter "rotationSize"
    .end parameter

    .prologue
    .line 309
    new-instance v0, Lcom/google/common/base/Log2Logger;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/common/base/Log2Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;Ljava/text/DateFormat;J)V

    iput-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    .line 311
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/common/logging/Logger;->setThreshold(I)V

    .line 312
    return-void
.end method

.method public getThreadTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    invoke-interface {v0}, Lcom/google/common/logging/Logger;->getThreadTag()Ljava/lang/String;

    move-result-object v0

    .line 267
    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->threadTagMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a
.end method

.method public getThreshold()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/google/common/base/LogWriter;->threshold:I

    return v0
.end method

.method public logDebug(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    if-eqz v0, :cond_a

    .line 115
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p1}, Lcom/google/common/logging/Logger;->logDebug(Ljava/lang/String;)V

    .line 119
    :goto_9
    return-void

    .line 117
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/google/common/base/LogWriter;->write(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public logError(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    if-eqz v0, :cond_a

    .line 198
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p1}, Lcom/google/common/logging/Logger;->logError(Ljava/lang/String;)V

    .line 202
    :goto_9
    return-void

    .line 201
    :cond_a
    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/google/common/base/LogWriter$LoggedError;

    invoke-direct {v2}, Lcom/google/common/base/LogWriter$LoggedError;-><init>()V

    invoke-static {v2}, Lcom/google/common/base/Log2;->getExceptionTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/base/LogWriter;->write(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public logEvent(Ljava/lang/String;)V
    .registers 3
    .parameter "msg"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    if-eqz v0, :cond_a

    .line 127
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p1}, Lcom/google/common/logging/Logger;->logEvent(Ljava/lang/String;)V

    .line 131
    :goto_9
    return-void

    .line 129
    :cond_a
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/base/LogWriter;->write(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public logException(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 156
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/LogWriter;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public logException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .parameter "t"
    .parameter "msg"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    if-eqz v1, :cond_a

    .line 162
    iget-object v1, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    invoke-interface {v1, p1, p2}, Lcom/google/common/logging/Logger;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 170
    :goto_9
    return-void

    .line 164
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, errorMessage:Ljava/lang/String;
    if-eqz v0, :cond_27

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 168
    :cond_27
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/common/base/Log2;->getExceptionTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/base/LogWriter;->write(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public logSevereException(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 174
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/LogWriter;->logSevereException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public logSevereException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 7
    .parameter "t"
    .parameter "msg"

    .prologue
    .line 179
    iget-object v1, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    if-eqz v1, :cond_a

    .line 180
    iget-object v1, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    invoke-interface {v1, p1, p2}, Lcom/google/common/logging/Logger;->logSevereException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 188
    :goto_9
    return-void

    .line 182
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, errorMessage:Ljava/lang/String;
    if-eqz v0, :cond_27

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 186
    :cond_27
    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/google/common/base/Log2;->getExceptionTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/google/common/base/LogWriter;->write(ILjava/lang/String;)V

    goto :goto_9
.end method

.method public logTimedEvent(Ljava/lang/String;JJ)V
    .registers 12
    .parameter "msg"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    if-eqz v0, :cond_d

    .line 141
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/common/logging/Logger;->logTimedEvent(Ljava/lang/String;JJ)V

    .line 145
    :goto_c
    return-void

    .line 143
    :cond_d
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sub-long v2, p4, p2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/common/base/LogWriter;->write(ILjava/lang/String;)V

    goto :goto_c
.end method

.method public setErrorEmail(Ljava/lang/String;)V
    .registers 2
    .parameter "emailAddr"

    .prologue
    .line 152
    return-void
.end method

.method public setThreadTag(Ljava/lang/String;)V
    .registers 3
    .parameter "s"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    if-eqz v0, :cond_a

    .line 273
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p1}, Lcom/google/common/logging/Logger;->setThreadTag(Ljava/lang/String;)V

    .line 276
    :goto_9
    return-void

    .line 275
    :cond_a
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->threadTagMap:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_9
.end method

.method public setThreshold(I)V
    .registers 5
    .parameter "level"

    .prologue
    .line 90
    if-ltz p1, :cond_5

    const/4 v0, 0x3

    if-le p1, v0, :cond_1e

    .line 91
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RotatingLog#setThreshold(int) : invalid threshold value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1e
    iput p1, p0, Lcom/google/common/base/LogWriter;->threshold:I

    .line 95
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    if-eqz v0, :cond_29

    .line 96
    iget-object v0, p0, Lcom/google/common/base/LogWriter;->javaLogger:Lcom/google/common/logging/Logger;

    invoke-interface {v0, p1}, Lcom/google/common/logging/Logger;->setThreshold(I)V

    .line 97
    :cond_29
    return-void
.end method

.method protected declared-synchronized write(ILjava/lang/String;)V
    .registers 12
    .parameter "level"
    .parameter "msg"

    .prologue
    .line 221
    monitor-enter p0

    :try_start_1
    iget v6, p0, Lcom/google/common/base/LogWriter;->threshold:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b4

    if-ge p1, v6, :cond_7

    .line 258
    :goto_5
    monitor-exit p0

    return-void

    .line 223
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Lcom/google/common/base/LogWriter;->getThreadTag()Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, threadTag:Ljava/lang/String;
    if-nez v4, :cond_67

    .line 225
    const-string v4, ""

    .line 233
    :goto_f
    const-string v6, "DIX"

    invoke-virtual {v6, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 234
    .local v0, charPrefix:C
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v6, 0x3e8

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 236
    .local v3, sb:Ljava/lang/StringBuffer;
    const/16 v6, 0xa

    invoke-static {v6}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 237
    .local v5, token:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/common/base/LogWriter;->dateFormatter:Ljava/text/SimpleDateFormat;

    if-eqz v6, :cond_51

    .line 238
    iget-object v6, p0, Lcom/google/common/base/LogWriter;->dateFormatter:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    const/16 v6, 0x3a

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 241
    :cond_51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 242
    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const/16 v0, 0x20

    goto :goto_2e

    .line 227
    .end local v0           #charPrefix:C
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v5           #token:Ljava/lang/String;
    :cond_67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_79
    .catchall {:try_start_7 .. :try_end_79} :catchall_b4

    move-result-object v4

    goto :goto_f

    .line 250
    .restart local v0       #charPrefix:C
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #sb:Ljava/lang/StringBuffer;
    :cond_7b
    :try_start_7b
    iget-object v6, p0, Lcom/google/common/base/LogWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 251
    iget-object v6, p0, Lcom/google/common/base/LogWriter;->writer:Ljava/io/Writer;

    invoke-virtual {v6}, Ljava/io/Writer;->flush()V
    :try_end_89
    .catchall {:try_start_7b .. :try_end_89} :catchall_b4
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_89} :catch_8b

    goto/16 :goto_5

    .line 252
    :catch_8b
    move-exception v2

    .line 253
    .local v2, ioE:Ljava/io/IOException;
    :try_start_8c
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LogWriter#write(int, String) : error in writing to log!\n Exception thrown: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nlog entry: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b2
    .catchall {:try_start_8c .. :try_end_b2} :catchall_b4

    goto/16 :goto_5

    .line 221
    .end local v0           #charPrefix:C
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #ioE:Ljava/io/IOException;
    .end local v3           #sb:Ljava/lang/StringBuffer;
    .end local v4           #threadTag:Ljava/lang/String;
    :catchall_b4
    move-exception v6

    monitor-exit p0

    throw v6
.end method

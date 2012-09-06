.class public final Lcom/google/common/base/Log2Logger;
.super Ljava/lang/Object;
.source "Log2Logger.java"

# interfaces
.implements Lcom/google/common/logging/Logger;


# annotations
.annotation build Lcom/google/common/annotations/GoogleInternal;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/Log2Logger$1;,
        Lcom/google/common/base/Log2Logger$LoggedError;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final log:Ljava/util/logging/Logger;

.field private static selfInstalledHandler:Z

.field private static useRootHandler:Z


# instance fields
.field private threshold:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 305
    const-string v0, "com.google.common.base.Log2"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    .line 307
    sput-boolean v1, Lcom/google/common/base/Log2Logger;->selfInstalledHandler:Z

    .line 308
    sput-boolean v1, Lcom/google/common/base/Log2Logger;->useRootHandler:Z

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v2, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v1

    .line 67
    .local v1, handlers:[Ljava/util/logging/Handler;
    array-length v2, v1

    if-nez v2, :cond_24

    sget-boolean v2, Lcom/google/common/base/Log2Logger;->useRootHandler:Z

    if-nez v2, :cond_24

    .line 68
    new-instance v0, Ljava/util/logging/ConsoleHandler;

    invoke-direct {v0}, Ljava/util/logging/ConsoleHandler;-><init>()V

    .line 69
    .local v0, ch:Ljava/util/logging/ConsoleHandler;
    new-instance v2, Lcom/google/common/logging/Log2Formatter;

    invoke-direct {v2}, Lcom/google/common/logging/Log2Formatter;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/logging/ConsoleHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    .line 70
    invoke-direct {p0, v0}, Lcom/google/common/base/Log2Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 71
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/common/base/Log2Logger;->setThreshold(I)V

    .line 73
    .end local v0           #ch:Ljava/util/logging/ConsoleHandler;
    :cond_24
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;Ljava/text/DateFormat;J)V
    .registers 17
    .parameter "filePath"
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
    .parameter "rotateSize"
    .end parameter

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    sget-object v1, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v1}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v8

    .line 91
    .local v8, handlers:[Ljava/util/logging/Handler;
    array-length v1, v8

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/google/common/base/Log2Logger;->selfInstalledHandler:Z

    if-eqz v1, :cond_32

    :cond_10
    sget-boolean v1, Lcom/google/common/base/Log2Logger;->useRootHandler:Z

    if-nez v1, :cond_32

    .line 92
    sget-boolean v1, Lcom/google/common/base/Log2Logger;->selfInstalledHandler:Z

    if-eqz v1, :cond_20

    .line 93
    sget-object v1, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    .line 95
    :cond_20
    new-instance v0, Lcom/google/common/logging/Log2FileHandler;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-wide v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/common/logging/Log2FileHandler;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;Ljava/text/DateFormat;J)V

    .line 97
    .local v0, h:Ljava/util/logging/Handler;
    invoke-direct {p0, v0}, Lcom/google/common/base/Log2Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 98
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/common/base/Log2Logger;->setThreshold(I)V

    .line 100
    .end local v0           #h:Ljava/util/logging/Handler;
    :cond_32
    return-void
.end method

.method private addHandler(Ljava/util/logging/Handler;)V
    .registers 7
    .parameter "handler"

    .prologue
    .line 251
    sget-object v2, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v2, p1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, useParentHandlers:Z
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v4}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".useParentHandlers"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, val:Ljava/lang/String;
    if-nez v1, :cond_45

    const-string v1, ""

    .line 257
    :goto_2b
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 258
    :cond_3b
    const/4 v0, 0x1

    .line 261
    :cond_3c
    sget-object v2, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 262
    const/4 v2, 0x1

    sput-boolean v2, Lcom/google/common/base/Log2Logger;->selfInstalledHandler:Z

    .line 263
    return-void

    .line 256
    :cond_45
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_2b
.end method

.method private doCallerInference(Ljava/util/logging/LogRecord;)V
    .registers 8
    .parameter "record"

    .prologue
    .line 270
    const-class v5, Lcom/google/common/base/Log2;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, loggerClassName:Ljava/lang/String;
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 272
    .local v0, callStack:[Ljava/lang/StackTraceElement;
    const v3, 0x7fffffff

    .line 274
    .local v3, lastLoggerCallIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    array-length v5, v0

    if-ge v2, v5, :cond_3d

    .line 275
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, className:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 277
    move v3, v2

    .line 274
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 278
    :cond_26
    const v5, 0x7fffffff

    if-eq v3, v5, :cond_23

    .line 279
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/logging/LogRecord;->setSourceClassName(Ljava/lang/String;)V

    .line 280
    aget-object v5, v0, v2

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/logging/LogRecord;->setSourceMethodName(Ljava/lang/String;)V

    .line 284
    .end local v1           #className:Ljava/lang/String;
    :cond_3d
    return-void
.end method

.method private logAfterSettingCaller(Ljava/util/logging/Level;Ljava/lang/String;)V
    .registers 4
    .parameter "level"
    .parameter "msg"

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/base/Log2Logger;->logAfterSettingCaller(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    return-void
.end method

.method private logAfterSettingCaller(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .parameter "level"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 291
    new-instance v0, Ljava/util/logging/LogRecord;

    invoke-direct {v0, p1, p2}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 292
    .local v0, lr:Ljava/util/logging/LogRecord;
    if-eqz p3, :cond_a

    .line 293
    invoke-virtual {v0, p3}, Ljava/util/logging/LogRecord;->setThrown(Ljava/lang/Throwable;)V

    .line 296
    :cond_a
    invoke-direct {p0, v0}, Lcom/google/common/base/Log2Logger;->doCallerInference(Ljava/util/logging/LogRecord;)V

    .line 297
    sget-object v1, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 298
    return-void
.end method

.method public static useRootHandler()V
    .registers 7

    .prologue
    const/4 v6, 0x1

    .line 106
    sget-boolean v5, Lcom/google/common/base/Log2Logger;->useRootHandler:Z

    if-nez v5, :cond_21

    .line 107
    sget-object v5, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v5}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    .line 108
    .local v2, handlers:[Ljava/util/logging/Handler;
    move-object v0, v2

    .local v0, arr$:[Ljava/util/logging/Handler;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_e
    if-ge v3, v4, :cond_1a

    aget-object v1, v0, v3

    .line 109
    .local v1, handler:Ljava/util/logging/Handler;
    sget-object v5, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v5, v1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    .line 108
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 111
    .end local v1           #handler:Ljava/util/logging/Handler;
    :cond_1a
    sget-object v5, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    .line 112
    sput-boolean v6, Lcom/google/common/base/Log2Logger;->useRootHandler:Z

    .line 114
    :cond_21
    return-void
.end method


# virtual methods
.method public close()V
    .registers 7

    .prologue
    .line 244
    sget-object v5, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v5}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    .line 245
    .local v2, handlers:[Ljava/util/logging/Handler;
    move-object v0, v2

    .local v0, arr$:[Ljava/util/logging/Handler;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_9
    if-ge v3, v4, :cond_13

    aget-object v1, v0, v3

    .line 246
    .local v1, handler:Ljava/util/logging/Handler;
    invoke-virtual {v1}, Ljava/util/logging/Handler;->close()V

    .line 245
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 248
    .end local v1           #handler:Ljava/util/logging/Handler;
    :cond_13
    return-void
.end method

.method public getThreadTag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    invoke-static {}, Lcom/google/common/logging/LogContext;->getThreadTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThreshold()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/google/common/base/Log2Logger;->threshold:I

    return v0
.end method

.method public logDebug(Ljava/lang/String;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 161
    sget-object v0, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 162
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p1}, Lcom/google/common/base/Log2Logger;->logAfterSettingCaller(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 164
    :cond_f
    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .registers 6
    .parameter "msg"

    .prologue
    .line 226
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/google/common/base/Log2Logger$LoggedError;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/common/base/Log2Logger$LoggedError;-><init>(Lcom/google/common/base/Log2Logger$1;)V

    invoke-static {v2}, Lcom/google/common/base/Log2;->getExceptionTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/common/base/Log2Logger;->logAfterSettingCaller(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 227
    return-void
.end method

.method public logEvent(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 168
    sget-object v1, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 169
    new-instance v0, Ljava/util/logging/LogRecord;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-direct {v0, v1, p1}, Ljava/util/logging/LogRecord;-><init>(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 170
    .local v0, lr:Ljava/util/logging/LogRecord;
    invoke-direct {p0, v0}, Lcom/google/common/base/Log2Logger;->doCallerInference(Ljava/util/logging/LogRecord;)V

    .line 171
    sget-object v1, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/LogRecord;)V

    .line 173
    .end local v0           #lr:Ljava/util/logging/LogRecord;
    :cond_19
    return-void
.end method

.method public logException(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 193
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/Log2Logger;->logException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public logException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .parameter "t"
    .parameter "msg"

    .prologue
    .line 198
    sget-object v0, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 199
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p2, p1}, Lcom/google/common/base/Log2Logger;->logAfterSettingCaller(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :cond_f
    return-void
.end method

.method public logSevereException(Ljava/lang/Throwable;)V
    .registers 3
    .parameter "t"

    .prologue
    .line 205
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/google/common/base/Log2Logger;->logSevereException(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public logSevereException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .parameter "t"
    .parameter "msg"

    .prologue
    .line 210
    sget-object v0, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 211
    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-direct {p0, v0, p2, p1}, Lcom/google/common/base/Log2Logger;->logAfterSettingCaller(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :cond_f
    return-void
.end method

.method public logTimedEvent(Ljava/lang/String;JJ)V
    .registers 10
    .parameter "msg"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 180
    sget-object v0, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

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

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public setErrorEmail(Ljava/lang/String;)V
    .registers 2
    .parameter "emailAddr"

    .prologue
    .line 189
    return-void
.end method

.method public setThreadTag(Ljava/lang/String;)V
    .registers 2
    .parameter "s"

    .prologue
    .line 236
    invoke-static {p1}, Lcom/google/common/logging/LogContext;->setThreadTag(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public setThreshold(I)V
    .registers 6
    .parameter "level"

    .prologue
    .line 126
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    .line 127
    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 141
    .local v1, javaLevel:Ljava/util/logging/Level;
    :goto_5
    sget-object v2, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 142
    sget-boolean v2, Lcom/google/common/base/Log2Logger;->selfInstalledHandler:Z

    if-eqz v2, :cond_1a

    .line 143
    sget-object v2, Lcom/google/common/base/Log2Logger;->log:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v0

    .line 144
    .local v0, handlers:[Ljava/util/logging/Handler;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2, v1}, Ljava/util/logging/Handler;->setLevel(Ljava/util/logging/Level;)V

    .line 146
    .end local v0           #handlers:[Ljava/util/logging/Handler;
    :cond_1a
    iput p1, p0, Lcom/google/common/base/Log2Logger;->threshold:I

    .line 147
    return-void

    .line 128
    .end local v1           #javaLevel:Ljava/util/logging/Level;
    :cond_1d
    const/4 v2, 0x1

    if-ne p1, v2, :cond_23

    .line 129
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .restart local v1       #javaLevel:Ljava/util/logging/Level;
    goto :goto_5

    .line 130
    .end local v1           #javaLevel:Ljava/util/logging/Level;
    :cond_23
    if-nez p1, :cond_28

    .line 131
    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .restart local v1       #javaLevel:Ljava/util/logging/Level;
    goto :goto_5

    .line 133
    .end local v1           #javaLevel:Ljava/util/logging/Level;
    :cond_28
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Invalid level passed to Log2Logger.setThreshold "

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

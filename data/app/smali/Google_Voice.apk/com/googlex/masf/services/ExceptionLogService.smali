.class public Lcom/googlex/masf/services/ExceptionLogService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/masf/protocol/Request$Listener;


# static fields
.field private static final UPLOAD_ALL_THROWABLES:I = -0x1

.field private static maxThrowablePerDay:I

.field private static resetThrowableCounterTimestamp:J

.field private static throwableCounter:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/googlex/masf/services/ExceptionLogService;->maxThrowablePerDay:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/googlex/masf/services/ExceptionLogService;->log(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method private static log(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 8

    invoke-static {}, Lcom/googlex/masf/services/ExceptionLogService;->skipLog()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    new-instance v0, Lcom/googlex/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/googlex/masf/services/LogserviceMessageTypes;->LOG_EXCEPTION_PROTO:Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;-><init>(Lcom/googlex/common/io/protocol/ProtoBufType;)V

    const/4 v1, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/googlex/common/io/protocol/ProtoBuf;->addLong(IJ)V

    if-eqz p0, :cond_1d

    const/16 v1, 0x14

    invoke-virtual {v0, v1, p0}, Lcom/googlex/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    :cond_1d
    const/16 v1, 0x15

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/googlex/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_39

    const/16 v1, 0x16

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/googlex/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    :cond_39
    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v1

    if-eqz v1, :cond_4e

    invoke-static {}, Lcom/googlex/common/Config;->getInstance()Lcom/googlex/common/Config;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/googlex/common/Config;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4e

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Lcom/googlex/common/io/protocol/ProtoBuf;->addString(ILjava/lang/String;)V

    :cond_4e
    invoke-static {}, Lcom/googlex/masf/MobileServiceMux;->getSingleton()Lcom/googlex/masf/MobileServiceMux;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_59
    invoke-virtual {v0, v2}, Lcom/googlex/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_74

    new-instance v0, Lcom/googlex/masf/protocol/PlainRequest;

    const-string v3, "g:log:ex"

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Lcom/googlex/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    new-instance v2, Lcom/googlex/masf/services/ExceptionLogService;

    invoke-direct {v2}, Lcom/googlex/masf/services/ExceptionLogService;-><init>()V

    invoke-virtual {v0, v2}, Lcom/googlex/masf/protocol/Request;->setListener(Lcom/googlex/masf/protocol/Request$Listener;)V

    invoke-virtual {v1, v0, p2}, Lcom/googlex/masf/MobileServiceMux;->submitRequest(Lcom/googlex/masf/protocol/Request;Z)V

    goto :goto_6

    :catch_74
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static logImmediate(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/googlex/masf/services/ExceptionLogService;->log(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static declared-synchronized setMaxUploadPerDay(I)V
    .registers 3

    const-class v0, Lcom/googlex/masf/services/ExceptionLogService;

    monitor-enter v0

    :try_start_3
    sput p0, Lcom/googlex/masf/services/ExceptionLogService;->maxThrowablePerDay:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized skipLog()Z
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    const-class v2, Lcom/googlex/masf/services/ExceptionLogService;

    monitor-enter v2

    :try_start_5
    sget v3, Lcom/googlex/masf/services/ExceptionLogService;->maxThrowablePerDay:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_1c

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    :goto_a
    monitor-exit v2

    return v0

    :cond_c
    :try_start_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/googlex/masf/services/ExceptionLogService;->resetThrowableCounterTimestamp:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_1f

    sput-wide v3, Lcom/googlex/masf/services/ExceptionLogService;->resetThrowableCounterTimestamp:J

    const/4 v1, 0x1

    sput v1, Lcom/googlex/masf/services/ExceptionLogService;->throwableCounter:I
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1c

    goto :goto_a

    :catchall_1c
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1f
    :try_start_1f
    sget v3, Lcom/googlex/masf/services/ExceptionLogService;->throwableCounter:I

    sget v4, Lcom/googlex/masf/services/ExceptionLogService;->maxThrowablePerDay:I

    if-ge v3, v4, :cond_2c

    sget v1, Lcom/googlex/masf/services/ExceptionLogService;->throwableCounter:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/googlex/masf/services/ExceptionLogService;->throwableCounter:I
    :try_end_2b
    .catchall {:try_start_1f .. :try_end_2b} :catchall_1c

    goto :goto_a

    :cond_2c
    move v0, v1

    goto :goto_a
.end method


# virtual methods
.method public requestCompleted(Lcom/googlex/masf/protocol/Request;Lcom/googlex/masf/protocol/Response;)V
    .registers 3

    return-void
.end method

.method public requestFailed(Lcom/googlex/masf/protocol/Request;Ljava/lang/Exception;)V
    .registers 3

    return-void
.end method

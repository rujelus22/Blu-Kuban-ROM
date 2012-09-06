.class public Lcom/googlex/masf/services/UnstructuredLogService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/googlex/masf/protocol/Request$Listener;


# static fields
.field private static final DUMMY_LISTENER:Lcom/googlex/masf/protocol/Request$Listener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/googlex/masf/services/UnstructuredLogService;

    invoke-direct {v0}, Lcom/googlex/masf/services/UnstructuredLogService;-><init>()V

    sput-object v0, Lcom/googlex/masf/services/UnstructuredLogService;->DUMMY_LISTENER:Lcom/googlex/masf/protocol/Request$Listener;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static log(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/googlex/masf/services/UnstructuredLogService;->DUMMY_LISTENER:Lcom/googlex/masf/protocol/Request$Listener;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/googlex/masf/services/UnstructuredLogService;->log(JLjava/lang/String;Ljava/lang/String;Lcom/googlex/masf/protocol/Request$Listener;)V

    return-void
.end method

.method public static log(JLjava/lang/String;Ljava/lang/String;Lcom/googlex/masf/protocol/Request$Listener;)V
    .registers 6

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p4}, Lcom/googlex/masf/services/UnstructuredLogService;->log(JLjava/lang/String;[BLcom/googlex/masf/protocol/Request$Listener;)V

    return-void
.end method

.method public static log(JLjava/lang/String;[B)V
    .registers 5

    sget-object v0, Lcom/googlex/masf/services/UnstructuredLogService;->DUMMY_LISTENER:Lcom/googlex/masf/protocol/Request$Listener;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/googlex/masf/services/UnstructuredLogService;->log(JLjava/lang/String;[BLcom/googlex/masf/protocol/Request$Listener;)V

    return-void
.end method

.method public static log(JLjava/lang/String;[BLcom/googlex/masf/protocol/Request$Listener;)V
    .registers 11

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {}, Lcom/googlex/masf/MobileServiceMux;->getSingleton()Lcom/googlex/masf/MobileServiceMux;

    move-result-object v1

    if-eqz v1, :cond_45

    new-instance v2, Lcom/googlex/common/io/protocol/ProtoBuf;

    sget-object v0, Lcom/googlex/masf/services/LogserviceMessageTypes;->LOG_DATA_PROTO:Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v4}, Lcom/googlex/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-direct {v2, v0}, Lcom/googlex/common/io/protocol/ProtoBuf;-><init>(Lcom/googlex/common/io/protocol/ProtoBufType;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0, p0, p1}, Lcom/googlex/common/io/protocol/ProtoBuf;->setLong(IJ)V

    const/4 v0, 0x4

    invoke-virtual {v2, v0, p2}, Lcom/googlex/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {v2, v0, p3}, Lcom/googlex/common/io/protocol/ProtoBuf;->setBytes(I[B)V

    new-instance v0, Lcom/googlex/common/io/protocol/ProtoBuf;

    sget-object v3, Lcom/googlex/masf/services/LogserviceMessageTypes;->LOG_DATA_PROTO:Lcom/googlex/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v3}, Lcom/googlex/common/io/protocol/ProtoBuf;-><init>(Lcom/googlex/common/io/protocol/ProtoBufType;)V

    invoke-virtual {v0, v4, v5, v2}, Lcom/googlex/common/io/protocol/ProtoBuf;->insertProtoBuf(IILcom/googlex/common/io/protocol/ProtoBuf;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_30
    invoke-virtual {v0, v2}, Lcom/googlex/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_46

    new-instance v0, Lcom/googlex/masf/protocol/PlainRequest;

    const-string v3, "g:log:u"

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v3, v4, v2}, Lcom/googlex/masf/protocol/PlainRequest;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v0, p4}, Lcom/googlex/masf/protocol/Request;->setListener(Lcom/googlex/masf/protocol/Request$Listener;)V

    invoke-virtual {v1, v0, v5}, Lcom/googlex/masf/MobileServiceMux;->submitRequest(Lcom/googlex/masf/protocol/Request;Z)V

    :cond_45
    return-void

    :catch_46
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
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

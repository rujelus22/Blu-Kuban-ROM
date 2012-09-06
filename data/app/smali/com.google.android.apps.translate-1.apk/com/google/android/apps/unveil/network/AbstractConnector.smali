.class public abstract Lcom/google/android/apps/unveil/network/AbstractConnector;
.super Ljava/lang/Object;
.source "AbstractConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,
        Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;
    }
.end annotation


# static fields
.field private static final FETCH_URL:Ljava/lang/String; = "/goggles/a/fetch_search_history_entry_proto"

.field private static final GOGGLES_RESPONSE_URL:Ljava/lang/String; = "/goggles/a/singleshot_search_proto"

.field private static final NATIVE_CLICK_URL:Ljava/lang/String; = "/goggles/a/native_client_log_proto"

.field public static final NO_STATUS_CODE:I = -0x1

.field private static final REQUEST_URL:Ljava/lang/String; = "/goggles/container_proto"

.field public static final TEXT_MODE_BASE_PATH:Ljava/lang/String; = "/goggles/a/single_shot_text_mode"

.field private static final TRACE_COOKIE_URL:Ljava/lang/String; = "/goggles/a/tracing_cookie_proto"

.field private static final TRACE_URL:Ljava/lang/String; = "/goggles/a/trace_proto"

.field private static final logger:Lcom/google/android/apps/unveil/env/UnveilLogger;


# instance fields
.field private final connectivityProvider:Lcom/google/android/apps/unveil/env/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final frontendUrlProvider:Lcom/google/android/apps/unveil/env/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private final requestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

.field private final threadPool:Ljava/util/concurrent/ExecutorService;

.field private final uiThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Lcom/google/android/apps/unveil/env/UnveilLogger;

    invoke-direct {v0}, Lcom/google/android/apps/unveil/env/UnveilLogger;-><init>()V

    sput-object v0, Lcom/google/android/apps/unveil/network/AbstractConnector;->logger:Lcom/google/android/apps/unveil/env/UnveilLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/env/Provider;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;)V
    .registers 5
    .parameter
    .parameter
    .parameter "requestFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/net/URL;",
            ">;",
            "Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, connectivityProvider:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Ljava/lang/Boolean;>;"
    .local p2, frontendUrlProvider:Lcom/google/android/apps/unveil/env/Provider;,"Lcom/google/android/apps/unveil/env/Provider<Ljava/net/URL;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p2, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->frontendUrlProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 104
    iput-object p1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->connectivityProvider:Lcom/google/android/apps/unveil/env/Provider;

    .line 105
    iput-object p3, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->requestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->uiThreadHandler:Landroid/os/Handler;

    .line 107
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/apps/unveil/network/AbstractConnector;Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/apps/unveil/network/AbstractConnector;->doRequestAndHandleResponse(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/Class;)Lcom/google/android/apps/unveil/network/utils/Stats$Tags;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/google/android/apps/unveil/network/AbstractConnector;->getTagForClass(Ljava/lang/Class;)Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/apps/unveil/network/AbstractConnector;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/unveil/network/AbstractConnector;->prepareRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/apps/unveil/network/AbstractConnector;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/network/AbstractConnector;->handleConnectorException(Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;)V

    return-void
.end method

.method public static connectionManagerConnectivityProvider(Landroid/net/ConnectivityManager;)Lcom/google/android/apps/unveil/env/Provider;
    .registers 2
    .parameter "connectivityManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/ConnectivityManager;",
            ")",
            "Lcom/google/android/apps/unveil/env/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lcom/google/android/apps/unveil/network/AbstractConnector$1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/unveil/network/AbstractConnector$1;-><init>(Landroid/net/ConnectivityManager;)V

    return-object v0
.end method

.method private createFetchRequestTask(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;
    .registers 4
    .parameter "request"
    .parameter "responseHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;",
            ")",
            "Lcom/google/android/apps/unveil/env/HoneycombAsyncTask",
            "<",
            "Lcom/google/android/apps/unveil/network/fetch/FetchResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    new-instance v0, Lcom/google/android/apps/unveil/network/AbstractConnector$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/apps/unveil/network/AbstractConnector$4;-><init>(Lcom/google/android/apps/unveil/network/AbstractConnector;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V

    return-object v0
.end method

.method private createProtobufRequestTask(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;
    .registers 13
    .parameter "request"
    .parameter
    .parameter "requestUrl"
    .parameter "tracingCookie"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ProtoResponseType:",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            "Ljava/lang/Class",
            "<TProtoResponseType;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TProtoResponseType;>;)",
            "Lcom/google/android/apps/unveil/env/HoneycombAsyncTask",
            "<",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<TProtoResponseType;>;>;"
        }
    .end annotation

    .prologue
    .line 254
    .local p2, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TProtoResponseType;>;"
    .local p5, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<TProtoResponseType;>;"
    new-instance v0, Lcom/google/android/apps/unveil/network/AbstractConnector$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/unveil/network/AbstractConnector$3;-><init>(Lcom/google/android/apps/unveil/network/AbstractConnector;Ljava/lang/Class;Ljava/lang/String;Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V

    return-object v0
.end method

.method private doRequestAndHandleResponse(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V
    .registers 10
    .parameter "request"
    .parameter
    .parameter "tracingCookie"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            "Ljava/lang/Class",
            "<TResponseType;>;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p2, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TResponseType;>;"
    .local p4, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<TResponseType;>;"
    :try_start_0
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/network/AbstractConnector;->getUrlForResponseClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-direct {p0, v2, v3, p3}, Lcom/google/android/apps/unveil/network/AbstractConnector;->prepareRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/google/android/apps/unveil/network/AbstractConnector;->blockingRequest(Ljava/lang/Class;Lorg/apache/http/client/methods/HttpPost;)Lcom/google/android/apps/unveil/network/UnveilResponse;

    move-result-object v1

    .line 215
    .local v1, response:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<TResponseType;>;"
    invoke-virtual {p4, v1}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onResponse(Lcom/google/android/apps/unveil/network/UnveilResponse;)V
    :try_end_18
    .catch Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException; {:try_start_0 .. :try_end_18} :catch_19

    .line 219
    .end local v1           #response:Lcom/google/android/apps/unveil/network/UnveilResponse;,"Lcom/google/android/apps/unveil/network/UnveilResponse<TResponseType;>;"
    :goto_18
    return-void

    .line 216
    :catch_19
    move-exception v0

    .line 217
    .local v0, e:Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;
    invoke-direct {p0, p4, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector;->handleConnectorException(Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;)V

    goto :goto_18
.end method

.method private static getBasePath(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMessageLite;>;"
    const-class v0, Lcom/google/goggles/ContainerProtos$ContainerResponse;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 142
    const-string v0, "/goggles/container_proto"

    .line 162
    :goto_a
    return-object v0

    .line 145
    :cond_b
    const-class v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 146
    const-string v0, "/goggles/a/tracing_cookie_proto"

    goto :goto_a

    .line 149
    :cond_16
    const-class v0, Lcom/google/goggles/GogglesProtos$GogglesResponse;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 150
    const-string v0, "/goggles/a/singleshot_search_proto"

    goto :goto_a

    .line 153
    :cond_21
    const-class v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 154
    const-string v0, "/goggles/a/fetch_search_history_entry_proto"

    goto :goto_a

    .line 157
    :cond_2c
    const-class v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 158
    const-string v0, "/goggles/a/native_client_log_proto"

    goto :goto_a

    .line 161
    :cond_37
    const-class v0, Lcom/google/goggles/TracingProtos$TraceResponse;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 162
    const-string v0, "/goggles/a/trace_proto"

    goto :goto_a

    .line 165
    :cond_42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not yet supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getTagForClass(Ljava/lang/Class;)Lcom/google/android/apps/unveil/network/utils/Stats$Tags;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">;)",
            "Lcom/google/android/apps/unveil/network/utils/Stats$Tags;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMessageLite;>;"
    const-class v0, Lcom/google/goggles/ContainerProtos$ContainerResponse;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 171
    sget-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->CONTAINER:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    .line 191
    :goto_a
    return-object v0

    .line 174
    :cond_b
    const-class v0, Lcom/google/goggles/TracingCookieProtos$TracingCookieResponse;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 175
    sget-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->TRACING_COOKIE:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    goto :goto_a

    .line 178
    :cond_16
    const-class v0, Lcom/google/goggles/GogglesProtos$GogglesResponse;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 179
    sget-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->SINGLE_SHOT:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    goto :goto_a

    .line 182
    :cond_21
    const-class v0, Lcom/google/goggles/GogglesReplayProtos$GogglesReplayResponse;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 183
    sget-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->REPLAY:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    goto :goto_a

    .line 186
    :cond_2c
    const-class v0, Lcom/google/goggles/NativeClientLoggingProtos$NativeClientLogEventResponse;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 187
    sget-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->CLICK_TRACK:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    goto :goto_a

    .line 190
    :cond_37
    const-class v0, Lcom/google/goggles/TracingProtos$TraceResponse;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 191
    sget-object v0, Lcom/google/android/apps/unveil/network/utils/Stats$Tags;->TRACE:Lcom/google/android/apps/unveil/network/utils/Stats$Tags;

    goto :goto_a

    .line 194
    :cond_42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not yet supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getUrlForBasePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "basePath"

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->frontendUrlProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUrlForResponseClass(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/google/protobuf/GeneratedMessageLite;>;"
    invoke-static {p1}, Lcom/google/android/apps/unveil/network/AbstractConnector;->getBasePath(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector;->getUrlForBasePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleConnectorException(Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;)V
    .registers 5
    .parameter
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">(",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<TResponseType;>;"
    invoke-virtual {p2}, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p2}, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/http/client/HttpResponseException;

    if-eqz v1, :cond_1f

    .line 240
    invoke-virtual {p2}, Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/apache/http/client/HttpResponseException;

    invoke-virtual {v1}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    .line 241
    .local v0, statusCode:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    .line 242
    invoke-virtual {p1, v0}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onServerErrorCode(I)V

    .line 247
    .end local v0           #statusCode:I
    :goto_1e
    return-void

    .line 246
    :cond_1f
    invoke-virtual {p1}, Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;->onNetworkError()V

    goto :goto_1e
.end method

.method private prepareRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .registers 7
    .parameter "url"
    .parameter "content"
    .parameter "tracingCookie"

    .prologue
    .line 199
    iget-object v1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->requestFactory:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;

    sget-object v2, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;->PROTOBUF:Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;

    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory;->newPostRequest(Ljava/lang/String;Lorg/apache/http/HttpEntity;Lcom/google/android/apps/unveil/network/DefaultHttpRequestFactory$ContentType;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 202
    .local v0, post:Lorg/apache/http/client/methods/HttpPost;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 203
    const-string v1, "Cookie"

    invoke-virtual {v0, v1, p3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_13
    return-object v0
.end method


# virtual methods
.method public abstract blockingRequest(Ljava/lang/Class;Lorg/apache/http/client/methods/HttpPost;)Lcom/google/android/apps/unveil/network/UnveilResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">(",
            "Ljava/lang/Class",
            "<TResponseType;>;",
            "Lorg/apache/http/client/methods/HttpPost;",
            ")",
            "Lcom/google/android/apps/unveil/network/UnveilResponse",
            "<TResponseType;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;
        }
    .end annotation
.end method

.method public abstract blockingRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lcom/google/android/apps/unveil/network/fetch/FetchResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/apps/unveil/network/AbstractConnector$ConnectorException;
        }
    .end annotation
.end method

.method public isNetworkAvailable()Z
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->connectivityProvider:Lcom/google/android/apps/unveil/env/Provider;

    invoke-interface {v0}, Lcom/google/android/apps/unveil/env/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final requestRunnable(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Ljava/lang/Runnable;
    .registers 11
    .parameter "request"
    .parameter
    .parameter "tracingCookie"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            "Ljava/lang/Class",
            "<TResponseType;>;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TResponseType;>;"
    .local p4, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<TResponseType;>;"
    new-instance v0, Lcom/google/android/apps/unveil/network/AbstractConnector$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/network/AbstractConnector$2;-><init>(Lcom/google/android/apps/unveil/network/AbstractConnector;Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)V

    return-object v0
.end method

.method public sendRequest(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Ljava/lang/String;)V
    .registers 11
    .parameter "request"
    .parameter
    .parameter
    .parameter "tracingCookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            "Ljava/lang/Class",
            "<TResponseType;>;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TResponseType;>;"
    .local p3, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<TResponseType;>;"
    invoke-direct {p0, p2}, Lcom/google/android/apps/unveil/network/AbstractConnector;->getUrlForResponseClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/network/AbstractConnector;->createProtobufRequestTask(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->threadPool:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->uiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;->execute(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 286
    return-void
.end method

.method public sendRequest(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;Ljava/lang/String;)V
    .registers 12
    .parameter "request"
    .parameter
    .parameter "basePath"
    .parameter
    .parameter "tracingCookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseType:",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            ">(",
            "Lcom/google/protobuf/GeneratedMessageLite;",
            "Ljava/lang/Class",
            "<TResponseType;>;",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler",
            "<TResponseType;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 300
    .local p2, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TResponseType;>;"
    .local p4, responseHandler:Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;,"Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler<TResponseType;>;"
    invoke-direct {p0, p3}, Lcom/google/android/apps/unveil/network/AbstractConnector;->getUrlForBasePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/unveil/network/AbstractConnector;->createProtobufRequestTask(Lcom/google/protobuf/GeneratedMessageLite;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/apps/unveil/network/AbstractConnector$ResponseHandler;)Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->threadPool:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->uiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;->execute(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 303
    return-void
.end method

.method public sendRequest(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)V
    .registers 6
    .parameter "request"
    .parameter "responseHandler"

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/unveil/network/AbstractConnector;->createFetchRequestTask(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/apps/unveil/network/fetch/FetchResponse$Handler;)Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->threadPool:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/google/android/apps/unveil/network/AbstractConnector;->uiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/unveil/env/HoneycombAsyncTask;->execute(Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    .line 308
    return-void
.end method

.class public Lcom/google/android/finsky/api/DfeRequest;
.super Lcom/android/volley/Request;
.source "DfeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/micro/MessageMicro;",
        ">",
        "Lcom/android/volley/Request",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PROTO_DEBUG:Z


# instance fields
.field private mAllowMultipleResponses:Z

.field private final mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

.field private mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mResponseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mResponseDelivered:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    sget-boolean v0, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    sput-boolean v0, Lcom/google/android/finsky/api/DfeRequest;->DEBUG:Z

    .line 50
    const-string v0, "DfeProto"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/finsky/api/DfeRequest;->PROTO_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/api/DfeApiContext;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 8
    .parameter "url"
    .parameter "apiContext"
    .parameter
    .parameter
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/finsky/api/DfeApiContext;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    .local p3, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p4, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<TT;>;"
    const/4 v1, 0x0

    .line 77
    sget-object v0, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p5}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 62
    iput-boolean v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mAllowMultipleResponses:Z

    .line 78
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 79
    const-string v0, "Empty DFE URL"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->wtf(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_1d
    new-instance v0, Lcom/google/android/finsky/api/DfeRetryPolicy;

    invoke-direct {v0, p2}, Lcom/google/android/finsky/api/DfeRetryPolicy;-><init>(Lcom/google/android/finsky/api/DfeApiContext;)V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/DfeRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 82
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    .line 83
    iput-object p4, p0, Lcom/google/android/finsky/api/DfeRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 84
    iput-object p3, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseClass:Ljava/lang/Class;

    .line 85
    return-void
.end method

.method private handleServerCommands(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)Lcom/android/volley/Response;
    .registers 6
    .parameter "wrapper"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    const/4 v1, 0x0

    .line 268
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands()Z

    move-result v2

    if-nez v2, :cond_8

    .line 287
    :cond_7
    :goto_7
    return-object v1

    .line 272
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getCommands()Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;

    move-result-object v0

    .line 275
    .local v0, commands:Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasLogErrorStacktrace()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 276
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getLogErrorStacktrace()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getClearCache()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 281
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/volley/Cache;->clear()V

    .line 284
    :cond_2b
    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->hasDisplayErrorMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 285
    new-instance v1, Lcom/google/android/finsky/api/DfeServerError;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Response$ServerCommands;->getDisplayErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/finsky/api/DfeServerError;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    goto :goto_7
.end method

.method private logProtoResponse(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)V
    .registers 10
    .parameter

    .prologue
    .line 150
    sget-object v0, Lcom/google/android/finsky/config/G;->protoLogUrlRegexp:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 152
    const-class v1, Lcom/google/android/volley/MicroProtoPrinter;

    monitor-enter v1

    .line 153
    :try_start_15
    const-string v0, "DfeProto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v0, "ResponseWrapper"

    const-class v2, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    invoke-static {v0, v2, p1}, Lcom/google/android/volley/MicroProtoPrinter;->prettyPrint(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;)Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_41
    if-ge v0, v3, :cond_60

    aget-object v4, v2, v0

    .line 158
    const-string v5, "DfeProto"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "| "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 160
    :cond_60
    monitor-exit v1

    .line 165
    :goto_61
    return-void

    .line 160
    :catchall_62
    move-exception v0

    monitor-exit v1
    :try_end_64
    .catchall {:try_start_15 .. :try_end_64} :catchall_62

    throw v0

    .line 162
    :cond_65
    const-string v1, "DfeProto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Url does not match regexp: url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / regexp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61
.end method

.method private makeCacheKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter "url"

    .prologue
    .line 323
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/DfeApiContext;->getAccountName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;
    .registers 13
    .parameter "response"

    .prologue
    const-wide/16 v10, 0x0

    .line 219
    invoke-static {p0}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    .line 220
    .local v1, entry:Lcom/android/volley/Cache$Entry;
    if-nez v1, :cond_a

    .line 221
    const/4 v1, 0x0

    .line 247
    .end local v1           #entry:Lcom/android/volley/Cache$Entry;
    :goto_9
    return-object v1

    .line 224
    .restart local v1       #entry:Lcom/android/volley/Cache$Entry;
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 229
    .local v3, now:J
    :try_start_e
    iget-object v6, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v7, "X-DFE-Soft-TTL"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 230
    .local v5, softTtlHeader:Ljava/lang/String;
    if-eqz v5, :cond_21

    .line 231
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v3

    iput-wide v6, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 234
    :cond_21
    iget-object v6, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    const-string v7, "X-DFE-Hard-TTL"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    .local v2, hardTtlHeader:Ljava/lang/String;
    if-eqz v2, :cond_34

    .line 236
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v6, v3

    iput-wide v6, v1, Lcom/android/volley/Cache$Entry;->ttl:J
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_34} :catch_3f

    .line 245
    .end local v2           #hardTtlHeader:Ljava/lang/String;
    .end local v5           #softTtlHeader:Ljava/lang/String;
    :cond_34
    :goto_34
    iget-wide v6, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    iget-wide v8, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    goto :goto_9

    .line 238
    :catch_3f
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v6, "Invalid TTL: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/volley/NetworkResponse;->headers:Ljava/util/Map;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    iput-wide v10, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 241
    iput-wide v10, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    goto :goto_34
.end method

.method private static parseWrapper(Lcom/android/volley/NetworkResponse;Z)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .registers 7
    .parameter "response"
    .parameter "manuallyUnzip"

    .prologue
    const/4 v4, 0x0

    .line 198
    if-eqz p1, :cond_18

    .line 199
    :try_start_3
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 200
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v2

    .line 213
    .end local v1           #is:Ljava/io/InputStream;
    :goto_17
    return-object v2

    .line 202
    :cond_18
    iget-object v2, p0, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-static {v2}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->parseFrom([B)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    :try_end_1d
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_3 .. :try_end_1d} :catch_1f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1d} :catch_3f

    move-result-object v2

    goto :goto_17

    .line 204
    :catch_1f
    move-exception v0

    .line 205
    .local v0, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    if-nez p1, :cond_36

    sget-object v2, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 206
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/google/android/finsky/api/DfeRequest;->parseWrapper(Lcom/android/volley/NetworkResponse;Z)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v2

    goto :goto_17

    .line 208
    :cond_36
    const-string v2, "Cannot parse response as ResponseWrapper proto."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    .end local v0           #e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    :goto_3d
    const/4 v2, 0x0

    goto :goto_17

    .line 210
    :catch_3f
    move-exception v0

    .line 211
    .local v0, e:Ljava/io/IOException;
    const-string v2, "IOException while manually unzipping request."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d
.end method

.method private stripForCache(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;Lcom/android/volley/Cache$Entry;)V
    .registers 12
    .parameter "wrapper"
    .parameter "rootEntry"

    .prologue
    .line 170
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPreFetchCount()I

    move-result v7

    const/4 v8, 0x1

    if-ge v7, v8, :cond_e

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->hasCommands()Z

    move-result v7

    if-nez v7, :cond_e

    .line 194
    :goto_d
    return-void

    .line 175
    :cond_e
    iget-object v7, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/DfeApiContext;->getCache()Lcom/android/volley/Cache;

    move-result-object v0

    .line 176
    .local v0, cache:Lcom/android/volley/Cache;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 177
    .local v4, now:J
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPreFetchList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_69

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;

    .line 178
    .local v6, prefetch:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    new-instance v1, Lcom/android/volley/Cache$Entry;

    invoke-direct {v1}, Lcom/android/volley/Cache$Entry;-><init>()V

    .line 179
    .local v1, entry:Lcom/android/volley/Cache$Entry;
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getResponse()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v7

    iput-object v7, v1, Lcom/android/volley/Cache$Entry;->data:[B

    .line 180
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getEtag()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/volley/Cache$Entry;->etag:Ljava/lang/String;

    .line 181
    iget-wide v7, p2, Lcom/android/volley/Cache$Entry;->serverDate:J

    iput-wide v7, v1, Lcom/android/volley/Cache$Entry;->serverDate:J

    .line 182
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getTtl()J

    move-result-wide v7

    add-long/2addr v7, v4

    iput-wide v7, v1, Lcom/android/volley/Cache$Entry;->ttl:J

    .line 183
    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getSoftTtl()J

    move-result-wide v7

    add-long/2addr v7, v4

    iput-wide v7, v1, Lcom/android/volley/Cache$Entry;->softTtl:J

    .line 184
    sget-object v7, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Response$PreFetch;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, fullCacheUrl:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/google/android/finsky/api/DfeRequest;->makeCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v1}, Lcom/android/volley/Cache;->put(Ljava/lang/String;Lcom/android/volley/Cache$Entry;)V

    goto :goto_20

    .line 190
    .end local v1           #entry:Lcom/android/volley/Cache$Entry;
    .end local v2           #fullCacheUrl:Ljava/lang/String;
    .end local v6           #prefetch:Lcom/google/android/finsky/remoting/protos/Response$PreFetch;
    :cond_69
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->clearPreFetch()Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    .line 192
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->clearCommands()Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    .line 193
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->toByteArray()[B

    move-result-object v7

    iput-object v7, p2, Lcom/android/volley/Cache$Entry;->data:[B

    goto :goto_d
.end method


# virtual methods
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .registers 5
    .parameter "error"

    .prologue
    .line 311
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_9

    .line 312
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->invalidateAuthToken()V

    .line 314
    :cond_9
    iget-boolean v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseDelivered:Z

    if-nez v0, :cond_11

    .line 315
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 320
    :goto_10
    return-void

    .line 317
    :cond_11
    const-string v0, "Not delivering error response for request=[%s], error=[%s] because response already delivered."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10
.end method

.method public deliverResponse(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 293
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;->getPayload()Lcom/google/android/finsky/remoting/protos/Response$Payload;

    move-result-object v0

    const-class v1, Lcom/google/android/finsky/remoting/protos/Response$Payload;

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseClass:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/volley/MicroProtoHelper;->getParsedResponseFromWrapper(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_2a

    .line 296
    iget-boolean v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mAllowMultipleResponses:Z

    if-nez v1, :cond_18

    iget-boolean v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseDelivered:Z

    if-nez v1, :cond_20

    .line 297
    :cond_18
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v1, v0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 298
    iput-boolean v3, p0, Lcom/google/android/finsky/api/DfeRequest;->mResponseDelivered:Z

    .line 306
    :goto_1f
    return-void

    .line 300
    :cond_20
    const-string v0, "Not delivering second response for request=[%s]"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1f

    .line 303
    :cond_2a
    const-string v0, "Null parsed response for request=[%s]"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    new-instance v0, Lcom/android/volley/VolleyError;

    invoke-direct {v0}, Lcom/android/volley/VolleyError;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/api/DfeRequest;->deliverError(Lcom/android/volley/VolleyError;)V

    goto :goto_1f
.end method

.method public bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/api/DfeRequest;->deliverResponse(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)V

    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    invoke-super {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/finsky/api/DfeRequest;->makeCacheKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 122
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeRequest;->mApiContext:Lcom/google/android/finsky/api/DfeApiContext;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/DfeApiContext;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 7

    .prologue
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    const/16 v2, 0x3f

    .line 106
    invoke-super {p0}, Lcom/android/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, url:Ljava/lang/String;
    sget-object v3, Lcom/google/android/finsky/config/G;->ipCountryOverride:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, overrideCountry:Ljava/lang/String;
    if-eqz v0, :cond_41

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_22

    const/16 v2, 0x26

    :cond_22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ipCountryOverride="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_41
    return-object v1
.end method

.method protected parseNetworkError(Lcom/android/volley/VolleyError;)Lcom/android/volley/VolleyError;
    .registers 6
    .parameter "volleyError"

    .prologue
    .line 252
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    instance-of v2, p1, Lcom/android/volley/ServerError;

    if-eqz v2, :cond_17

    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    if-eqz v2, :cond_17

    .line 253
    iget-object v2, p1, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/android/finsky/api/DfeRequest;->parseWrapper(Lcom/android/volley/NetworkResponse;Z)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v1

    .line 254
    .local v1, wrapper:Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    if-eqz v1, :cond_17

    .line 255
    invoke-direct {p0, v1}, Lcom/google/android/finsky/api/DfeRequest;->handleServerCommands(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)Lcom/android/volley/Response;

    move-result-object v0

    .line 256
    .local v0, response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    iget-object p1, v0, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;

    .line 259
    .end local v0           #response:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    .end local v1           #wrapper:Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    .end local p1
    :cond_17
    return-object p1
.end method

.method public parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 11
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 127
    sget-boolean v4, Lcom/google/android/finsky/api/DfeRequest;->DEBUG:Z

    if-eqz v4, :cond_16

    const-string v4, "Response size: %d"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_16
    invoke-static {p1, v7}, Lcom/google/android/finsky/api/DfeRequest;->parseWrapper(Lcom/android/volley/NetworkResponse;Z)Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;

    move-result-object v3

    .line 129
    .local v3, wrapper:Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;
    if-nez v3, :cond_26

    .line 130
    new-instance v4, Lcom/android/volley/ParseError;

    invoke-direct {v4, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v1

    .line 146
    :cond_25
    :goto_25
    return-object v1

    .line 131
    :cond_26
    sget-boolean v4, Lcom/google/android/finsky/api/DfeRequest;->PROTO_DEBUG:Z

    if-eqz v4, :cond_2d

    .line 132
    invoke-direct {p0, v3}, Lcom/google/android/finsky/api/DfeRequest;->logProtoResponse(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)V

    .line 134
    :cond_2d
    invoke-direct {p0, v3}, Lcom/google/android/finsky/api/DfeRequest;->handleServerCommands(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;)Lcom/android/volley/Response;

    move-result-object v1

    .line 135
    .local v1, error:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    if-nez v1, :cond_25

    .line 139
    invoke-static {p1}, Lcom/google/android/finsky/api/DfeRequest;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 140
    .local v0, cacheEntry:Lcom/android/volley/Cache$Entry;
    if-eqz v0, :cond_3c

    .line 141
    invoke-direct {p0, v3, v0}, Lcom/google/android/finsky/api/DfeRequest;->stripForCache(Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;Lcom/android/volley/Cache$Entry;)V

    .line 144
    :cond_3c
    invoke-static {v3, v0}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v2

    .line 145
    .local v2, wrappedResponse:Lcom/android/volley/Response;,"Lcom/android/volley/Response<Lcom/google/android/finsky/remoting/protos/Response$ResponseWrapper;>;"
    const-string v4, "DFE response %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->logTiming(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    .line 146
    goto :goto_25
.end method

.method public setAllowMultipleResponses(Z)V
    .registers 2
    .parameter "allow"

    .prologue
    .line 98
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    iput-boolean p1, p0, Lcom/google/android/finsky/api/DfeRequest;->mAllowMultipleResponses:Z

    .line 99
    return-void
.end method

.method public setListener(Lcom/android/volley/Response$Listener;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/Response$Listener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, this:Lcom/google/android/finsky/api/DfeRequest;,"Lcom/google/android/finsky/api/DfeRequest<TT;>;"
    .local p1, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<TT;>;"
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 92
    return-void
.end method

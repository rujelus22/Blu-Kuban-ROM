.class public Lcom/google/android/vending/remoting/api/VendingRequest;
.super Lcom/android/volley/Request;
.source "VendingRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/micro/MessageMicro;",
        "U:",
        "Lcom/google/protobuf/micro/MessageMicro;",
        ">",
        "Lcom/android/volley/Request",
        "<",
        "Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

.field private mAvoidBulkCancel:Z

.field private mExtraHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<TU;>;"
        }
    .end annotation
.end field

.field private final mRequest:Lcom/google/protobuf/micro/MessageMicro;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mRequestClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mResponseClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TU;>;"
        }
    .end annotation
.end field

.field private final mUseSecureAuthToken:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .parameter "url"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "apiContext"
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljava/lang/Class",
            "<TU;>;",
            "Lcom/android/volley/Response$Listener",
            "<TU;>;",
            "Lcom/google/android/vending/remoting/api/VendingApiContext;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    .local p2, requestClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, request:Lcom/google/protobuf/micro/MessageMicro;,"TT;"
    .local p4, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TU;>;"
    .local p5, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<TU;>;"
    invoke-direct {p0, p1, p7}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mAvoidBulkCancel:Z

    .line 73
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mUseSecureAuthToken:Z

    .line 74
    iput-object p3, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequest:Lcom/google/protobuf/micro/MessageMicro;

    .line 75
    iput-object p2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequestClass:Ljava/lang/Class;

    .line 76
    iput-object p4, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mResponseClass:Ljava/lang/Class;

    .line 77
    iput-object p5, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 78
    iput-object p6, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    .line 79
    new-instance v0, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    iget-boolean v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mUseSecureAuthToken:Z

    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;-><init>(Lcom/google/android/vending/remoting/api/VendingApiContext;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/vending/remoting/api/VendingRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 80
    return-void
.end method

.method public static make(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)Lcom/google/android/vending/remoting/api/VendingRequest;
    .registers 15
    .parameter "url"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "apiContext"
    .parameter "errorListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/micro/MessageMicro;",
            "U:",
            "Lcom/google/protobuf/micro/MessageMicro;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;TT;",
            "Ljava/lang/Class",
            "<TU;>;",
            "Lcom/android/volley/Response$Listener",
            "<TU;>;",
            "Lcom/google/android/vending/remoting/api/VendingApiContext;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")",
            "Lcom/google/android/vending/remoting/api/VendingRequest",
            "<TT;TU;>;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, requestClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p2, request:Lcom/google/protobuf/micro/MessageMicro;,"TT;"
    .local p3, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TU;>;"
    .local p4, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<TU;>;"
    new-instance v0, Lcom/google/android/vending/remoting/api/VendingRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/vending/remoting/api/VendingRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/android/volley/Response$Listener;Lcom/google/android/vending/remoting/api/VendingApiContext;Lcom/android/volley/Response$ErrorListener;)V

    return-object v0
.end method


# virtual methods
.method public addExtraHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "header"
    .parameter "value"

    .prologue
    .line 101
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mExtraHeaders:Ljava/util/Map;

    if-nez v0, :cond_a

    .line 102
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mExtraHeaders:Ljava/util/Map;

    .line 104
    :cond_a
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method

.method public deliverError(Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 201
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_b

    .line 202
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    iget-boolean v1, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mUseSecureAuthToken:Z

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/api/VendingApiContext;->invalidateAuthToken(Z)V

    .line 204
    :cond_b
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 205
    return-void
.end method

.method protected deliverResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;)V
    .registers 5
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getResponse(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    move-result-object v0

    .line 194
    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mResponseClass:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/volley/MicroProtoHelper;->getParsedResponseFromWrapper(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v1, v0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 197
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 42
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/api/VendingRequest;->deliverResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;)V

    return-void
.end method

.method public getAvoidBulkCancel()Z
    .registers 2

    .prologue
    .line 94
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mAvoidBulkCancel:Z

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .registers 4
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

    .prologue
    .line 168
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    invoke-virtual {v2}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 169
    .local v1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mExtraHeaders:Ljava/util/Map;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 170
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 171
    .local v0, combinedHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 172
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mExtraHeaders:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 173
    move-object v1, v0

    .line 175
    .end local v0           #combinedHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1f
    return-object v1
.end method

.method public getPostParams()Ljava/util/Map;
    .registers 4
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
    .line 183
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 184
    .local v0, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "request"

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequest:Lcom/google/protobuf/micro/MessageMicro;

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/api/VendingRequest;->serializeRequestProto(Lcom/google/protobuf/micro/MessageMicro;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v1, "version"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-object v0
.end method

.method protected handlePendingNotifications(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;Z)Z
    .registers 8
    .parameter "response"
    .parameter "allowCancellation"

    .prologue
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    const/4 v2, 0x0

    .line 155
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->hasPendingNotifications()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 156
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getPendingNotifications()Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    move-result-object v1

    .line 157
    .local v1, pendingNotifications:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPendingNotificationsHandler()Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;

    move-result-object v0

    .line 158
    .local v0, handler:Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;
    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v0, v3, v4, v1, p2}, Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;->handlePendingNotifications(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;Z)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/4 v2, 0x1

    .line 162
    .end local v0           #handler:Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;
    .end local v1           #pendingNotifications:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    :cond_2c
    return v2
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 9
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    const/4 v6, 0x1

    .line 109
    const/4 v2, 0x0

    .line 113
    .local v2, unzippedContent:Ljava/io/InputStream;
    :try_start_2
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v5, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v5, v5

    invoke-direct {v3, v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_89
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_11} :catch_5e

    .line 115
    .end local v2           #unzippedContent:Ljava/io/InputStream;
    .local v3, unzippedContent:Ljava/io/InputStream;
    :try_start_11
    invoke-static {v3}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    move-result-object v1

    .line 118
    .local v1, proto:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getResponseCount()I

    move-result v4

    if-eq v4, v6, :cond_2f

    .line 119
    new-instance v4, Lcom/android/volley/ServerError;

    invoke-direct {v4}, Lcom/android/volley/ServerError;-><init>()V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_98
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_27} :catch_9b

    move-result-object v4

    .line 136
    if-eqz v3, :cond_2d

    .line 138
    :try_start_2a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_90

    :cond_2d
    :goto_2d
    move-object v2, v3

    .line 141
    .end local v1           #proto:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .end local v3           #unzippedContent:Ljava/io/InputStream;
    .restart local v2       #unzippedContent:Ljava/io/InputStream;
    :cond_2e
    :goto_2e
    return-object v4

    .line 123
    .end local v2           #unzippedContent:Ljava/io/InputStream;
    .restart local v1       #proto:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .restart local v3       #unzippedContent:Ljava/io/InputStream;
    :cond_2f
    const/4 v4, 0x0

    :try_start_30
    invoke-virtual {v1, v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getResponse(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;->getResponseProperties()Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponsePropertiesProto;->getResult()I

    move-result v4

    if-eqz v4, :cond_4e

    .line 125
    new-instance v4, Lcom/android/volley/ServerError;

    invoke-direct {v4}, Lcom/android/volley/ServerError;-><init>()V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_46
    .catchall {:try_start_30 .. :try_end_46} :catchall_98
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_46} :catch_9b

    move-result-object v4

    .line 136
    if-eqz v3, :cond_4c

    .line 138
    :try_start_49
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_92

    :cond_4c
    :goto_4c
    move-object v2, v3

    .line 141
    .end local v3           #unzippedContent:Ljava/io/InputStream;
    .restart local v2       #unzippedContent:Ljava/io/InputStream;
    goto :goto_2e

    .line 129
    .end local v2           #unzippedContent:Ljava/io/InputStream;
    .restart local v3       #unzippedContent:Ljava/io/InputStream;
    :cond_4e
    const/4 v4, 0x1

    :try_start_4f
    invoke-virtual {p0, v1, v4}, Lcom/google/android/vending/remoting/api/VendingRequest;->handlePendingNotifications(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;Z)Z

    .line 131
    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_98
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_56} :catch_9b

    move-result-object v4

    .line 136
    if-eqz v3, :cond_5c

    .line 138
    :try_start_59
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_94

    :cond_5c
    :goto_5c
    move-object v2, v3

    .line 141
    .end local v3           #unzippedContent:Ljava/io/InputStream;
    .restart local v2       #unzippedContent:Ljava/io/InputStream;
    goto :goto_2e

    .line 132
    .end local v1           #proto:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    :catch_5e
    move-exception v0

    .line 133
    .local v0, ioe:Ljava/io/IOException;
    :goto_5f
    :try_start_5f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse Vending ResponseProto: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    new-instance v4, Lcom/android/volley/VolleyError;

    invoke-direct {v4}, Lcom/android/volley/VolleyError;-><init>()V

    invoke-static {v4}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_80
    .catchall {:try_start_5f .. :try_end_80} :catchall_89

    move-result-object v4

    .line 136
    if-eqz v2, :cond_2e

    .line 138
    :try_start_83
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_2e

    .line 139
    :catch_87
    move-exception v5

    goto :goto_2e

    .line 136
    .end local v0           #ioe:Ljava/io/IOException;
    :catchall_89
    move-exception v4

    :goto_8a
    if-eqz v2, :cond_8f

    .line 138
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_96

    .line 141
    :cond_8f
    :goto_8f
    throw v4

    .line 139
    .end local v2           #unzippedContent:Ljava/io/InputStream;
    .restart local v1       #proto:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .restart local v3       #unzippedContent:Ljava/io/InputStream;
    :catch_90
    move-exception v5

    goto :goto_2d

    :catch_92
    move-exception v5

    goto :goto_4c

    :catch_94
    move-exception v5

    goto :goto_5c

    .end local v1           #proto:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .end local v3           #unzippedContent:Ljava/io/InputStream;
    .restart local v2       #unzippedContent:Ljava/io/InputStream;
    :catch_96
    move-exception v5

    goto :goto_8f

    .line 136
    .end local v2           #unzippedContent:Ljava/io/InputStream;
    .restart local v3       #unzippedContent:Ljava/io/InputStream;
    :catchall_98
    move-exception v4

    move-object v2, v3

    .end local v3           #unzippedContent:Ljava/io/InputStream;
    .restart local v2       #unzippedContent:Ljava/io/InputStream;
    goto :goto_8a

    .line 132
    .end local v2           #unzippedContent:Ljava/io/InputStream;
    .restart local v3       #unzippedContent:Ljava/io/InputStream;
    :catch_9b
    move-exception v0

    move-object v2, v3

    .end local v3           #unzippedContent:Ljava/io/InputStream;
    .restart local v2       #unzippedContent:Ljava/io/InputStream;
    goto :goto_5f
.end method

.method serializeRequestProto(Lcom/google/protobuf/micro/MessageMicro;)Ljava/lang/String;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    invoke-direct {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;-><init>()V

    .line 212
    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequestClass:Ljava/lang/Class;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/volley/MicroProtoHelper;->setRequestInWrapper(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;)V

    .line 214
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;-><init>()V

    .line 215
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    iget-boolean v3, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mUseSecureAuthToken:Z

    invoke-virtual {v2, v3}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getRequestProperties(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->setRequestProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;

    .line 216
    invoke-virtual {v1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->addRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;

    .line 217
    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAvoidBulkCancel()V
    .registers 2

    .prologue
    .line 87
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mAvoidBulkCancel:Z

    .line 88
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 229
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/volley/Request;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequestClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

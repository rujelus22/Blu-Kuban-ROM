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
    .line 66
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    .local p2, requestClass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    .local p3, request:Lcom/google/protobuf/micro/MessageMicro;,"TT;"
    .local p4, responseClass:Ljava/lang/Class;,"Ljava/lang/Class<TU;>;"
    .local p5, listener:Lcom/android/volley/Response$Listener;,"Lcom/android/volley/Response$Listener<TU;>;"
    invoke-direct {p0, p1, p7}, Lcom/android/volley/Request;-><init>(Ljava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 67
    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mUseSecureAuthToken:Z

    .line 68
    iput-object p3, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequest:Lcom/google/protobuf/micro/MessageMicro;

    .line 69
    iput-object p2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequestClass:Ljava/lang/Class;

    .line 70
    iput-object p4, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mResponseClass:Ljava/lang/Class;

    .line 71
    iput-object p5, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 72
    iput-object p6, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    .line 73
    new-instance v0, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;

    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    iget-boolean v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mUseSecureAuthToken:Z

    invoke-direct {v0, v1, v2}, Lcom/google/android/vending/remoting/api/VendingRetryPolicy;-><init>(Lcom/google/android/vending/remoting/api/VendingApiContext;Z)V

    invoke-virtual {p0, v0}, Lcom/google/android/vending/remoting/api/VendingRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 74
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
    .line 60
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
.method public deliverError(Lcom/android/volley/VolleyError;)V
    .registers 4
    .parameter "error"

    .prologue
    .line 146
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    instance-of v0, p1, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_b

    .line 147
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    iget-boolean v1, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mUseSecureAuthToken:Z

    invoke-virtual {v0, v1}, Lcom/google/android/vending/remoting/api/VendingApiContext;->invalidateAuthToken(Z)V

    .line 149
    :cond_b
    invoke-super {p0, p1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V

    .line 150
    return-void
.end method

.method protected deliverResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;)V
    .registers 5
    .parameter

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getResponseCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only exactly one response message is allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getResponse(I)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    move-result-object v0

    .line 139
    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto$Response;

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mResponseClass:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/volley/MicroProtoHelper;->getParsedResponseFromWrapper(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v1, v0}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/api/VendingRequest;->deliverResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;)V

    return-void
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

    .prologue
    .line 117
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    iget-object v0, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    invoke-virtual {v0}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
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
    .line 125
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    .line 126
    .local v0, parameters:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "request"

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequest:Lcom/google/protobuf/micro/MessageMicro;

    invoke-virtual {p0, v2}, Lcom/google/android/vending/remoting/api/VendingRequest;->serializeRequestProto(Lcom/google/protobuf/micro/MessageMicro;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "version"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object v0
.end method

.method protected handlePendingNotifications(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;Z)Z
    .registers 8
    .parameter "response"
    .parameter "allowCancellation"

    .prologue
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    const/4 v2, 0x0

    .line 104
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->hasPendingNotifications()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 105
    invoke-virtual {p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->getPendingNotifications()Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;

    move-result-object v1

    .line 106
    .local v1, pendingNotifications:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPendingNotificationsHandler()Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;

    move-result-object v0

    .line 107
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

    .line 111
    .end local v0           #handler:Lcom/google/android/vending/remoting/api/PendingNotificationsHandler;
    .end local v1           #pendingNotifications:Lcom/google/android/vending/remoting/protos/VendingProtos$PendingNotificationsProto;
    :cond_2c
    return v2
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .registers 7
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
    .line 81
    .local p0, this:Lcom/google/android/vending/remoting/api/VendingRequest;,"Lcom/google/android/vending/remoting/api/VendingRequest<TT;TU;>;"
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 83
    .local v2, unzippedContent:Ljava/io/InputStream;
    invoke-static {v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->newInstance(Ljava/io/InputStream;)Lcom/google/protobuf/micro/CodedInputStreamMicro;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;->parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;

    move-result-object v1

    .line 86
    .local v1, proto:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Lcom/google/android/vending/remoting/api/VendingRequest;->handlePendingNotifications(Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;Z)Z

    .line 88
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v3

    .line 91
    .end local v1           #proto:Lcom/google/android/vending/remoting/protos/VendingProtos$ResponseProto;
    .end local v2           #unzippedContent:Ljava/io/InputStream;
    :goto_20
    return-object v3

    .line 89
    :catch_21
    move-exception v0

    .line 90
    .local v0, ioe:Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot parse Vending ResponseProto: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-instance v3, Lcom/android/volley/VolleyError;

    invoke-direct {v3}, Lcom/android/volley/VolleyError;-><init>()V

    invoke-static {v3}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v3

    goto :goto_20
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
    .line 156
    new-instance v0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    invoke-direct {v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;-><init>()V

    .line 157
    const-class v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;

    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mRequestClass:Ljava/lang/Class;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/volley/MicroProtoHelper;->setRequestInWrapper(Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;Lcom/google/protobuf/micro/MessageMicro;Ljava/lang/Class;)V

    .line 159
    new-instance v1, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;

    invoke-direct {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;-><init>()V

    .line 160
    iget-object v2, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mApiContext:Lcom/google/android/vending/remoting/api/VendingApiContext;

    iget-boolean v3, p0, Lcom/google/android/vending/remoting/api/VendingRequest;->mUseSecureAuthToken:Z

    invoke-virtual {v2, v3}, Lcom/google/android/vending/remoting/api/VendingApiContext;->getRequestProperties(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->setRequestProperties(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;

    .line 161
    invoke-virtual {v1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->addRequest(Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto$Request;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;

    .line 162
    invoke-virtual {v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestProto;->toByteArray()[B

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 174
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

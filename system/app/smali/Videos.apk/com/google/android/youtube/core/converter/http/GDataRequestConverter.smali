.class public Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;
.super Ljava/lang/Object;
.source "GDataRequestConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/RequestConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/converter/http/GDataRequestConverter$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/RequestConverter",
        "<",
        "Lcom/google/android/youtube/core/async/GDataRequest;",
        "Lorg/apache/http/client/methods/HttpUriRequest;",
        ">;"
    }
.end annotation


# instance fields
.field public final contentType:Ljava/lang/String;

.field public final deviceAuthorizer:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

.field public final method:Lcom/google/android/youtube/core/converter/http/HttpMethod;

.field public final uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/UriRewriter;)V
    .registers 5
    .parameter "method"
    .parameter "deviceAuthorizer"
    .parameter "uriRewriter"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, "method can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->method:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->contentType:Ljava/lang/String;

    .line 33
    const-string v0, "deviceAuthorizer can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->deviceAuthorizer:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    .line 35
    const-string v0, "uriRewriter can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/UriRewriter;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;Lcom/google/android/youtube/core/async/DeviceAuthorizer;Lcom/google/android/youtube/core/utils/UriRewriter;)V
    .registers 6
    .parameter "method"
    .parameter "contentType"
    .parameter "deviceAuthProvider"
    .parameter "uriRewriter"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "method can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->method:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 41
    const-string v0, "contentType can\'t be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->contentType:Ljava/lang/String;

    .line 42
    const-string v0, "deviceAuthProvider can\'t be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->deviceAuthorizer:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    .line 44
    const-string v0, "uriRewriter can\'t be null"

    invoke-static {p4, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/utils/UriRewriter;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic convertRequest(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/youtube/core/async/GDataRequest;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->convertRequest(Lcom/google/android/youtube/core/async/GDataRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public convertRequest(Lcom/google/android/youtube/core/async/GDataRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 11
    .parameter "src"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v6, p1, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    if-eqz v6, :cond_2d

    iget-object v6, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->method:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-virtual {v6}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->supportsPayload()Z

    move-result v6

    if-nez v6, :cond_2d

    .line 49
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content not allowed [method="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->method:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 52
    :cond_2d
    iget-object v6, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->method:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iget-object v7, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->uriRewriter:Lcom/google/android/youtube/core/utils/UriRewriter;

    iget-object v8, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/core/utils/UriRewriter;->rewrite(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    .line 54
    .local v4, httpRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    const-string v6, "GData-Version"

    const-string v7, "2"

    invoke-interface {v4, v6, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v6, "Accept-Encoding"

    const-string v7, "gzip"

    invoke-interface {v4, v6, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v6, p1, Lcom/google/android/youtube/core/async/GDataRequest;->headers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_53

    .line 62
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6f
    :try_start_6f
    const-string v6, "X-GData-Device"

    iget-object v7, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->deviceAuthorizer:Lcom/google/android/youtube/core/async/DeviceAuthorizer;

    iget-object v8, p1, Lcom/google/android/youtube/core/async/GDataRequest;->uri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Lcom/google/android/youtube/core/async/DeviceAuthorizer;->getHeaderValue(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catch Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException; {:try_start_6f .. :try_end_7c} :catch_97

    .line 67
    iget-object v6, p1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v6, :cond_c0

    .line 68
    sget-object v6, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter$1;->$SwitchMap$com$google$android$youtube$core$model$UserAuth$AuthMethod:[I

    iget-object v7, p1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/UserAuth;->authMethod:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-virtual {v7}, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_f4

    .line 77
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unsupported authorization method"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    :catch_97
    move-exception v0

    .line 64
    .local v0, e:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;
    new-instance v6, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v6, v0}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 70
    .end local v0           #e:Lcom/google/android/youtube/core/async/DeviceAuthorizer$DeviceRegistrationException;
    :pswitch_9e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GoogleLogin auth=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v7, v7, Lcom/google/android/youtube/core/model/UserAuth;->authToken:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, headerLine:Ljava/lang/String;
    const-string v6, "Authorization"

    invoke-interface {v4, v6, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .end local v3           #headerLine:Ljava/lang/String;
    :cond_c0
    :goto_c0
    iget-object v6, p1, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    if-eqz v6, :cond_d6

    .line 82
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v6, p1, Lcom/google/android/youtube/core/async/GDataRequest;->content:[B

    invoke-direct {v1, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 83
    .local v1, entity:Lorg/apache/http/entity/ByteArrayEntity;
    iget-object v6, p0, Lcom/google/android/youtube/core/converter/http/GDataRequestConverter;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    move-object v6, v4

    .line 86
    check-cast v6, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v6, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 88
    .end local v1           #entity:Lorg/apache/http/entity/ByteArrayEntity;
    :cond_d6
    return-object v4

    .line 74
    :pswitch_d7
    const-string v6, "Authorization"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bearer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/google/android/youtube/core/async/GDataRequest;->userAuth:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v8, v8, Lcom/google/android/youtube/core/model/UserAuth;->authToken:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c0

    .line 68
    :pswitch_data_f4
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_d7
    .end packed-switch
.end method

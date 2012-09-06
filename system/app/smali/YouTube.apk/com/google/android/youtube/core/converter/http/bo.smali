.class public Lcom/google/android/youtube/core/converter/http/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/converter/a;


# instance fields
.field public final d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;)V
    .registers 3
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "method can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/bo;->d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/bo;->e:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/converter/http/HttpMethod;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "method can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/bo;->d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    .line 35
    const-string v0, "contentType can\'t be null or empty"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/bo;->e:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .parameter

    .prologue
    .line 22
    check-cast p1, Lcom/google/android/youtube/core/async/aj;

    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/bo;->a(Lcom/google/android/youtube/core/async/aj;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/android/youtube/core/async/aj;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 6
    .parameter

    .prologue
    .line 43
    invoke-static {p1}, Lcom/google/android/youtube/core/utils/n;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p1, Lcom/google/android/youtube/core/async/aj;->f:[B

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/bo;->d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->supportsPayload()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Content not allowed [method="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/youtube/core/converter/http/bo;->d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2c
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/bo;->b(Lcom/google/android/youtube/core/async/aj;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 50
    iget-object v0, p1, Lcom/google/android/youtube/core/async/aj;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 54
    :cond_56
    iget-object v0, p1, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    if-eqz v0, :cond_8f

    .line 55
    sget-object v0, Lcom/google/android/youtube/core/converter/http/bp;->a:[I

    iget-object v1, p1, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->c:Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;

    invoke-virtual {v1}, Lcom/google/android/youtube/core/model/UserAuth$AuthMethod;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_c0

    .line 64
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unsupported authorization method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :pswitch_71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GoogleLogin auth=\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/UserAuth;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, "Authorization"

    invoke-interface {v2, v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_8f
    :goto_8f
    iget-object v0, p1, Lcom/google/android/youtube/core/async/aj;->f:[B

    if-eqz v0, :cond_a5

    .line 69
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v0, p1, Lcom/google/android/youtube/core/async/aj;->f:[B

    invoke-direct {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 70
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/bo;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    move-object v0, v2

    .line 73
    check-cast v0, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 75
    :cond_a5
    return-object v2

    .line 61
    :pswitch_a6
    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Bearer "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/google/android/youtube/core/async/aj;->d:Lcom/google/android/youtube/core/model/UserAuth;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/UserAuth;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8f

    .line 55
    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_71
        :pswitch_a6
    .end packed-switch
.end method

.method protected b(Lcom/google/android/youtube/core/async/aj;)Lorg/apache/http/client/methods/HttpUriRequest;
    .registers 4
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/bo;->d:Lcom/google/android/youtube/core/converter/http/HttpMethod;

    iget-object v1, p1, Lcom/google/android/youtube/core/async/aj;->c:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/converter/http/HttpMethod;->createHttpRequest(Landroid/net/Uri;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    return-object v0
.end method

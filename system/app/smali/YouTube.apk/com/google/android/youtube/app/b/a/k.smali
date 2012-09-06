.class public final Lcom/google/android/youtube/app/b/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private final a:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 36
    const-string v1, "HmacSHA1"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/app/b/a/k;->a:Ljavax/crypto/Mac;

    .line 37
    iget-object v1, p0, Lcom/google/android/youtube/app/b/a/k;->a:Ljavax/crypto/Mac;

    invoke-virtual {v1, v0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 38
    return-void
.end method

.method private declared-synchronized b(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .parameter

    .prologue
    .line 81
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/k;->a:Ljavax/crypto/Mac;

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update([B)V

    .line 82
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1a
    if-ge v0, v2, :cond_32

    aget-object v3, v1, v0

    .line 83
    const-string v4, "proxy-auth="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 84
    iget-object v4, p0, Lcom/google/android/youtube/app/b/a/k;->a:Ljavax/crypto/Mac;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljavax/crypto/Mac;->update([B)V

    .line 82
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 87
    :cond_32
    iget-object v0, p0, Lcom/google/android/youtube/app/b/a/k;->a:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 88
    invoke-static {v0}, Lcom/google/android/ytremote/util/Base64;->a([B)Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3e

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 81
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .parameter

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "proxy-auth"

    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/b/a/k;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 44
    return-object v0
.end method

.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 64
    const-string v1, "proxy-auth"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-direct {p0, v0}, Lcom/google/android/youtube/app/b/a/k;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1c
    if-nez v0, :cond_28

    .line 67
    new-instance v0, Lorg/apache/http/ProtocolException;

    const-string v1, "The URL is not signed correctly"

    invoke-direct {v0, v1}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_26
    const/4 v0, 0x0

    goto :goto_1c

    .line 69
    :cond_28
    return-void
.end method

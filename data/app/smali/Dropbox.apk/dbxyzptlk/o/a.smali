.class public abstract Ldbxyzptlk/o/a;
.super Ljava/lang/Object;
.source "panda.py"

# interfaces
.implements Ldbxyzptlk/o/m;


# instance fields
.field private final a:Ldbxyzptlk/o/n;

.field private final b:Ldbxyzptlk/o/l;

.field private c:Ldbxyzptlk/o/k;

.field private d:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Ldbxyzptlk/o/l;Ldbxyzptlk/o/n;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ldbxyzptlk/o/a;-><init>(Ldbxyzptlk/o/l;Ldbxyzptlk/o/n;Ldbxyzptlk/o/k;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Ldbxyzptlk/o/l;Ldbxyzptlk/o/n;Ldbxyzptlk/o/k;)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object v0, p0, Ldbxyzptlk/o/a;->c:Ldbxyzptlk/o/k;

    .line 98
    iput-object v0, p0, Ldbxyzptlk/o/a;->d:Lorg/apache/http/client/HttpClient;

    .line 115
    if-nez p1, :cond_12

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'appKeyPair\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_12
    if-nez p2, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'type\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_1c
    iput-object p1, p0, Ldbxyzptlk/o/a;->b:Ldbxyzptlk/o/l;

    .line 119
    iput-object p2, p0, Ldbxyzptlk/o/a;->a:Ldbxyzptlk/o/n;

    .line 120
    iput-object p3, p0, Ldbxyzptlk/o/a;->c:Ldbxyzptlk/o/k;

    .line 121
    return-void
.end method

.method private static a(Ldbxyzptlk/o/l;Ldbxyzptlk/o/k;)Ljava/lang/String;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    const-string v0, "OAuth oauth_version=\"1.0\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v0, ", oauth_signature_method=\"PLAINTEXT\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v0, ", oauth_consumer_key=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ldbxyzptlk/o/l;->a:Ljava/lang/String;

    invoke-static {v2}, Ldbxyzptlk/o/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    if-eqz p1, :cond_72

    .line 202
    const-string v0, ", oauth_token=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Ldbxyzptlk/o/k;->a:Ljava/lang/String;

    invoke-static {v2}, Ldbxyzptlk/o/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldbxyzptlk/o/l;->b:Ljava/lang/String;

    invoke-static {v2}, Ldbxyzptlk/o/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Ldbxyzptlk/o/k;->b:Ljava/lang/String;

    invoke-static {v2}, Ldbxyzptlk/o/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_5e
    const-string v2, ", oauth_signature=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 207
    :cond_72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Ldbxyzptlk/o/l;->b:Ljava/lang/String;

    invoke-static {v2}, Ldbxyzptlk/o/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5e
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .parameter

    .prologue
    .line 217
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    return-object v0

    .line 218
    :catch_7
    move-exception v0

    .line 219
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "UTF-8 isn\'t available"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {v1, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 221
    throw v1
.end method


# virtual methods
.method public final a()Ldbxyzptlk/o/l;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Ldbxyzptlk/o/a;->b:Ldbxyzptlk/o/l;

    return-object v0
.end method

.method public final a(Ldbxyzptlk/o/k;)V
    .registers 4
    .parameter

    .prologue
    .line 127
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'accessTokenPair\' must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_a
    iput-object p1, p0, Ldbxyzptlk/o/a;->c:Ldbxyzptlk/o/k;

    .line 129
    return-void
.end method

.method public final a(Lorg/apache/http/HttpRequest;)V
    .registers 5
    .parameter

    .prologue
    .line 182
    const-string v0, "Authorization"

    iget-object v1, p0, Ldbxyzptlk/o/a;->b:Ldbxyzptlk/o/l;

    iget-object v2, p0, Ldbxyzptlk/o/a;->c:Ldbxyzptlk/o/k;

    invoke-static {v1, v2}, Ldbxyzptlk/o/a;->a(Ldbxyzptlk/o/l;Ldbxyzptlk/o/k;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public final a(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .registers 4
    .parameter

    .prologue
    const/16 v1, 0x7530

    .line 333
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 334
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 335
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 336
    return-void
.end method

.method public final b()Ldbxyzptlk/o/n;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Ldbxyzptlk/o/a;->a:Ldbxyzptlk/o/n;

    return-object v0
.end method

.method public c()Ljava/util/Locale;
    .registers 2

    .prologue
    .line 159
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    return-object v0
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Ldbxyzptlk/o/a;->c:Ldbxyzptlk/o/k;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/o/a;->c:Ldbxyzptlk/o/k;

    .line 170
    return-void
.end method

.method public final declared-synchronized f()Ldbxyzptlk/o/o;
    .registers 2

    .prologue
    .line 232
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized g()Lorg/apache/http/client/HttpClient;
    .registers 7

    .prologue
    .line 245
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ldbxyzptlk/o/a;->d:Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_84

    .line 248
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 249
    new-instance v1, Ldbxyzptlk/o/b;

    invoke-direct {v1, p0}, Ldbxyzptlk/o/b;-><init>(Ldbxyzptlk/o/a;)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 255
    const/16 v1, 0x14

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 258
    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 259
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    const/16 v5, 0x50

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 261
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v4

    const/16 v5, 0x1bb

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 264
    new-instance v2, Ldbxyzptlk/o/f;

    invoke-direct {v2, v0, v1}, Ldbxyzptlk/o/f;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 268
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 269
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 270
    const/16 v1, 0x7530

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 271
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OfficialDropboxJavaSDK/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Ldbxyzptlk/l/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 275
    new-instance v1, Ldbxyzptlk/o/c;

    invoke-direct {v1, p0, v2, v0}, Ldbxyzptlk/o/c;-><init>(Ldbxyzptlk/o/a;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 287
    new-instance v0, Ldbxyzptlk/o/d;

    invoke-direct {v0, p0}, Ldbxyzptlk/o/d;-><init>(Ldbxyzptlk/o/a;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 298
    new-instance v0, Ldbxyzptlk/o/e;

    invoke-direct {v0, p0}, Ldbxyzptlk/o/e;-><init>(Ldbxyzptlk/o/a;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 320
    iput-object v1, p0, Ldbxyzptlk/o/a;->d:Lorg/apache/http/client/HttpClient;

    .line 323
    :cond_84
    iget-object v0, p0, Ldbxyzptlk/o/a;->d:Lorg/apache/http/client/HttpClient;
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_88

    monitor-exit p0

    return-object v0

    .line 245
    :catchall_88
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    const-string v0, "api.dropbox.com"

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    const-string v0, "api-content.dropbox.com"

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 350
    const-string v0, "www.dropbox.com"

    return-object v0
.end method

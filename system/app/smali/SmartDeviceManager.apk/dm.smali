.class public final Ldm;
.super Ljava/lang/Object;
.source "a"

# interfaces
.implements Lea;


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Ldm;->a:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            "Lorg/apache/http/client/ResponseHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    invoke-static {p0}, Li;->a(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 231
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 235
    :try_start_8
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.socket.timeout"

    const-string v3, "HTTP_SOCKET_TIMEOUT_MILLIS"

    invoke-static {v3}, Ln;->c(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 237
    invoke-virtual {p0}, Lorg/apache/http/client/methods/HttpRequestBase;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.connection.timeout"

    const-string v3, "HTTP_CONNECTION_TIMEOUT_MILLIS"

    invoke-static {v3}, Ln;->c(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lorg/apache/http/params/HttpParams;

    .line 240
    const-string v1, "User-Agent"

    const-string v2, "Sparkle Android"

    invoke-virtual {p0, v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 244
    invoke-interface {v0, p0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_3f

    .line 251
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    return-object v1

    :catchall_3f
    move-exception v1

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v1
.end method

.method private static a(Lda;Lcq;)Ljava/lang/String;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 90
    const-string v0, "OAuth realm=\"\", oauth_version=\"1.0\", "

    .line 91
    if-nez p1, :cond_40

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oauth_signature=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lda;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oauth_signature_method=\"PLAINTEXT\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oauth_consumer_key=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lda;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    :goto_3f
    return-object v0

    :cond_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oauth_signature=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lda;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oauth_signature_method=\"PLAINTEXT\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oauth_token=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "oauth_consumer_key=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lda;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 46
    sget-object v0, Ldm;->a:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method private static a(Ljava/net/URI;Lcq;)V
    .registers 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ldx;
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p1, :cond_3

    .line 62
    :cond_2
    return-void

    .line 54
    :cond_3
    if-eqz p0, :cond_22

    .line 55
    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_9
    sget-object v1, Ldm;->a:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 64
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 66
    const/4 v2, -0x1

    if-eq v1, v2, :cond_2a

    .line 67
    if-nez v1, :cond_25

    .line 70
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 58
    :cond_22
    const-string v0, ""

    goto :goto_9

    .line 73
    :cond_25
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 82
    :cond_2a
    const-wide/16 v0, 0x7d0

    :try_start_2c
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_35

    .line 86
    :goto_2f
    new-instance v0, Ldx;

    invoke-direct {v0}, Ldx;-><init>()V

    throw v0

    :catch_35
    move-exception v0

    goto :goto_2f
.end method


# virtual methods
.method public final a(Ljava/net/URI;Lda;Lcq;)Ljava/lang/Object;
    .registers 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Lda;",
            "Lcq;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {p1, p3}, Ldm;->a(Ljava/net/URI;Lcq;)V

    .line 203
    new-instance v0, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 204
    const-string v1, "Authorization"

    invoke-static {p2, p3}, Ldm;->a(Lda;Lcq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpDelete;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :try_start_11
    new-instance v1, Lej;

    new-instance v2, Ldf;

    invoke-direct {v2}, Ldf;-><init>()V

    invoke-direct {v1, v2}, Lej;-><init>(Lei;)V

    .line 209
    invoke-static {v0, v1}, Ldm;->a(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_1e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_11 .. :try_end_1e} :catch_20

    move-result-object v0

    return-object v0

    .line 210
    :catch_20
    move-exception v0

    .line 211
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Leq;

    if-eqz v1, :cond_36

    .line 213
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Leq;

    throw p0

    .line 215
    :cond_36
    new-instance v1, Leq;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Leq;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/net/URI;Lda;Lcq;Lei;)Ljava/lang/Object;
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Lda;",
            "Lcq;",
            "Lei",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {p1, p3}, Ldm;->a(Ljava/net/URI;Lcq;)V

    .line 113
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 114
    const-string v1, "Accept"

    invoke-interface {p4}, Lei;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "Authorization"

    invoke-static {p2, p3}, Ldm;->a(Lda;Lcq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :try_start_1a
    new-instance v1, Lej;

    invoke-direct {v1, p4}, Lej;-><init>(Lei;)V

    .line 118
    invoke-static {v0, v1}, Ldm;->a(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_22
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1a .. :try_end_22} :catch_24

    move-result-object v0

    return-object v0

    .line 119
    :catch_24
    move-exception v0

    .line 120
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Leq;

    if-eqz v1, :cond_3a

    .line 122
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Leq;

    throw p0

    .line 124
    :cond_3a
    new-instance v1, Leq;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Leq;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Ljava/net/URI;Lda;Lcq;Ljava/lang/String;Ljava/lang/String;Lei;)Ljava/lang/Object;
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Lda;",
            "Lcq;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lei",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Ldm;->a(Ljava/net/URI;Lda;Lcq;Ljava/lang/String;Ljava/lang/String;Lei;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/net/URI;Lda;Lcq;Ljava/lang/String;Ljava/lang/String;Lei;Z)Ljava/lang/Object;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URI;",
            "Lda;",
            "Lcq;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lei",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p1, p3}, Ldm;->a(Ljava/net/URI;Lcq;)V

    .line 154
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 155
    const-string v1, "Accept"

    invoke-interface {p6}, Lei;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "Authorization"

    invoke-static {p2, p3}, Ldm;->a(Lda;Lcq;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-eqz p7, :cond_65

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "GZIP_POST_MIN_BYTES"

    invoke-static {v2}, Ln;->c(Ljava/lang/String;)I

    move-result v2

    if-lt v1, v2, :cond_65

    .line 159
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 162
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 163
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 164
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 176
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 177
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 178
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 183
    :goto_5b
    :try_start_5b
    new-instance v1, Lej;

    invoke-direct {v1, p6}, Lej;-><init>(Lei;)V

    .line 184
    invoke-static {v0, v1}, Ldm;->a(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_63
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5b .. :try_end_63} :catch_70

    move-result-object v0

    return-object v0

    .line 180
    :cond_65
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v2, "UTF-8"

    invoke-direct {v1, p5, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto :goto_5b

    .line 185
    :catch_70
    move-exception v0

    .line 186
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_86

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Leq;

    if-eqz v1, :cond_86

    .line 188
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Leq;

    throw p0

    .line 190
    :cond_86
    new-instance v1, Leq;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Leq;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

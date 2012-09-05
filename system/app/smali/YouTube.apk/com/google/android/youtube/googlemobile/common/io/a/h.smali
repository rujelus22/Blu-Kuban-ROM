.class final Lcom/google/android/youtube/googlemobile/common/io/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/googlemobile/common/io/e;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/googlemobile/common/io/a/g;

.field private final b:Lorg/apache/http/client/methods/HttpUriRequest;

.field private c:Ljava/io/ByteArrayOutputStream;

.field private d:Lorg/apache/http/HttpResponse;

.field private e:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/youtube/googlemobile/common/io/a/g;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/youtube/googlemobile/common/io/a/h;-><init>(Lcom/google/android/youtube/googlemobile/common/io/a/g;Ljava/lang/String;ZB)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/youtube/googlemobile/common/io/a/g;Ljava/lang/String;ZB)V
    .registers 8

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->a:Lcom/google/android/youtube/googlemobile/common/io/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->c:Ljava/io/ByteArrayOutputStream;

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->d:Lorg/apache/http/HttpResponse;

    if-eqz p3, :cond_1d

    :try_start_c
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_13} :catch_36

    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/io/a/g;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_18
    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/io/a/g;->b()I

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_5d

    return-void

    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GET not supported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_36} :catch_36

    :catch_36
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URISyntaxException in HttpUriRequest, post="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :catchall_5d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g()Lorg/apache/http/HttpResponse;
    .registers 4

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->d:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->c:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_1a
    :try_start_1a
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->a:Lcom/google/android/youtube/googlemobile/common/io/a/g;

    invoke-static {v0}, Lcom/google/android/youtube/googlemobile/common/io/a/g;->a(Lcom/google/android/youtube/googlemobile/common/io/a/g;)Lcom/google/android/youtube/googlemobile/common/io/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/googlemobile/common/io/a/j;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->d:Lorg/apache/http/HttpResponse;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_2b

    :cond_28
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->d:Lorg/apache/http/HttpResponse;

    return-object v0

    :catch_2b
    move-exception v0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/io/DataOutputStream;
    .registers 4

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpPost;

    if-nez v0, :cond_25

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open output stream on a GET to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->c:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->c:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public final b()Ljava/io/DataInputStream;
    .registers 3

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/a/h;->g()Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public final c()I
    .registers 2

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/a/h;->g()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/a/h;->g()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public final e()J
    .registers 3

    invoke-direct {p0}, Lcom/google/android/youtube/googlemobile/common/io/a/h;->g()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->d:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->d:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    :cond_f
    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/io/a/g;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_14
    iget-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->e:Z

    if-eqz v0, :cond_1a

    monitor-exit v1

    :goto_19
    return-void

    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/googlemobile/common/io/a/h;->e:Z

    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/io/a/g;->c()I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection closed.  # of open connections="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/google/android/youtube/googlemobile/common/io/a/g;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_14 .. :try_end_37} :catchall_38

    goto :goto_19

    :catchall_38
    move-exception v0

    monitor-exit v1

    throw v0
.end method

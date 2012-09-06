.class LV/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/common/io/GoogleHttpConnection;


# instance fields
.field final synthetic a:LV/a;

.field private final b:Lorg/apache/http/client/methods/HttpUriRequest;

.field private c:Ljava/io/ByteArrayOutputStream;

.field private d:Lorg/apache/http/HttpResponse;

.field private e:Z


# direct methods
.method private constructor <init>(LV/a;Ljava/lang/String;Z)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 93
    iput-object p1, p0, LV/c;->a:LV/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, LV/c;->c:Ljava/io/ByteArrayOutputStream;

    .line 89
    iput-object v0, p0, LV/c;->d:Lorg/apache/http/HttpResponse;

    .line 95
    if-eqz p3, :cond_1d

    .line 96
    :try_start_c
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LV/c;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_13} :catch_25

    .line 108
    :goto_13
    invoke-static {}, LV/a;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 109
    :try_start_18
    invoke-static {}, LV/a;->h()I

    .line 112
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_4c

    .line 113
    return-void

    .line 98
    :cond_1d
    :try_start_1d
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, LV/c;->b:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_24} :catch_25

    goto :goto_13

    .line 100
    :catch_25
    move-exception v0

    .line 101
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

    .line 104
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v2, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 106
    throw v2

    .line 112
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method synthetic constructor <init>(LV/a;Ljava/lang/String;ZLV/b;)V
    .registers 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, LV/c;-><init>(LV/a;Ljava/lang/String;Z)V

    return-void
.end method

.method private g()Lorg/apache/http/HttpResponse;
    .registers 4

    .prologue
    .line 119
    iget-object v0, p0, LV/c;->d:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_28

    .line 120
    iget-object v0, p0, LV/c;->c:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_1a

    .line 122
    iget-object v0, p0, LV/c;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v2, p0, LV/c;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 126
    :cond_1a
    :try_start_1a
    iget-object v0, p0, LV/c;->a:LV/a;

    invoke-static {v0}, LV/a;->a(LV/a;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iget-object v1, p0, LV/c;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    iput-object v0, p0, LV/c;->d:Lorg/apache/http/HttpResponse;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_2b

    .line 132
    :cond_28
    iget-object v0, p0, LV/c;->d:Lorg/apache/http/HttpResponse;

    return-object v0

    .line 127
    :catch_2b
    move-exception v0

    .line 129
    throw v0
.end method


# virtual methods
.method public a()Ljava/io/DataOutputStream;
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, LV/c;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    instance-of v0, v0, Lorg/apache/http/client/methods/HttpPost;

    if-nez v0, :cond_25

    .line 140
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t open output stream on a GET to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LV/c;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LV/c;->c:Ljava/io/ByteArrayOutputStream;

    .line 144
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, LV/c;->c:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 216
    invoke-direct {p0}, LV/c;->g()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 217
    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 154
    const-string v0, "Content-Length"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 163
    :cond_10
    :goto_10
    return-void

    .line 162
    :cond_11
    iget-object v0, p0, LV/c;->b:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public b()Ljava/io/DataInputStream;
    .registers 3

    .prologue
    .line 149
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {p0}, LV/c;->g()Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 172
    invoke-direct {p0}, LV/c;->g()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 178
    invoke-direct {p0}, LV/c;->g()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    .line 179
    if-nez v0, :cond_11

    const-string v0, ""

    :goto_10
    return-object v0

    :cond_11
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method public e()J
    .registers 3

    .prologue
    .line 167
    invoke-direct {p0}, LV/c;->g()Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()V
    .registers 4

    .prologue
    .line 185
    iget-object v0, p0, LV/c;->d:Lorg/apache/http/HttpResponse;

    if-eqz v0, :cond_f

    .line 186
    iget-object v0, p0, LV/c;->d:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_f

    .line 189
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 195
    :cond_f
    invoke-static {}, LV/a;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 196
    :try_start_14
    iget-boolean v0, p0, LV/c;->e:Z

    if-eqz v0, :cond_1a

    .line 197
    monitor-exit v1

    .line 207
    :goto_19
    return-void

    .line 199
    :cond_1a
    const/4 v0, 0x1

    iput-boolean v0, p0, LV/c;->e:Z

    .line 201
    invoke-static {}, LV/a;->i()I

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection closed.  # of open connections="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, LV/a;->j()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    monitor-exit v1

    goto :goto_19

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .registers 3
    .parameter

    .prologue
    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public notifyTimeout()V
    .registers 1

    .prologue
    .line 248
    return-void
.end method

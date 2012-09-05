.class public final Lcom/a/a/a/a/b/d;
.super Lcom/a/a/a/a/b/h;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/a/a/a/a/b/h;-><init>()V

    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    const/16 v1, 0x100

    new-array v3, v1, [B

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/a/a/a/a/b/d;->a(I)V

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    :try_start_17
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_4f
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_5a

    move-result-object v2

    :try_start_1b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_55
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_60

    :goto_20
    :try_start_20
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_36

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2a} :catch_3b

    move-result-object v0

    :try_start_2b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_49

    :goto_2e
    if-eqz v2, :cond_3

    :try_start_30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3

    :catch_34
    move-exception v1

    goto :goto_3

    :cond_36
    const/4 v4, 0x0

    :try_start_37
    invoke-virtual {v1, v3, v4, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_20

    :catch_3b
    move-exception v0

    :goto_3c
    :try_start_3c
    throw v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    :catchall_3d
    move-exception v0

    :goto_3e
    if-eqz v1, :cond_43

    :try_start_40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_4b

    :cond_43
    :goto_43
    if-eqz v2, :cond_48

    :try_start_45
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_4d

    :cond_48
    :goto_48
    throw v0

    :catch_49
    move-exception v1

    goto :goto_2e

    :catch_4b
    move-exception v1

    goto :goto_43

    :catch_4d
    move-exception v1

    goto :goto_48

    :catchall_4f
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3e

    :catchall_55
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3e

    :catch_5a
    move-exception v1

    move-object v2, v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_3c

    :catch_60
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3c
.end method


# virtual methods
.method public final synthetic handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/a/a/a/a/b/d;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

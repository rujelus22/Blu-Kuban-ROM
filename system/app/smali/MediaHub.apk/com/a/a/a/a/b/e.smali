.class public abstract Lcom/a/a/a/a/b/e;
.super Lcom/a/a/a/a/b/a;


# direct methods
.method public static a(Ljava/lang/String;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lcom/a/a/a/a/b/f;->a()Lcom/a/a/a/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/a/a/b/f;->e()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    :try_start_8
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_d} :catch_25
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_31

    invoke-static {}, Lcom/a/a/a/a/b/f;->a()Lcom/a/a/a/a/b/f;

    invoke-static {}, Lcom/a/a/a/a/b/f;->c()Lorg/apache/http/message/HeaderGroup;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/http/message/HeaderGroup;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setHeaders([Lorg/apache/http/Header;)V

    new-instance v2, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v2}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    :try_start_20
    invoke-interface {v0, v1, p1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_23} :catch_3d

    move-result-object v0

    return-object v0

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "HttpClient IllegalArgumentException.."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "HttpClient RuntimeException.."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_3d
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "HttpClient RuntimeException.."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance v0, Lcom/a/a/a/a/b/d;

    invoke-direct {v0}, Lcom/a/a/a/a/b/d;-><init>()V

    invoke-static {p0, v0}, Lcom/a/a/a/a/b/e;->a(Ljava/lang/String;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.class final Lcom/mobfox/video/sdk/cp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    const/16 v7, 0x3a98

    const/4 v6, 0x0

    const/4 v5, 0x3

    invoke-static {v6}, Lcom/mobfox/video/sdk/co;->a(Z)V

    :goto_7
    invoke-static {}, Lcom/mobfox/video/sdk/co;->b()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-static {v6}, Lcom/mobfox/video/sdk/co;->a(Z)V

    invoke-static {}, Lcom/mobfox/video/sdk/co;->h()V

    invoke-static {}, Lcom/mobfox/video/sdk/co;->i()V

    return-void

    :cond_17
    invoke-static {}, Lcom/mobfox/video/sdk/co;->d()Lcom/mobfox/video/sdk/cm;

    move-result-object v0

    const-string v1, "MOBFOX"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_57

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending tracking :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/mobfox/video/sdk/cm;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/mobfox/video/sdk/cm;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Events left:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/mobfox/video/sdk/co;->e()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    if-eqz v0, :cond_bc

    :try_start_59
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lcom/mobfox/video/sdk/cm;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/net/MalformedURLException; {:try_start_59 .. :try_end_60} :catch_fa

    const-string v2, "MOBFOX"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6f

    const-string v2, "MOBFOX"

    const-string v3, "Sending conversion Request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    const-string v2, "MOBFOX"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8d

    const-string v2, "MOBFOX"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Perform tracking HTTP Get Url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/mobfox/video/sdk/cm;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8d
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v3

    invoke-static {v3, v7}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_a9
    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_11a

    invoke-static {v0}, Lcom/mobfox/video/sdk/co;->b(Lcom/mobfox/video/sdk/cm;)V
    :try_end_bc
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_bc} :catch_12b

    :cond_bc
    :goto_bc
    invoke-static {}, Lcom/mobfox/video/sdk/co;->c()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-static {}, Lcom/mobfox/video/sdk/co;->b()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_c8
    invoke-static {}, Lcom/mobfox/video/sdk/co;->b()Z

    move-result v0

    if-nez v0, :cond_130

    invoke-static {}, Lcom/mobfox/video/sdk/co;->f()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_130

    const-wide/16 v0, 0x7530

    :try_start_da
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_136

    :goto_dd
    invoke-static {}, Lcom/mobfox/video/sdk/co;->g()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_e2
    invoke-static {}, Lcom/mobfox/video/sdk/co;->e()Ljava/util/Queue;

    move-result-object v0

    invoke-static {}, Lcom/mobfox/video/sdk/co;->f()Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/mobfox/video/sdk/co;->f()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    monitor-exit v1
    :try_end_f5
    .catchall {:try_start_e2 .. :try_end_f5} :catchall_f7

    goto/16 :goto_7

    :catchall_f7
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_fa
    move-exception v1

    const-string v1, "MOBFOX"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_bc

    const-string v1, "MOBFOX"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wrong tracking url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/mobfox/video/sdk/cm;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bc

    :cond_11a
    :try_start_11a
    const-string v1, "MOBFOX"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_bc

    const-string v1, "MOBFOX"

    const-string v2, "Tracking OK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12a
    .catch Ljava/lang/Throwable; {:try_start_11a .. :try_end_12a} :catch_12b

    goto :goto_bc

    :catch_12b
    move-exception v1

    invoke-static {v0}, Lcom/mobfox/video/sdk/co;->b(Lcom/mobfox/video/sdk/cm;)V

    goto :goto_bc

    :cond_130
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mobfox/video/sdk/co;->a(Z)V

    goto/16 :goto_7

    :catch_136
    move-exception v0

    goto :goto_dd
.end method

.class LBy;
.super Ljava/lang/Object;
.source "XmlHttpRequestRelay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic a:LBw;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(LBw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 477
    iput-object p1, p0, LBy;->a:LBw;

    iput-object p2, p0, LBy;->a:Ljava/lang/String;

    iput-object p3, p0, LBy;->b:Ljava/lang/String;

    iput-object p4, p0, LBy;->c:Ljava/lang/String;

    iput-object p5, p0, LBy;->d:Ljava/lang/String;

    iput p6, p0, LBy;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 480
    const/4 v6, 0x0

    .line 482
    :try_start_1
    iget-object v0, p0, LBy;->a:LBw;

    iget-object v1, p0, LBy;->a:LBw;

    invoke-static {v1}, LBw;->a(LBw;)LBE;

    move-result-object v1

    iget-object v2, p0, LBy;->a:Ljava/lang/String;

    iget-object v3, p0, LBy;->b:Ljava/lang/String;

    iget-object v4, p0, LBy;->c:Ljava/lang/String;

    iget-object v5, p0, LBy;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, LBw;->a(LBw;LBE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 484
    iget-object v1, p0, LBy;->a:LBw;

    invoke-static {v1}, LBw;->a(LBw;)V

    .line 486
    monitor-enter p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_2ed
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1b} :catch_d9
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1b} :catch_156
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1b} :catch_19b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1b} :catch_1e0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1b} :catch_225
    .catch LJi; {:try_start_1 .. :try_end_1b} :catch_26a
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1b} :catch_2af

    .line 487
    :try_start_1b
    iget-object v1, p0, LBy;->a:LBw;

    invoke-static {v1}, LBw;->a(LBw;)LBE;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, LBE;->a(I)LBE;

    move-result-object v1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LBE;->a(Ljava/lang/String;)LBE;

    move-result-object v1

    sget-object v2, LBD;->c:LBD;

    invoke-virtual {v1, v2}, LBE;->a(LBD;)LBE;

    .line 490
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1b .. :try_end_3f} :catchall_d6

    .line 492
    :try_start_3f
    const-string v1, "XmlHttpRequestRelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP Request status ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LBy;->a:LBw;

    invoke-static {v3}, LBw;->a(LBw;)LBE;

    move-result-object v3

    invoke-virtual {v3}, LBE;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LBy;->a:LBw;

    invoke-static {v3}, LBw;->a(LBw;)LBE;

    move-result-object v3

    invoke-virtual {v3}, LBE;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LBy;->a:LBw;

    invoke-static {v3}, LBw;->a(LBw;)LBE;

    move-result-object v3

    invoke-virtual {v3}, LBE;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LZA;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v1

    .line 496
    iget-object v2, p0, LBy;->a:LBw;

    const-string v3, ""

    invoke-static {v1}, LBw;->a([Lorg/apache/http/Header;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, LBw;->a(LBw;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-static {}, LBw;->b()LBF;

    move-result-object v2

    invoke-virtual {v2, v1}, LBF;->a([Lorg/apache/http/Header;)V

    .line 499
    iget-object v1, p0, LBy;->a:LBw;

    invoke-static {v1}, LBw;->a(LBw;)LBE;

    move-result-object v1

    invoke-virtual {v1}, LBE;->b()I

    move-result v1

    invoke-static {v1}, LBw;->a(I)Z

    move-result v1

    if-eqz v1, :cond_11e

    .line 501
    iget-object v0, p0, LBy;->a:LBw;

    iget-object v1, p0, LBy;->a:LBw;

    invoke-static {v1}, LBw;->a(LBw;)LBE;

    move-result-object v1

    invoke-virtual {v1}, LBE;->b()I

    move-result v1

    invoke-static {v0, v1}, LBw;->a(LBw;I)V
    :try_end_be
    .catchall {:try_start_3f .. :try_end_be} :catchall_2ed
    .catch Ljava/net/SocketException; {:try_start_3f .. :try_end_be} :catch_d9
    .catch Ljavax/net/ssl/SSLException; {:try_start_3f .. :try_end_be} :catch_156
    .catch Ljava/io/InterruptedIOException; {:try_start_3f .. :try_end_be} :catch_19b
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_be} :catch_1e0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_3f .. :try_end_be} :catch_225
    .catch LJi; {:try_start_3f .. :try_end_be} :catch_26a
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_be} :catch_2af

    .line 537
    if-eqz v6, :cond_c3

    .line 539
    :try_start_c0
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_306

    .line 547
    :cond_c3
    :goto_c3
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->a()V

    .line 548
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    .line 550
    :goto_d5
    return-void

    .line 490
    :catchall_d6
    move-exception v0

    :try_start_d7
    monitor-exit p0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    :try_start_d8
    throw v0
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_2ed
    .catch Ljava/net/SocketException; {:try_start_d8 .. :try_end_d9} :catch_d9
    .catch Ljavax/net/ssl/SSLException; {:try_start_d8 .. :try_end_d9} :catch_156
    .catch Ljava/io/InterruptedIOException; {:try_start_d8 .. :try_end_d9} :catch_19b
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_d9} :catch_1e0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_d8 .. :try_end_d9} :catch_225
    .catch LJi; {:try_start_d8 .. :try_end_d9} :catch_26a
    .catch Ljava/lang/InterruptedException; {:try_start_d8 .. :try_end_d9} :catch_2af

    .line 512
    :catch_d9
    move-exception v0

    move-object v1, v6

    .line 513
    :goto_db
    :try_start_db
    const-string v2, "XmlHttpRequestRelay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure to send request ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, LBy;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v0, p0, LBy;->a:LBw;

    const/16 v2, 0x1f7

    invoke-static {v0, v2}, LBw;->a(LBw;I)V
    :try_end_106
    .catchall {:try_start_db .. :try_end_106} :catchall_322

    .line 537
    if-eqz v1, :cond_10b

    .line 539
    :try_start_108
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_108 .. :try_end_10b} :catch_30c

    .line 547
    :cond_10b
    :goto_10b
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->a()V

    .line 548
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto :goto_d5

    .line 505
    :cond_11e
    :try_start_11e
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 506
    if-eqz v0, :cond_33f

    .line 507
    iget-object v1, p0, LBy;->a:LBw;

    invoke-static {v1, v0}, LBw;->a(LBw;Lorg/apache/http/HttpEntity;)Ljava/io/InputStreamReader;
    :try_end_129
    .catchall {:try_start_11e .. :try_end_129} :catchall_2ed
    .catch Ljava/net/SocketException; {:try_start_11e .. :try_end_129} :catch_d9
    .catch Ljavax/net/ssl/SSLException; {:try_start_11e .. :try_end_129} :catch_156
    .catch Ljava/io/InterruptedIOException; {:try_start_11e .. :try_end_129} :catch_19b
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_129} :catch_1e0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_11e .. :try_end_129} :catch_225
    .catch LJi; {:try_start_11e .. :try_end_129} :catch_26a
    .catch Ljava/lang/InterruptedException; {:try_start_11e .. :try_end_129} :catch_2af

    move-result-object v1

    .line 508
    :try_start_12a
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0, v1}, LBw;->a(LBw;Ljava/io/InputStreamReader;)V

    .line 511
    :goto_12f
    iget-object v0, p0, LBy;->a:LBw;

    iget-object v2, p0, LBy;->a:LBw;

    invoke-static {v2}, LBw;->a(LBw;)LBE;

    move-result-object v2

    invoke-virtual {v2}, LBE;->b()I

    move-result v2

    invoke-static {v0, v2}, LBw;->a(LBw;I)V
    :try_end_13e
    .catchall {:try_start_12a .. :try_end_13e} :catchall_322
    .catch Ljava/net/SocketException; {:try_start_12a .. :try_end_13e} :catch_33c
    .catch Ljavax/net/ssl/SSLException; {:try_start_12a .. :try_end_13e} :catch_338
    .catch Ljava/io/InterruptedIOException; {:try_start_12a .. :try_end_13e} :catch_334
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_13e} :catch_330
    .catch Landroid/accounts/AuthenticatorException; {:try_start_12a .. :try_end_13e} :catch_32c
    .catch LJi; {:try_start_12a .. :try_end_13e} :catch_328
    .catch Ljava/lang/InterruptedException; {:try_start_12a .. :try_end_13e} :catch_325

    .line 537
    if-eqz v1, :cond_143

    .line 539
    :try_start_140
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_143} :catch_309

    .line 547
    :cond_143
    :goto_143
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->a()V

    .line 548
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto :goto_d5

    .line 515
    :catch_156
    move-exception v0

    .line 517
    :goto_157
    :try_start_157
    const-string v1, "XmlHttpRequestRelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to send request ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, LBy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v0, p0, LBy;->a:LBw;

    const/16 v1, 0x1f7

    invoke-static {v0, v1}, LBw;->a(LBw;I)V
    :try_end_182
    .catchall {:try_start_157 .. :try_end_182} :catchall_2ed

    .line 537
    if-eqz v6, :cond_187

    .line 539
    :try_start_184
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_30f

    .line 547
    :cond_187
    :goto_187
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->a()V

    .line 548
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_d5

    .line 519
    :catch_19b
    move-exception v0

    .line 520
    :goto_19c
    :try_start_19c
    const-string v1, "XmlHttpRequestRelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to send request ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, LBy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iget-object v0, p0, LBy;->a:LBw;

    const/16 v1, 0x1f7

    invoke-static {v0, v1}, LBw;->a(LBw;I)V
    :try_end_1c7
    .catchall {:try_start_19c .. :try_end_1c7} :catchall_2ed

    .line 537
    if-eqz v6, :cond_1cc

    .line 539
    :try_start_1c9
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1c9 .. :try_end_1cc} :catch_312

    .line 547
    :cond_1cc
    :goto_1cc
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->a()V

    .line 548
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_d5

    .line 522
    :catch_1e0
    move-exception v0

    .line 523
    :goto_1e1
    :try_start_1e1
    const-string v1, "XmlHttpRequestRelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to send request ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, LBy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, LBy;->a:LBw;

    const/16 v1, 0x1f7

    invoke-static {v0, v1}, LBw;->a(LBw;I)V
    :try_end_20c
    .catchall {:try_start_1e1 .. :try_end_20c} :catchall_2ed

    .line 537
    if-eqz v6, :cond_211

    .line 539
    :try_start_20e
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_211
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_211} :catch_315

    .line 547
    :cond_211
    :goto_211
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->a()V

    .line 548
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_d5

    .line 527
    :catch_225
    move-exception v0

    .line 528
    :goto_226
    :try_start_226
    const-string v1, "XmlHttpRequestRelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to send request ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, LBy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, LBy;->a:LBw;

    const/16 v1, 0x193

    invoke-static {v0, v1}, LBw;->a(LBw;I)V
    :try_end_251
    .catchall {:try_start_226 .. :try_end_251} :catchall_2ed

    .line 537
    if-eqz v6, :cond_256

    .line 539
    :try_start_253
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_256
    .catch Ljava/io/IOException; {:try_start_253 .. :try_end_256} :catch_318

    .line 547
    :cond_256
    :goto_256
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->a()V

    .line 548
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_d5

    .line 530
    :catch_26a
    move-exception v0

    .line 531
    :goto_26b
    :try_start_26b
    const-string v1, "XmlHttpRequestRelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to send request ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, LBy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, LBy;->a:LBw;

    const/16 v1, 0x193

    invoke-static {v0, v1}, LBw;->a(LBw;I)V
    :try_end_296
    .catchall {:try_start_26b .. :try_end_296} :catchall_2ed

    .line 537
    if-eqz v6, :cond_29b

    .line 539
    :try_start_298
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_29b
    .catch Ljava/io/IOException; {:try_start_298 .. :try_end_29b} :catch_31b

    .line 547
    :cond_29b
    :goto_29b
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->a()V

    .line 548
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_d5

    .line 533
    :catch_2af
    move-exception v0

    .line 535
    :goto_2b0
    :try_start_2b0
    const-string v1, "XmlHttpRequestRelay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread interrupted ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, LBy;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LZA;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d4
    .catchall {:try_start_2b0 .. :try_end_2d4} :catchall_2ed

    .line 537
    if-eqz v6, :cond_2d9

    .line 539
    :try_start_2d6
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2d9
    .catch Ljava/io/IOException; {:try_start_2d6 .. :try_end_2d9} :catch_31e

    .line 547
    :cond_2d9
    :goto_2d9
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->a()V

    .line 548
    iget-object v0, p0, LBy;->a:LBw;

    invoke-static {v0}, LBw;->a(LBw;)LIL;

    move-result-object v0

    invoke-interface {v0}, LIL;->b()V

    goto/16 :goto_d5

    .line 537
    :catchall_2ed
    move-exception v0

    :goto_2ee
    if-eqz v6, :cond_2f3

    .line 539
    :try_start_2f0
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_2f3
    .catch Ljava/io/IOException; {:try_start_2f0 .. :try_end_2f3} :catch_320

    .line 547
    :cond_2f3
    :goto_2f3
    iget-object v1, p0, LBy;->a:LBw;

    invoke-static {v1}, LBw;->a(LBw;)LIL;

    move-result-object v1

    invoke-interface {v1}, LIL;->a()V

    .line 548
    iget-object v1, p0, LBy;->a:LBw;

    invoke-static {v1}, LBw;->a(LBw;)LIL;

    move-result-object v1

    invoke-interface {v1}, LIL;->b()V

    throw v0

    .line 540
    :catch_306
    move-exception v0

    goto/16 :goto_c3

    :catch_309
    move-exception v0

    goto/16 :goto_143

    :catch_30c
    move-exception v0

    goto/16 :goto_10b

    :catch_30f
    move-exception v0

    goto/16 :goto_187

    :catch_312
    move-exception v0

    goto/16 :goto_1cc

    :catch_315
    move-exception v0

    goto/16 :goto_211

    :catch_318
    move-exception v0

    goto/16 :goto_256

    :catch_31b
    move-exception v0

    goto/16 :goto_29b

    :catch_31e
    move-exception v0

    goto :goto_2d9

    :catch_320
    move-exception v1

    goto :goto_2f3

    .line 537
    :catchall_322
    move-exception v0

    move-object v6, v1

    goto :goto_2ee

    .line 533
    :catch_325
    move-exception v0

    move-object v6, v1

    goto :goto_2b0

    .line 530
    :catch_328
    move-exception v0

    move-object v6, v1

    goto/16 :goto_26b

    .line 527
    :catch_32c
    move-exception v0

    move-object v6, v1

    goto/16 :goto_226

    .line 522
    :catch_330
    move-exception v0

    move-object v6, v1

    goto/16 :goto_1e1

    .line 519
    :catch_334
    move-exception v0

    move-object v6, v1

    goto/16 :goto_19c

    .line 515
    :catch_338
    move-exception v0

    move-object v6, v1

    goto/16 :goto_157

    .line 512
    :catch_33c
    move-exception v0

    goto/16 :goto_db

    :cond_33f
    move-object v1, v6

    goto/16 :goto_12f
.end method

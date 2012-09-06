.class final Lcom/google/android/apps/analytics/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/apps/analytics/s;

.field private final b:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/analytics/s;[Lcom/google/android/apps/analytics/m;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/t;->b:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->b:Ljava/util/LinkedList;

    invoke-static {v0, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/apps/analytics/m;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/m;

    return-object v0
.end method

.method public final run()V
    .registers 16

    const/4 v14, 0x0

    const/16 v13, 0x2000

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0, p0}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;Lcom/google/android/apps/analytics/t;)Lcom/google/android/apps/analytics/t;

    move v10, v7

    :goto_a
    const/4 v0, 0x5

    if-ge v10, v0, :cond_139

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_139

    const-wide/16 v0, 0x0

    :try_start_17
    iget-object v2, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v2}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;)I

    move-result v2

    const/16 v3, 0x1f4

    if-eq v2, v3, :cond_2b

    iget-object v2, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v2}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;)I

    move-result v2

    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_12a

    :cond_2b
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v2}, Lcom/google/android/apps/analytics/s;->b(Lcom/google/android/apps/analytics/s;)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v2}, Lcom/google/android/apps/analytics/s;->b(Lcom/google/android/apps/analytics/s;)J

    move-result-wide v2

    const-wide/16 v4, 0x100

    cmp-long v2, v2, v4

    if-gez v2, :cond_49

    iget-object v2, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v2}, Lcom/google/android/apps/analytics/s;->c(Lcom/google/android/apps/analytics/s;)J

    :cond_49
    :goto_49
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->e(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/r;->b()Z

    move-result v11

    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/i;->e()Z

    move-result v0

    if-eqz v0, :cond_6c

    if-eqz v11, :cond_6c

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "dispatching hits in dry run mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    move v9, v7

    :goto_6d
    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v9, v0, :cond_23d

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->h(Lcom/google/android/apps/analytics/s;)I

    move-result v0

    if-ge v9, v0, :cond_23d

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/m;

    iget-object v0, v0, Lcom/google/android/apps/analytics/m;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/analytics/ac;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    const/16 v0, 0x3f

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_151

    move-object v0, v3

    :cond_98
    const-string v1, ""

    move-object v2, v1

    move-object v1, v0

    :goto_9c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x7f4

    if-ge v0, v4, :cond_16d

    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v1, "GET"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    :goto_ac
    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->e(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/r;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/r;->a(Lcom/google/android/apps/analytics/r;)Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v1}, Lcom/google/android/apps/analytics/s;->e(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/r;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/analytics/r;->a(Lcom/google/android/apps/analytics/r;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    const/16 v3, 0x50

    if-eq v1, v3, :cond_f1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v1}, Lcom/google/android/apps/analytics/s;->e(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/r;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/analytics/r;->a(Lcom/google/android/apps/analytics/r;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f1
    const-string v1, "Host"

    invoke-interface {v8, v1, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v1}, Lcom/google/android/apps/analytics/s;->i(Lcom/google/android/apps/analytics/s;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/i;->e()Z

    move-result v0

    if-eqz v0, :cond_1bc

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v8}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    array-length v4, v3

    move v0, v7

    :goto_116
    if-ge v0, v4, :cond_1a2

    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_116

    :cond_12a
    iget-object v2, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v2}, Lcom/google/android/apps/analytics/s;->d(Lcom/google/android/apps/analytics/s;)J
    :try_end_12f
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_12f} :catch_131
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_12f} :catch_1e3
    .catch Lorg/apache/http/HttpException; {:try_start_17 .. :try_end_12f} :catch_233

    goto/16 :goto_49

    :catch_131
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Couldn\'t sleep."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_139
    :goto_139
    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->f(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/x;->b()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->g(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/analytics/g;->a()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0, v14}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;Lcom/google/android/apps/analytics/t;)Lcom/google/android/apps/analytics/t;

    return-void

    :cond_151
    if-lez v1, :cond_16a

    const/4 v0, 0x0

    :try_start_154
    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_158
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ge v1, v2, :cond_98

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_9c

    :cond_16a
    const-string v0, ""

    goto :goto_158

    :cond_16d
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v3, "POST"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "/p"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Length"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v3, "text/plain"

    invoke-interface {v0, v1, v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v8, v0

    goto/16 :goto_ac

    :cond_1a2
    invoke-interface {v8}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "GoogleAnalyticsTracker"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1bc
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v13, :cond_1d7

    const-string v0, "GoogleAnalyticsTracker"

    const-string v1, "Hit too long (> 8192 bytes)--not sent"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->j(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/u;->b()V

    :goto_1d2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_6d

    :cond_1d7
    if-eqz v11, :cond_1ed

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->j(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/u;->b()V
    :try_end_1e2
    .catch Ljava/lang/InterruptedException; {:try_start_154 .. :try_end_1e2} :catch_131
    .catch Ljava/io/IOException; {:try_start_154 .. :try_end_1e2} :catch_1e3
    .catch Lorg/apache/http/HttpException; {:try_start_154 .. :try_end_1e2} :catch_233

    goto :goto_1d2

    :catch_1e3
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Problem with socket or streams."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_139

    :cond_1ed
    :try_start_1ed
    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->f(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/x;

    move-result-object v12

    iget-object v0, v12, Lcom/google/android/apps/analytics/x;->a:Lorg/apache/http/impl/DefaultHttpClientConnection;

    if-eqz v0, :cond_1ff

    iget-object v0, v12, Lcom/google/android/apps/analytics/x;->a:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_228

    :cond_1ff
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iget-object v0, v12, Lcom/google/android/apps/analytics/x;->f:Lorg/apache/http/conn/scheme/SocketFactory;

    invoke-interface {v0}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    iget-object v0, v12, Lcom/google/android/apps/analytics/x;->f:Lorg/apache/http/conn/scheme/SocketFactory;

    iget-object v2, v12, Lcom/google/android/apps/analytics/x;->e:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v12, Lcom/google/android/apps/analytics/x;->e:Lorg/apache/http/HttpHost;

    invoke-virtual {v3}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v6}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    iget-object v1, v12, Lcom/google/android/apps/analytics/x;->a:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v1, v0, v6}, Lorg/apache/http/impl/DefaultHttpClientConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    :cond_228
    iget-object v0, v12, Lcom/google/android/apps/analytics/x;->a:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, v8}, Lorg/apache/http/impl/DefaultHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    iget-object v0, v12, Lcom/google/android/apps/analytics/x;->a:Lorg/apache/http/impl/DefaultHttpClientConnection;

    invoke-virtual {v0, v8}, Lorg/apache/http/impl/DefaultHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    :try_end_232
    .catch Ljava/lang/InterruptedException; {:try_start_1ed .. :try_end_232} :catch_131
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_232} :catch_1e3
    .catch Lorg/apache/http/HttpException; {:try_start_1ed .. :try_end_232} :catch_233

    goto :goto_1d2

    :catch_233
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Problem with http streams."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_139

    :cond_23d
    if-nez v11, :cond_248

    :try_start_23f
    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->f(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/x;->a()V
    :try_end_248
    .catch Ljava/lang/InterruptedException; {:try_start_23f .. :try_end_248} :catch_131
    .catch Ljava/io/IOException; {:try_start_23f .. :try_end_248} :catch_1e3
    .catch Lorg/apache/http/HttpException; {:try_start_23f .. :try_end_248} :catch_233

    :cond_248
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_a
.end method

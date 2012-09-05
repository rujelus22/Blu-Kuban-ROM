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
    .registers 13

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0, p0}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;Lcom/google/android/apps/analytics/t;)Lcom/google/android/apps/analytics/t;

    move v6, v1

    :goto_7
    const/4 v0, 0x5

    if-ge v6, v0, :cond_13a

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_13a

    const-wide/16 v2, 0x0

    :try_start_14
    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;)I

    move-result v0

    const/16 v4, 0x1f4

    if-eq v0, v4, :cond_28

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;)I

    move-result v0

    const/16 v4, 0x1f7

    if-ne v0, v4, :cond_129

    :cond_28
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->b(Lcom/google/android/apps/analytics/s;)J

    move-result-wide v4

    long-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->b(Lcom/google/android/apps/analytics/s;)J

    move-result-wide v4

    const-wide/16 v7, 0x100

    cmp-long v0, v4, v7

    if-gez v0, :cond_48

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    const-wide/16 v4, 0x2

    invoke-static {v0, v4, v5}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;J)J

    :cond_48
    :goto_48
    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->c(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/r;->a()Z

    move-result v7

    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/i;->d()Z

    move-result v0

    if-eqz v0, :cond_6b

    if-eqz v7, :cond_6b

    const-string v0, "GoogleAnalyticsTracker"

    const-string v2, "dispatching hits in dry run mode"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6b
    move v5, v1

    :goto_6c
    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge v5, v0, :cond_209

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->f(Lcom/google/android/apps/analytics/s;)I

    move-result v0

    if-ge v5, v0, :cond_209

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/analytics/m;

    iget-object v0, v0, Lcom/google/android/apps/analytics/m;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/apps/analytics/ac;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    const/16 v0, 0x3f

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_153

    move-object v0, v4

    :cond_97
    const-string v2, ""

    move-object v3, v2

    move-object v2, v0

    :goto_9b
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v8, 0x7f4

    if-ge v0, v8, :cond_16f

    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v2, "GET"

    invoke-direct {v0, v2, v4}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    :goto_ab
    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->c(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/r;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/analytics/r;->a(Lcom/google/android/apps/analytics/r;)Lorg/apache/http/HttpHost;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v4}, Lcom/google/android/apps/analytics/s;->c(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/r;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/analytics/r;->a(Lcom/google/android/apps/analytics/r;)Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    const/16 v8, 0x50

    if-eq v4, v8, :cond_f0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v4}, Lcom/google/android/apps/analytics/s;->c(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/r;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/apps/analytics/r;->a(Lcom/google/android/apps/analytics/r;)Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f0
    const-string v4, "Host"

    invoke-interface {v2, v4, v0}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "User-Agent"

    iget-object v4, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v4}, Lcom/google/android/apps/analytics/s;->g(Lcom/google/android/apps/analytics/s;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/apps/analytics/i;->a()Lcom/google/android/apps/analytics/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1c2

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v8

    array-length v9, v8

    move v0, v1

    :goto_115
    if-ge v0, v9, :cond_1a8

    aget-object v10, v8, v0

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_115

    :cond_129
    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    const-wide/16 v4, 0x2

    invoke-static {v0, v4, v5}, Lcom/google/android/apps/analytics/s;->b(Lcom/google/android/apps/analytics/s;J)J
    :try_end_130
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_130} :catch_132
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_130} :catch_1eb
    .catch Lorg/apache/http/HttpException; {:try_start_14 .. :try_end_130} :catch_1ff

    goto/16 :goto_48

    :catch_132
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Couldn\'t sleep."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13a
    :goto_13a
    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->d(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/x;->b()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->e(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/analytics/g;->a()V

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;Lcom/google/android/apps/analytics/t;)Lcom/google/android/apps/analytics/t;

    return-void

    :cond_153
    if-lez v2, :cond_16c

    const/4 v0, 0x0

    :try_start_156
    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_15a
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    if-ge v2, v3, :cond_97

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    goto/16 :goto_9b

    :cond_16c
    const-string v0, ""

    goto :goto_15a

    :cond_16f
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    const-string v4, "POST"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/p"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v4, v2}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Length"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v4, "text/plain"

    invoke-interface {v0, v2, v4}, Lorg/apache/http/HttpEntityEnclosingRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, v3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v2, v0

    goto/16 :goto_ab

    :cond_1a8
    invoke-interface {v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "GoogleAnalyticsTracker"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x2000

    if-le v0, v3, :cond_1df

    const-string v0, "GoogleAnalyticsTracker"

    const-string v2, "Hit too long (> 8192 bytes)--not sent"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->h(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/u;->a()V

    :goto_1da
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_6c

    :cond_1df
    if-eqz v7, :cond_1f5

    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->h(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/u;->a()V
    :try_end_1ea
    .catch Ljava/lang/InterruptedException; {:try_start_156 .. :try_end_1ea} :catch_132
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_1ea} :catch_1eb
    .catch Lorg/apache/http/HttpException; {:try_start_156 .. :try_end_1ea} :catch_1ff

    goto :goto_1da

    :catch_1eb
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Problem with socket or streams."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13a

    :cond_1f5
    :try_start_1f5
    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->d(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/x;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/analytics/x;->a(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    :try_end_1fe
    .catch Ljava/lang/InterruptedException; {:try_start_1f5 .. :try_end_1fe} :catch_132
    .catch Ljava/io/IOException; {:try_start_1f5 .. :try_end_1fe} :catch_1eb
    .catch Lorg/apache/http/HttpException; {:try_start_1f5 .. :try_end_1fe} :catch_1ff

    goto :goto_1da

    :catch_1ff
    move-exception v0

    const-string v1, "GoogleAnalyticsTracker"

    const-string v2, "Problem with http streams."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13a

    :cond_209
    if-nez v7, :cond_214

    :try_start_20b
    iget-object v0, p0, Lcom/google/android/apps/analytics/t;->a:Lcom/google/android/apps/analytics/s;

    invoke-static {v0}, Lcom/google/android/apps/analytics/s;->d(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/x;->a()V
    :try_end_214
    .catch Ljava/lang/InterruptedException; {:try_start_20b .. :try_end_214} :catch_132
    .catch Ljava/io/IOException; {:try_start_20b .. :try_end_214} :catch_1eb
    .catch Lorg/apache/http/HttpException; {:try_start_20b .. :try_end_214} :catch_1ff

    :cond_214
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_7
.end method

.class public Lcom/google/android/apps/books/util/AndroidHttpClient;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .registers 17
    .parameter "request"
    .parameter "logAuthToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v11, "curl "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    .local v0, arr$:[Lorg/apache/http/Header;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_10
    if-ge v6, v7, :cond_47

    aget-object v5, v0, v6

    .line 48
    .local v5, header:Lorg/apache/http/Header;
    if-nez p1, :cond_31

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Authorization"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2e

    invoke-interface {v5}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "Cookie"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_31

    .line 47
    :cond_2e
    :goto_2e
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 53
    :cond_31
    const-string v11, "--header \""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v11, "\" "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e

    .line 58
    .end local v5           #header:Lorg/apache/http/Header;
    :cond_47
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    .line 63
    .local v10, uri:Ljava/net/URI;
    instance-of v11, p0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v11, :cond_60

    move-object v11, p0

    .line 64
    check-cast v11, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v11}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v8

    .line 65
    .local v8, original:Lorg/apache/http/HttpRequest;
    instance-of v11, v8, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v11, :cond_60

    .line 66
    check-cast v8, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local v8           #original:Lorg/apache/http/HttpRequest;
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v10

    .line 70
    :cond_60
    const-string v11, "\""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    const-string v11, "\""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    instance-of v11, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v11, :cond_a5

    move-object v3, p0

    .line 75
    check-cast v3, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 77
    .local v3, entityRequest:Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v3}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 78
    .local v2, entity:Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_a5

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v11

    if-eqz v11, :cond_a5

    .line 79
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v11

    const-wide/16 v13, 0x400

    cmp-long v11, v11, v13

    if-gez v11, :cond_aa

    .line 80
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    .local v9, stream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v2, v9}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 82
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, entityString:Ljava/lang/String;
    const-string v11, " --data-ascii \""

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    .end local v3           #entityRequest:Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v4           #entityString:Ljava/lang/String;
    .end local v9           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_a5
    :goto_a5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 89
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    .restart local v3       #entityRequest:Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_aa
    const-string v11, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a5
.end method

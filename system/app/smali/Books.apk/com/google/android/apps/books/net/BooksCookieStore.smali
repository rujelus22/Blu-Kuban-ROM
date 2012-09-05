.class public Lcom/google/android/apps/books/net/BooksCookieStore;
.super Lorg/apache/http/impl/client/BasicCookieStore;
.source "BooksCookieStore.java"


# instance fields
.field private final mSaveFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 2
    .parameter "saveFile"

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/apps/books/net/BooksCookieStore;->mSaveFile:Ljava/io/File;

    .line 43
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/BooksCookieStore;->load()V

    .line 44
    return-void
.end method

.method private createCookie(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    .registers 8
    .parameter "protoCookie"

    .prologue
    .line 251
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .local v0, cookie:Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasComment()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 254
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setComment(Ljava/lang/String;)V

    .line 257
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasCommentUrl()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 264
    :cond_20
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasExpiryDate()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 265
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getExpiryDate()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 266
    .local v1, date:Ljava/util/Date;
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    .line 269
    .end local v1           #date:Ljava/util/Date;
    :cond_32
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->hasDomain()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 270
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 273
    :cond_3f
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getPortsCount()I

    move-result v3

    .line 274
    .local v3, numPorts:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_44
    if-ge v2, v3, :cond_49

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 278
    :cond_49
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getIsSecure()Z

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setSecure(Z)V

    .line 279
    invoke-virtual {p1}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->getVersion()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setVersion(I)V

    .line 281
    return-object v0
.end method

.method private createProtoCookie(Lorg/apache/http/cookie/Cookie;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    .registers 12
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 190
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;->newBuilder()Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    move-result-object v1

    .line 192
    .local v1, builder:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, val:Ljava/lang/String;
    if-eqz v7, :cond_5c

    .line 194
    invoke-virtual {v1, v7}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setName(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 199
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 200
    if-eqz v7, :cond_16

    .line 201
    invoke-virtual {v1, v7}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setValue(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 204
    :cond_16
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getComment()Ljava/lang/String;

    move-result-object v7

    .line 205
    if-eqz v7, :cond_1f

    .line 206
    invoke-virtual {v1, v7}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setComment(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 209
    :cond_1f
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getCommentURL()Ljava/lang/String;

    move-result-object v7

    .line 210
    if-eqz v7, :cond_28

    .line 211
    invoke-virtual {v1, v7}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setCommentUrl(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 214
    :cond_28
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    .line 215
    .local v2, date:Ljava/util/Date;
    if-eqz v2, :cond_35

    .line 216
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setExpiryDate(J)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 219
    :cond_35
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    .line 220
    if-eqz v7, :cond_3e

    .line 221
    invoke-virtual {v1, v7}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setDomain(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 224
    :cond_3e
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 225
    if-eqz v7, :cond_47

    .line 226
    invoke-virtual {v1, v7}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setPath(Ljava/lang/String;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 229
    :cond_47
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPorts()[I

    move-result-object v6

    .line 230
    .local v6, ports:[I
    if-eqz v6, :cond_64

    .line 231
    move-object v0, v6

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_50
    if-ge v3, v4, :cond_64

    aget v5, v0, v3

    .line 232
    .local v5, port:I
    aget v8, v6, v5

    invoke-virtual {v1, v8}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->addPorts(I)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_50

    .line 196
    .end local v0           #arr$:[I
    .end local v2           #date:Ljava/util/Date;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #port:I
    .end local v6           #ports:[I
    :cond_5c
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Cookie name is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 236
    .restart local v2       #date:Ljava/util/Date;
    .restart local v6       #ports:[I
    :cond_64
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->isSecure()Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setIsSecure(Z)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 237
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getVersion()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;->setVersion(I)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    .line 239
    return-object v1
.end method

.method private saveIfChanged(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/cookie/Cookie;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, before:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .local p2, after:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 286
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/BooksCookieStore;->save()V

    .line 288
    :cond_9
    return-void
.end method


# virtual methods
.method public declared-synchronized addCookie(Lorg/apache/http/cookie/Cookie;)V
    .registers 5
    .parameter "cookie"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/BooksCookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .local v1, before:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-super {p0, p1}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/BooksCookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 62
    .local v0, after:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/books/net/BooksCookieStore;->saveIfChanged(Ljava/util/List;Ljava/util/List;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 63
    monitor-exit p0

    return-void

    .line 59
    .end local v0           #after:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v1           #before:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :catchall_16
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized addCookies([Lorg/apache/http/cookie/Cookie;)V
    .registers 9
    .parameter "cookies"

    .prologue
    .line 79
    monitor-enter p0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/BooksCookieStore;->getCookies()Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    .local v2, before:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    if-eqz p1, :cond_19

    .line 81
    move-object v1, p1

    .local v1, arr$:[Lorg/apache/http/cookie/Cookie;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_f
    if-ge v4, v5, :cond_19

    aget-object v3, v1, v4

    .line 82
    .local v3, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-super {p0, v3}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 85
    .end local v1           #arr$:[Lorg/apache/http/cookie/Cookie;
    .end local v3           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_19
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/BooksCookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, after:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-direct {p0, v2, v0}, Lcom/google/android/apps/books/net/BooksCookieStore;->saveIfChanged(Ljava/util/List;Ljava/util/List;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 87
    monitor-exit p0

    return-void

    .line 79
    .end local v0           #after:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v2           #before:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :catchall_22
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public declared-synchronized clear()V
    .registers 4

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/android/apps/books/net/BooksCookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    .local v1, before:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-super {p0}, Lorg/apache/http/impl/client/BasicCookieStore;->clear()V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/BooksCookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, after:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-direct {p0, v1, v0}, Lcom/google/android/apps/books/net/BooksCookieStore;->saveIfChanged(Ljava/util/List;Ljava/util/List;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 117
    monitor-exit p0

    return-void

    .line 113
    .end local v0           #after:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v1           #before:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    :catchall_16
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clearExpired(Ljava/util/Date;)Z
    .registers 3
    .parameter "date"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Lorg/apache/http/impl/client/BasicCookieStore;->clearExpired(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/BooksCookieStore;->save()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_f

    .line 102
    const/4 v0, 0x1

    .line 105
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 100
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized load()V
    .registers 12

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->newBuilder()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_50

    move-result-object v0

    .line 159
    .local v0, builder:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    :try_start_5
    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/google/android/apps/books/net/BooksCookieStore;->mSaveFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 160
    .local v7, stream:Ljava/io/FileInputStream;
    invoke-virtual {v0, v7}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    .line 161
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_50
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_12} :catch_2b
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_53

    .line 172
    .end local v7           #stream:Ljava/io/FileInputStream;
    :cond_12
    :goto_12
    :try_start_12
    invoke-virtual {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->build()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;

    move-result-object v6

    .line 173
    .local v6, store:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;
    invoke-virtual {v6}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->getCookiesCount()I

    move-result v5

    .line 174
    .local v5, numCookies:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1b
    if-ge v3, v5, :cond_78

    .line 175
    invoke-virtual {v6, v3}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->getCookies(I)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/google/android/apps/books/net/BooksCookieStore;->createCookie(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie;)Lorg/apache/http/impl/cookie/BasicClientCookie;

    move-result-object v1

    .line 176
    .local v1, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-super {p0, v1}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 162
    .end local v1           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v3           #i:I
    .end local v5           #numCookies:I
    .end local v6           #store:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;
    :catch_2b
    move-exception v2

    .line 163
    .local v2, fileNotFoundException:Ljava/io/FileNotFoundException;
    const-string v8, "BooksCookieStore"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 164
    const-string v8, "BooksCookieStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cookie store file not found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/apps/books/net/BooksCookieStore;->mSaveFile:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_12 .. :try_end_4f} :catchall_50

    goto :goto_12

    .line 157
    .end local v0           #builder:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    .end local v2           #fileNotFoundException:Ljava/io/FileNotFoundException;
    :catchall_50
    move-exception v8

    monitor-exit p0

    throw v8

    .line 166
    .restart local v0       #builder:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    :catch_53
    move-exception v4

    .line 167
    .local v4, ioException:Ljava/io/IOException;
    :try_start_54
    const-string v8, "BooksCookieStore"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 168
    const-string v8, "BooksCookieStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cookie store IO exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/apps/books/net/BooksCookieStore;->mSaveFile:Ljava/io/File;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_50

    goto :goto_12

    .line 178
    .end local v4           #ioException:Ljava/io/IOException;
    .restart local v3       #i:I
    .restart local v5       #numCookies:I
    .restart local v6       #store:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;
    :cond_78
    monitor-exit p0

    return-void
.end method

.method protected declared-synchronized save()V
    .registers 13

    .prologue
    .line 124
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/books/net/BooksCookieStore;->getCookies()Ljava/util/List;

    move-result-object v2

    .line 125
    .local v2, cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    invoke-static {}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->newBuilder()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;

    move-result-object v0

    .line 126
    .local v0, builder:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/cookie/Cookie;

    .line 127
    .local v1, cookie:Lorg/apache/http/cookie/Cookie;
    invoke-direct {p0, v1}, Lcom/google/android/apps/books/net/BooksCookieStore;->createProtoCookie(Lorg/apache/http/cookie/Cookie;)Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;

    move-result-object v6

    .line 128
    .local v6, protoCookie:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    invoke-virtual {v0, v6}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->addCookies(Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;)Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_d

    .line 124
    .end local v0           #builder:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    .end local v1           #cookie:Lorg/apache/http/cookie/Cookie;
    .end local v2           #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #protoCookie:Lcom/google/android/apps/books/net/proto/BooksCookies$Cookie$Builder;
    :catchall_21
    move-exception v9

    monitor-exit p0

    throw v9

    .line 130
    .restart local v0       #builder:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;
    .restart local v2       #cookies:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/cookie/Cookie;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_24
    :try_start_24
    invoke-virtual {v0}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore$Builder;->build()Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_21

    move-result-object v7

    .line 133
    .local v7, store:Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;
    :try_start_28
    new-instance v8, Ljava/io/FileOutputStream;

    iget-object v9, p0, Lcom/google/android/apps/books/net/BooksCookieStore;->mSaveFile:Ljava/io/File;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 134
    .local v8, stream:Ljava/io/FileOutputStream;
    invoke-virtual {v7, v8}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->writeTo(Ljava/io/OutputStream;)V

    .line 135
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 136
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 138
    const-string v9, "BooksCookieStore"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 139
    const-string v9, "BooksCookieStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cookie store file written: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/apps/books/net/BooksCookieStore;->mSaveFile:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v9, "BooksCookieStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "File had "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Lcom/google/android/apps/books/net/proto/BooksCookies$CookieStore;->getCookiesCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cookies"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_28 .. :try_end_7e} :catchall_21
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_7e} :catch_80
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_7e} :catch_a5

    .line 151
    .end local v8           #stream:Ljava/io/FileOutputStream;
    :cond_7e
    :goto_7e
    monitor-exit p0

    return-void

    .line 142
    :catch_80
    move-exception v3

    .line 143
    .local v3, fileNotFoundException:Ljava/io/FileNotFoundException;
    :try_start_81
    const-string v9, "BooksCookieStore"

    const/4 v10, 0x6

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 144
    const-string v9, "BooksCookieStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cookie store file not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/apps/books/net/BooksCookieStore;->mSaveFile:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 146
    .end local v3           #fileNotFoundException:Ljava/io/FileNotFoundException;
    :catch_a5
    move-exception v5

    .line 147
    .local v5, ioException:Ljava/io/IOException;
    const-string v9, "BooksCookieStore"

    const/4 v10, 0x6

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7e

    .line 148
    const-string v9, "BooksCookieStore"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cookie store IO exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/apps/books/net/BooksCookieStore;->mSaveFile:Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catchall {:try_start_81 .. :try_end_c9} :catchall_21

    goto :goto_7e
.end method

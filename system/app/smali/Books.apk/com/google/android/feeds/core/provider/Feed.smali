.class public Lcom/google/android/feeds/core/provider/Feed;
.super Ljava/lang/Object;
.source "Feed.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    return-void
.end method

.method public static getStatus(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;
    .registers 2
    .parameter "cursor"

    .prologue
    .line 112
    invoke-static {p0}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v0

    return-object v0
.end method

.method public static hasMore(Landroid/database/Cursor;)Z
    .registers 4
    .parameter "cursor"

    .prologue
    .line 213
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 214
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "com.google.android.feeds.cursor.extra.MORE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isLoaded(Landroid/database/Cursor;)Z
    .registers 4
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    .line 145
    if-eqz p0, :cond_c

    .line 146
    invoke-static {p0}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/database/Cursor;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v0

    .line 147
    .local v0, status:Lcom/google/android/feeds/core/provider/FeedStatus;
    sget-object v2, Lcom/google/android/feeds/core/provider/FeedStatus;->LOADED:Lcom/google/android/feeds/core/provider/FeedStatus;

    if-ne v0, v2, :cond_c

    const/4 v1, 0x1

    .line 149
    .end local v0           #status:Lcom/google/android/feeds/core/provider/FeedStatus;
    :cond_c
    return v1
.end method

.method public static throwError(Landroid/database/Cursor;)V
    .registers 8
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 262
    .local v3, extras:Landroid/os/Bundle;
    sget-object v5, Lcom/google/android/feeds/core/provider/FeedStatus;->ERROR:Lcom/google/android/feeds/core/provider/FeedStatus;

    invoke-static {v3}, Lcom/google/android/feeds/core/provider/FeedStatus;->readFrom(Landroid/os/Bundle;)Lcom/google/android/feeds/core/provider/FeedStatus;

    move-result-object v6

    if-ne v5, v6, :cond_4c

    .line 264
    :try_start_c
    const-string v5, "com.google.android.feeds.cursor.extra.ERROR_EXCEPTION_OBJECT"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 265
    .local v1, data:[B
    if-nez v1, :cond_21

    .line 266
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_1a} :catch_1a

    .line 280
    .end local v1           #data:[B
    :catch_1a
    move-exception v2

    .line 281
    .local v2, e:Ljava/lang/ClassNotFoundException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 268
    .end local v2           #e:Ljava/lang/ClassNotFoundException;
    .restart local v1       #data:[B
    :cond_21
    :try_start_21
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 269
    .local v0, bin:Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 270
    .local v4, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    .line 271
    .local v2, e:Ljava/lang/Throwable;
    instance-of v5, v2, Ljava/io/IOException;

    if-eqz v5, :cond_38

    .line 272
    check-cast v2, Ljava/io/IOException;

    .end local v2           #e:Ljava/lang/Throwable;
    throw v2

    .line 273
    .restart local v2       #e:Ljava/lang/Throwable;
    :cond_38
    instance-of v5, v2, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_3f

    .line 274
    check-cast v2, Ljava/lang/RuntimeException;

    .end local v2           #e:Ljava/lang/Throwable;
    throw v2

    .line 275
    .restart local v2       #e:Ljava/lang/Throwable;
    :cond_3f
    instance-of v5, v2, Ljava/lang/Error;

    if-eqz v5, :cond_46

    .line 276
    check-cast v2, Ljava/lang/Error;

    .end local v2           #e:Ljava/lang/Throwable;
    throw v2

    .line 278
    .restart local v2       #e:Ljava/lang/Throwable;
    :cond_46
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_4c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_4c} :catch_1a

    .line 284
    .end local v0           #bin:Ljava/io/ByteArrayInputStream;
    .end local v1           #data:[B
    .end local v2           #e:Ljava/lang/Throwable;
    .end local v4           #in:Ljava/io/ObjectInputStream;
    :cond_4c
    return-void
.end method

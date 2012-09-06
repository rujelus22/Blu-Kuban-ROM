.class public Lcom/google/android/feeds/FeedLoader;
.super Ljava/lang/Object;
.source "FeedLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feeds/FeedLoader$DocumentInfo;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    return-void
.end method

.method public static documentInfo()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 270
    new-instance v0, Lcom/google/android/feeds/FeedLoader$DocumentInfo;

    invoke-direct {v0}, Lcom/google/android/feeds/FeedLoader$DocumentInfo;-><init>()V

    return-object v0
.end method

.method public static documentInfo(I)Ljava/lang/Object;
    .registers 2
    .parameter "itemCount"

    .prologue
    .line 293
    new-instance v0, Lcom/google/android/feeds/FeedLoader$DocumentInfo;

    invoke-direct {v0, p0}, Lcom/google/android/feeds/FeedLoader$DocumentInfo;-><init>(I)V

    return-object v0
.end method

.method public static documentInfo(ILjava/lang/String;)Ljava/lang/Object;
    .registers 3
    .parameter "itemCount"
    .parameter "continuationToken"

    .prologue
    .line 315
    new-instance v0, Lcom/google/android/feeds/FeedLoader$DocumentInfo;

    invoke-direct {v0, p0, p1}, Lcom/google/android/feeds/FeedLoader$DocumentInfo;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static loadContinuedFeed(Ljava/net/ContentHandler;Landroid/net/Uri;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 241
    .line 242
    const/4 v0, 0x0

    move v1, v5

    .line 244
    :goto_3
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 245
    if-eqz v0, :cond_c

    .line 246
    invoke-virtual {v2, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 248
    :cond_c
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/feeds/FeedLoader;->loadDocument(Ljava/net/ContentHandler;Landroid/net/Uri;)Lcom/google/android/feeds/FeedLoader$DocumentInfo;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/google/android/feeds/FeedLoader$DocumentInfo;->continuationToken()Ljava/lang/String;

    move-result-object v2

    .line 251
    const-string v3, "com.google.feeds.cursor.extra.MORE"

    if-eqz v2, :cond_2e

    const/4 v4, 0x1

    :goto_1d
    invoke-virtual {p4, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    invoke-virtual {v0}, Lcom/google/android/feeds/FeedLoader$DocumentInfo;->itemCount()I

    move-result v0

    .line 254
    if-gez v0, :cond_30

    .line 255
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid document info: item count is unset or invalid"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    move v4, v5

    .line 251
    goto :goto_1d

    .line 257
    :cond_30
    add-int/2addr v0, v1

    .line 258
    if-ge v0, p3, :cond_35

    if-nez v2, :cond_36

    .line 259
    :cond_35
    return-void

    :cond_36
    move v1, v0

    move-object v0, v2

    goto :goto_3
.end method

.method private static loadDocument(Ljava/net/ContentHandler;Landroid/net/Uri;)Lcom/google/android/feeds/FeedLoader$DocumentInfo;
    .registers 8
    .parameter "handler"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, spec:Ljava/lang/String;
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 78
    .local v0, connection:Ljava/net/URLConnection;
    invoke-virtual {p0, v0}, Ljava/net/ContentHandler;->getContent(Ljava/net/URLConnection;)Ljava/lang/Object;

    move-result-object v1

    .line 79
    .local v1, content:Ljava/lang/Object;
    instance-of v5, v1, Lcom/google/android/feeds/FeedLoader$DocumentInfo;

    if-eqz v5, :cond_18

    .line 80
    check-cast v1, Lcom/google/android/feeds/FeedLoader$DocumentInfo;

    .end local v1           #content:Ljava/lang/Object;
    return-object v1

    .line 82
    .restart local v1       #content:Ljava/lang/Object;
    :cond_18
    const-string v2, "ContentHandler must return FeedLoader.documentInfo(...)"

    .line 83
    .local v2, message:Ljava/lang/String;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static loadFeed(Ljava/net/ContentHandler;Landroid/net/Uri;)V
    .registers 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {p0, p1}, Lcom/google/android/feeds/FeedLoader;->loadDocument(Ljava/net/ContentHandler;Landroid/net/Uri;)Lcom/google/android/feeds/FeedLoader$DocumentInfo;

    .line 101
    return-void
.end method

.method public static loadIndexedFeed(Ljava/net/ContentHandler;Landroid/net/Uri;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 137
    move v0, p3

    move v1, v5

    .line 142
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 143
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 144
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/feeds/FeedLoader;->loadDocument(Ljava/net/ContentHandler;Landroid/net/Uri;)Lcom/google/android/feeds/FeedLoader$DocumentInfo;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lcom/google/android/feeds/FeedLoader$DocumentInfo;->itemCount()I

    move-result v2

    .line 147
    if-gez v2, :cond_24

    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid document info: item count is unset or invalid"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_24
    if-lt v2, p4, :cond_33

    const/4 v3, 0x1

    .line 153
    :goto_27
    const-string v4, "com.google.feeds.cursor.extra.MORE"

    invoke-virtual {p6, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    add-int/2addr v0, v2

    .line 157
    add-int/2addr v1, v2

    .line 158
    if-ge v1, p5, :cond_32

    if-nez v3, :cond_3

    .line 159
    :cond_32
    return-void

    :cond_33
    move v3, v5

    .line 152
    goto :goto_27
.end method

.method public static loadPagedFeed(Ljava/net/ContentHandler;Landroid/net/Uri;Ljava/lang/String;IIILandroid/os/Bundle;)V
    .registers 13
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 194
    move v0, p3

    move v1, v5

    .line 200
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 202
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/android/feeds/FeedLoader;->loadDocument(Ljava/net/ContentHandler;Landroid/net/Uri;)Lcom/google/android/feeds/FeedLoader$DocumentInfo;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Lcom/google/android/feeds/FeedLoader$DocumentInfo;->itemCount()I

    move-result v2

    .line 205
    if-gez v2, :cond_24

    .line 206
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid document info: item count is unset or invalid"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_24
    if-lt v2, p4, :cond_34

    const/4 v3, 0x1

    .line 211
    :goto_27
    const-string v4, "com.google.feeds.cursor.extra.MORE"

    invoke-virtual {p6, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 214
    add-int/lit8 v0, v0, 0x1

    .line 215
    add-int/2addr v1, v2

    .line 216
    if-ge v1, p5, :cond_33

    if-nez v3, :cond_3

    .line 217
    :cond_33
    return-void

    :cond_34
    move v3, v5

    .line 210
    goto :goto_27
.end method

.class public Lcom/google/android/feeds/core/content/IndexedFeedResolver;
.super Lcom/google/android/feeds/core/content/AbstractFeedResolver;
.source "IndexedFeedResolver.java"


# instance fields
.field private final mBaseDocumentUri:Landroid/net/Uri;

.field private final mContentHandler:Ljava/net/ContentHandler;

.field protected final mExtras:Landroid/os/Bundle;

.field private final mFirstIndex:I

.field private final mIndexParameter:Ljava/lang/String;

.field private final mOutput:Ljava/lang/Object;

.field private final mPageSize:I


# virtual methods
.method protected createDocumentURL(I)Ljava/net/URL;
    .registers 7
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v4, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mBaseDocumentUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 128
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mIndexParameter:Ljava/lang/String;

    .line 129
    .local v1, key:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 131
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 132
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0, v2}, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->createURL(Landroid/net/Uri;)Ljava/net/URL;

    move-result-object v4

    return-object v4
.end method

.method public getContent(Lcom/google/android/feeds/core/provider/FeedCommand;)Ljava/lang/Object;
    .registers 16
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v13, -0x1

    .line 139
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 140
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getRowCount()I

    move-result v6

    .line 142
    .local v6, rowCount:I
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getState()Landroid/os/Bundle;

    move-result-object v7

    .line 143
    .local v7, state:Landroid/os/Bundle;
    const-string v11, "com.google.android.feeds.cursor.extra.NEXT_INDEX"

    iget v12, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mFirstIndex:I

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 149
    .end local v7           #state:Landroid/os/Bundle;
    .local v3, index:I
    :goto_19
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getMinCount()I

    move-result v4

    .line 153
    .local v4, minCount:I
    :cond_1d
    invoke-virtual {p0, v3}, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->createDocumentURL(I)Ljava/net/URL;

    move-result-object v8

    .line 154
    .local v8, url:Ljava/net/URL;
    iget-object v11, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {p0, p1, v8, v11}, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->getContent(Lcom/google/android/feeds/core/provider/FeedCommand;Ljava/net/URL;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 155
    .local v0, content:Ljava/lang/Object;
    iget-object v11, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mOutput:Ljava/lang/Object;

    if-eq v0, v11, :cond_3f

    .line 156
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Unexpected value returned by ContentHandler#getContent(URLConnection): %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 145
    .end local v0           #content:Ljava/lang/Object;
    .end local v3           #index:I
    .end local v4           #minCount:I
    .end local v6           #rowCount:I
    .end local v8           #url:Ljava/net/URL;
    :cond_3b
    const/4 v6, 0x0

    .line 146
    .restart local v6       #rowCount:I
    iget v3, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mFirstIndex:I

    .restart local v3       #index:I
    goto :goto_19

    .line 160
    .restart local v0       #content:Ljava/lang/Object;
    .restart local v4       #minCount:I
    .restart local v8       #url:Ljava/net/URL;
    :cond_3f
    iget-object v11, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v12, "com.google.android.feeds.cursor.extra.DOCUMENT_ROW_COUNT"

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 161
    .local v1, documentRowCount:I
    if-ne v1, v13, :cond_51

    .line 162
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "FeedParser must set FeedParser.EXTRA_DOCUMENT_ROW_COUNT"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 167
    :cond_51
    iget v11, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mPageSize:I

    if-lt v1, v11, :cond_77

    move v2, v9

    .line 168
    .local v2, hasMore:Z
    :goto_56
    iget-object v11, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v12, "com.google.android.feeds.cursor.extra.MORE"

    invoke-virtual {v11, v12, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    add-int/2addr v3, v1

    .line 172
    iget-object v11, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v12, "com.google.android.feeds.cursor.extra.NEXT_INDEX"

    invoke-virtual {v11, v12, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    iget-object v11, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v12, "com.google.android.feeds.cursor.extra.CONTENT_ROW_COUNT"

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 175
    .local v5, outputRowCount:I
    if-ne v5, v13, :cond_79

    .line 176
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "FeedParser must set FeedParser.EXTRA_CONTENT_ROW_COUNT"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v2           #hasMore:Z
    .end local v5           #outputRowCount:I
    :cond_77
    move v2, v10

    .line 167
    goto :goto_56

    .line 179
    .restart local v2       #hasMore:Z
    .restart local v5       #outputRowCount:I
    :cond_79
    add-int/2addr v6, v5

    .line 180
    if-ge v6, v4, :cond_7e

    if-nez v2, :cond_1d

    .line 181
    :cond_7e
    iget-object v9, p0, Lcom/google/android/feeds/core/content/IndexedFeedResolver;->mOutput:Ljava/lang/Object;

    return-object v9
.end method

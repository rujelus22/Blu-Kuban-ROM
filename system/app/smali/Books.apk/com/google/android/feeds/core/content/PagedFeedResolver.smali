.class public Lcom/google/android/feeds/core/content/PagedFeedResolver;
.super Lcom/google/android/feeds/core/content/AbstractFeedResolver;
.source "PagedFeedResolver.java"


# instance fields
.field private final mBaseDocumentUri:Landroid/net/Uri;

.field private final mContentHandler:Ljava/net/ContentHandler;

.field protected final mExtras:Landroid/os/Bundle;

.field private final mFirstPage:I

.field private final mOutput:Ljava/lang/Object;

.field private final mPageParameter:Ljava/lang/String;

.field private final mPageSize:I


# virtual methods
.method protected createDocumentURL(I)Ljava/net/URL;
    .registers 7
    .parameter "page"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v4, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mBaseDocumentUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 131
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v1, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mPageParameter:Ljava/lang/String;

    .line 132
    .local v1, key:Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 134
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 135
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0, v2}, Lcom/google/android/feeds/core/content/PagedFeedResolver;->createURL(Landroid/net/Uri;)Ljava/net/URL;

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

    .line 143
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 144
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getRowCount()I

    move-result v6

    .line 146
    .local v6, rowCount:I
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getState()Landroid/os/Bundle;

    move-result-object v7

    .line 147
    .local v7, state:Landroid/os/Bundle;
    const-string v11, "com.google.android.feeds.document.extra.NEXT_PAGE"

    iget v12, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mFirstPage:I

    invoke-virtual {v7, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 153
    .end local v7           #state:Landroid/os/Bundle;
    .local v4, page:I
    :goto_19
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getMinCount()I

    move-result v1

    .line 157
    .local v1, minCount:I
    :cond_1d
    invoke-virtual {p0, v4}, Lcom/google/android/feeds/core/content/PagedFeedResolver;->createDocumentURL(I)Ljava/net/URL;

    move-result-object v8

    .line 158
    .local v8, url:Ljava/net/URL;
    iget-object v11, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {p0, p1, v8, v11}, Lcom/google/android/feeds/core/content/PagedFeedResolver;->getContent(Lcom/google/android/feeds/core/provider/FeedCommand;Ljava/net/URL;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, content:Ljava/lang/Object;
    iget-object v11, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mOutput:Ljava/lang/Object;

    if-eq v0, v11, :cond_3f

    .line 160
    new-instance v11, Ljava/lang/RuntimeException;

    const-string v12, "Unexpected value returned by ContentHandler#getContent(URLConnection): %s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v0, v9, v10

    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 149
    .end local v0           #content:Ljava/lang/Object;
    .end local v1           #minCount:I
    .end local v4           #page:I
    .end local v6           #rowCount:I
    .end local v8           #url:Ljava/net/URL;
    :cond_3b
    const/4 v6, 0x0

    .line 150
    .restart local v6       #rowCount:I
    iget v4, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mFirstPage:I

    .restart local v4       #page:I
    goto :goto_19

    .line 164
    .restart local v0       #content:Ljava/lang/Object;
    .restart local v1       #minCount:I
    .restart local v8       #url:Ljava/net/URL;
    :cond_3f
    iget-object v11, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v12, "com.google.android.feeds.cursor.extra.DOCUMENT_ROW_COUNT"

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 165
    .local v5, pageRowCount:I
    if-ne v5, v13, :cond_51

    .line 172
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "DocumentConstants row count missing"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 176
    :cond_51
    iget v11, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mPageSize:I

    if-lt v5, v11, :cond_78

    move v2, v9

    .line 177
    .local v2, morePages:Z
    :goto_56
    iget-object v11, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v12, "com.google.android.feeds.cursor.extra.MORE"

    invoke-virtual {v11, v12, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    add-int/lit8 v4, v4, 0x1

    .line 181
    iget-object v11, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v12, "com.google.android.feeds.document.extra.NEXT_PAGE"

    invoke-virtual {v11, v12, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    iget-object v11, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v12, "com.google.android.feeds.cursor.extra.CONTENT_ROW_COUNT"

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 184
    .local v3, outputRowCount:I
    if-ne v3, v13, :cond_7a

    .line 185
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "FeedParser must set FeedParser.EXTRA_CONTENT_ROW_COUNT"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v2           #morePages:Z
    .end local v3           #outputRowCount:I
    :cond_78
    move v2, v10

    .line 176
    goto :goto_56

    .line 188
    .restart local v2       #morePages:Z
    .restart local v3       #outputRowCount:I
    :cond_7a
    add-int/2addr v6, v3

    .line 189
    if-ge v6, v1, :cond_7f

    if-nez v2, :cond_1d

    .line 190
    :cond_7f
    iget-object v9, p0, Lcom/google/android/feeds/core/content/PagedFeedResolver;->mOutput:Ljava/lang/Object;

    return-object v9
.end method

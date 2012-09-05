.class public Lcom/google/android/feeds/core/content/ContinuedFeedResolver;
.super Lcom/google/android/feeds/core/content/AbstractFeedResolver;
.source "ContinuedFeedResolver.java"


# instance fields
.field private final mBaseDocumentUri:Landroid/net/Uri;

.field private final mContentHandler:Ljava/net/ContentHandler;

.field private final mContinuationParameter:Ljava/lang/String;

.field protected final mExtras:Landroid/os/Bundle;

.field private final mOutput:Ljava/lang/Object;


# direct methods
.method private clearContinuationToken()V
    .registers 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v1, "com.google.android.feeds.document.extra.CONTINUATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private getContinuationToken()Ljava/lang/String;
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v1, "com.google.android.feeds.document.extra.CONTINUATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected createDocumentURL(Ljava/lang/String;)Ljava/net/URL;
    .registers 6
    .parameter "continuation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 105
    if-eqz p1, :cond_16

    .line 106
    iget-object v3, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mBaseDocumentUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 107
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-object v2, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mContinuationParameter:Ljava/lang/String;

    .line 108
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 109
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 110
    .local v1, documentUri:Landroid/net/Uri;
    invoke-virtual {p0, v1}, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->createURL(Landroid/net/Uri;)Ljava/net/URL;

    move-result-object v3

    .line 112
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v1           #documentUri:Landroid/net/Uri;
    .end local v2           #key:Ljava/lang/String;
    :goto_15
    return-object v3

    :cond_16
    iget-object v3, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mBaseDocumentUri:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->createURL(Landroid/net/Uri;)Ljava/net/URL;

    move-result-object v3

    goto :goto_15
.end method

.method public getContent(Lcom/google/android/feeds/core/provider/FeedCommand;)Ljava/lang/Object;
    .registers 15
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, -0x1

    .line 128
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->isAppend()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 129
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getRowCount()I

    move-result v4

    .line 131
    .local v4, rowCount:I
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getState()Landroid/os/Bundle;

    move-result-object v5

    .line 132
    .local v5, state:Landroid/os/Bundle;
    const-string v7, "com.google.android.feeds.document.extra.CONTINUATION"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .end local v5           #state:Landroid/os/Bundle;
    .local v1, continuation:Ljava/lang/String;
    :goto_17
    invoke-virtual {p1}, Lcom/google/android/feeds/core/provider/FeedCommand;->getMinCount()I

    move-result v2

    .line 140
    .local v2, minCount:I
    :cond_1b
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->clearContinuationToken()V

    .line 141
    invoke-virtual {p0, v1}, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->createDocumentURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 142
    .local v6, url:Ljava/net/URL;
    iget-object v7, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {p0, p1, v6, v7}, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->getContent(Lcom/google/android/feeds/core/provider/FeedCommand;Ljava/net/URL;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 143
    .local v0, content:Ljava/lang/Object;
    iget-object v7, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mOutput:Ljava/lang/Object;

    if-eq v0, v7, :cond_3f

    .line 144
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v10, "Unexpected value returned by ContentHandler#getContent(URLConnection): %s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v9

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 134
    .end local v0           #content:Ljava/lang/Object;
    .end local v1           #continuation:Ljava/lang/String;
    .end local v2           #minCount:I
    .end local v4           #rowCount:I
    .end local v6           #url:Ljava/net/URL;
    :cond_3c
    const/4 v4, 0x0

    .line 135
    .restart local v4       #rowCount:I
    const/4 v1, 0x0

    .restart local v1       #continuation:Ljava/lang/String;
    goto :goto_17

    .line 147
    .restart local v0       #content:Ljava/lang/Object;
    .restart local v2       #minCount:I
    .restart local v6       #url:Ljava/net/URL;
    :cond_3f
    invoke-direct {p0}, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->getContinuationToken()Ljava/lang/String;

    move-result-object v1

    .line 148
    iget-object v10, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v11, "com.google.android.feeds.cursor.extra.MORE"

    if-eqz v1, :cond_5f

    move v7, v8

    :goto_4a
    invoke-virtual {v10, v11, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    iget-object v7, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mExtras:Landroid/os/Bundle;

    const-string v10, "com.google.android.feeds.cursor.extra.CONTENT_ROW_COUNT"

    invoke-virtual {v7, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 151
    .local v3, outputRowCount:I
    if-ne v3, v12, :cond_61

    .line 152
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "FeedParser must set FeedParser.EXTRA_CONTENT_ROW_COUNT"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v3           #outputRowCount:I
    :cond_5f
    move v7, v9

    .line 148
    goto :goto_4a

    .line 155
    .restart local v3       #outputRowCount:I
    :cond_61
    add-int/2addr v4, v3

    .line 156
    if-ge v4, v2, :cond_66

    if-nez v1, :cond_1b

    .line 157
    :cond_66
    iget-object v7, p0, Lcom/google/android/feeds/core/content/ContinuedFeedResolver;->mOutput:Ljava/lang/Object;

    return-object v7
.end method

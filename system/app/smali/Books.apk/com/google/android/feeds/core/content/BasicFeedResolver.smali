.class public Lcom/google/android/feeds/core/content/BasicFeedResolver;
.super Lcom/google/android/feeds/core/content/AbstractFeedResolver;
.source "BasicFeedResolver.java"


# instance fields
.field private final mContentHandler:Ljava/net/ContentHandler;

.field private final mDocumentUri:Landroid/net/Uri;


# virtual methods
.method public getContent(Lcom/google/android/feeds/core/provider/FeedCommand;)Ljava/lang/Object;
    .registers 4
    .parameter "command"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v1, p0, Lcom/google/android/feeds/core/content/BasicFeedResolver;->mDocumentUri:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcom/google/android/feeds/core/content/BasicFeedResolver;->createURL(Landroid/net/Uri;)Ljava/net/URL;

    move-result-object v0

    .line 57
    .local v0, url:Ljava/net/URL;
    iget-object v1, p0, Lcom/google/android/feeds/core/content/BasicFeedResolver;->mContentHandler:Ljava/net/ContentHandler;

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/feeds/core/content/BasicFeedResolver;->getContent(Lcom/google/android/feeds/core/provider/FeedCommand;Ljava/net/URL;Ljava/net/ContentHandler;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

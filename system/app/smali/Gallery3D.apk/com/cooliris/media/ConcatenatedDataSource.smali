.class public final Lcom/cooliris/media/ConcatenatedDataSource;
.super Ljava/lang/Object;
.source "ConcatenatedDataSource.java"

# interfaces
.implements Lcom/cooliris/media/DataSource;


# instance fields
.field private final mFirst:Lcom/cooliris/media/DataSource;

.field private final mSecond:Lcom/cooliris/media/DataSource;


# direct methods
.method public constructor <init>(Lcom/cooliris/media/DataSource;Lcom/cooliris/media/DataSource;)V
    .registers 3
    .parameter "first"
    .parameter "second"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/cooliris/media/ConcatenatedDataSource;->mFirst:Lcom/cooliris/media/DataSource;

    .line 32
    iput-object p2, p0, Lcom/cooliris/media/ConcatenatedDataSource;->mSecond:Lcom/cooliris/media/DataSource;

    .line 33
    return-void
.end method


# virtual methods
.method public getDatabaseUris()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 90
    iget-object v2, p0, Lcom/cooliris/media/ConcatenatedDataSource;->mFirst:Lcom/cooliris/media/DataSource;

    invoke-interface {v2}, Lcom/cooliris/media/DataSource;->getDatabaseUris()[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, first:[Ljava/lang/String;
    iget-object v2, p0, Lcom/cooliris/media/ConcatenatedDataSource;->mSecond:Lcom/cooliris/media/DataSource;

    invoke-interface {v2}, Lcom/cooliris/media/DataSource;->getDatabaseUris()[Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, second:[Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/cooliris/media/ArrayUtils;->addAll([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public getThumbnailCache()Lcom/cooliris/media/DiskCache;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ConcatenatedDataSource should not create MediaItems"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public loadItemsForSet(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;II)V
    .registers 8
    .parameter "feed"
    .parameter "parentSet"
    .parameter "rangeStart"
    .parameter "rangeEnd"

    .prologue
    .line 42
    if-eqz p2, :cond_9

    .line 43
    iget-object v0, p2, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    .line 44
    .local v0, dataSource:Lcom/cooliris/media/DataSource;
    if-eqz v0, :cond_a

    .line 45
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/cooliris/media/DataSource;->loadItemsForSet(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;II)V

    .line 50
    .end local v0           #dataSource:Lcom/cooliris/media/DataSource;
    :cond_9
    :goto_9
    return-void

    .line 47
    .restart local v0       #dataSource:Lcom/cooliris/media/DataSource;
    :cond_a
    const-string v1, "ConcatenatedDataSource"

    const-string v2, "MediaSet was not added to the feed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public loadMediaSets(Lcom/cooliris/media/MediaFeed;)V
    .registers 3
    .parameter "feed"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/cooliris/media/ConcatenatedDataSource;->mFirst:Lcom/cooliris/media/DataSource;

    invoke-interface {v0, p1}, Lcom/cooliris/media/DataSource;->loadMediaSets(Lcom/cooliris/media/MediaFeed;)V

    .line 37
    iget-object v0, p0, Lcom/cooliris/media/ConcatenatedDataSource;->mSecond:Lcom/cooliris/media/DataSource;

    invoke-interface {v0, p1}, Lcom/cooliris/media/DataSource;->loadMediaSets(Lcom/cooliris/media/MediaFeed;)V

    .line 38
    return-void
.end method

.method public performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z
    .registers 13
    .parameter "operation"
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cooliris/media/MediaBucket;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, mediaBuckets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .local v6, singleBucket:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cooliris/media/MediaBucket;>;"
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 57
    .local v3, numBuckets:I
    const/4 v4, 0x1

    .line 58
    .local v4, retVal:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_10
    if-ge v2, v3, :cond_34

    .line 59
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cooliris/media/MediaBucket;

    .line 60
    .local v0, bucket:Lcom/cooliris/media/MediaBucket;
    iget-object v5, v0, Lcom/cooliris/media/MediaBucket;->mediaSet:Lcom/cooliris/media/MediaSet;

    .line 61
    .local v5, set:Lcom/cooliris/media/MediaSet;
    if-eqz v5, :cond_29

    .line 62
    iget-object v1, v5, Lcom/cooliris/media/MediaSet;->mDataSource:Lcom/cooliris/media/DataSource;

    .line 63
    .local v1, dataSource:Lcom/cooliris/media/DataSource;
    if-eqz v1, :cond_2c

    .line 64
    const/4 v7, 0x0

    invoke-virtual {v6, v7, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-interface {v1, p1, v6, p3}, Lcom/cooliris/media/DataSource;->performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z

    move-result v7

    and-int/2addr v4, v7

    .line 58
    .end local v1           #dataSource:Lcom/cooliris/media/DataSource;
    :cond_29
    :goto_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 67
    .restart local v1       #dataSource:Lcom/cooliris/media/DataSource;
    :cond_2c
    const-string v7, "ConcatenatedDataSource"

    const-string v8, "MediaSet was not added to the feed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 71
    .end local v0           #bucket:Lcom/cooliris/media/MediaBucket;
    .end local v1           #dataSource:Lcom/cooliris/media/DataSource;
    .end local v5           #set:Lcom/cooliris/media/MediaSet;
    :cond_34
    return v4
.end method

.method public refresh(Lcom/cooliris/media/MediaFeed;[Ljava/lang/String;)V
    .registers 4
    .parameter "feed"
    .parameter "databaseUris"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/cooliris/media/ConcatenatedDataSource;->mFirst:Lcom/cooliris/media/DataSource;

    invoke-interface {v0, p1, p2}, Lcom/cooliris/media/DataSource;->refresh(Lcom/cooliris/media/MediaFeed;[Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/cooliris/media/ConcatenatedDataSource;->mSecond:Lcom/cooliris/media/DataSource;

    invoke-interface {v0, p1, p2}, Lcom/cooliris/media/DataSource;->refresh(Lcom/cooliris/media/MediaFeed;[Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/cooliris/media/ConcatenatedDataSource;->mFirst:Lcom/cooliris/media/DataSource;

    invoke-interface {v0}, Lcom/cooliris/media/DataSource;->shutdown()V

    .line 81
    iget-object v0, p0, Lcom/cooliris/media/ConcatenatedDataSource;->mSecond:Lcom/cooliris/media/DataSource;

    invoke-interface {v0}, Lcom/cooliris/media/DataSource;->shutdown()V

    .line 82
    return-void
.end method

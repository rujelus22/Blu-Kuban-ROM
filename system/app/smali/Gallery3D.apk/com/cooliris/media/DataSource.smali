.class public interface abstract Lcom/cooliris/media/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# virtual methods
.method public abstract getDatabaseUris()[Ljava/lang/String;
.end method

.method public abstract getThumbnailCache()Lcom/cooliris/media/DiskCache;
.end method

.method public abstract loadItemsForSet(Lcom/cooliris/media/MediaFeed;Lcom/cooliris/media/MediaSet;II)V
.end method

.method public abstract loadMediaSets(Lcom/cooliris/media/MediaFeed;)V
.end method

.method public abstract performOperation(ILjava/util/ArrayList;Ljava/lang/Object;)Z
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
.end method

.method public abstract refresh(Lcom/cooliris/media/MediaFeed;[Ljava/lang/String;)V
.end method

.method public abstract shutdown()V
.end method

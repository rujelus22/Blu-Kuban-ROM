.class public interface abstract Lcom/google/feedreader/extrpc/Client$OverviewContentOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OverviewContentOrBuilder"
.end annotation


# virtual methods
.method public abstract getBroadcastStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
.end method

.method public abstract getCoolStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
.end method

.method public abstract getKeptUnreadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
.end method

.method public abstract getReadStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
.end method

.method public abstract getReaderBlogStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
.end method

.method public abstract getSegmentStreams(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
.end method

.method public abstract getSegmentStreamsCount()I
.end method

.method public abstract getSegmentStreamsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStarredStream()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream;
.end method

.method public abstract hasBroadcastStream()Z
.end method

.method public abstract hasCoolStream()Z
.end method

.method public abstract hasKeptUnreadStream()Z
.end method

.method public abstract hasReadStream()Z
.end method

.method public abstract hasReaderBlogStream()Z
.end method

.method public abstract hasStarredStream()Z
.end method

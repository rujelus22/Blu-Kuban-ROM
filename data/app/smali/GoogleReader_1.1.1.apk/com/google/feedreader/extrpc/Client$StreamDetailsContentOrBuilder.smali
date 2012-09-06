.class public interface abstract Lcom/google/feedreader/extrpc/Client$StreamDetailsContentOrBuilder;
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
    name = "StreamDetailsContentOrBuilder"
.end annotation


# virtual methods
.method public abstract getFailedCrawlTimeUsec()J
.end method

.method public abstract getFeedUrl()Ljava/lang/String;
.end method

.method public abstract getLastFailureWasParseFailure()Z
.end method

.method public abstract getStreamDetailsError()Z
.end method

.method public abstract getSubscribers()Ljava/lang/String;
.end method

.method public abstract getSuccessfulCrawlTimeUsec()J
.end method

.method public abstract getTrendsCharts(I)Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;
.end method

.method public abstract getTrendsChartsCount()I
.end method

.method public abstract getTrendsChartsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamDetailsContent$TrendsChart;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVelocity()Ljava/lang/String;
.end method

.method public abstract hasFailedCrawlTimeUsec()Z
.end method

.method public abstract hasFeedUrl()Z
.end method

.method public abstract hasLastFailureWasParseFailure()Z
.end method

.method public abstract hasStreamDetailsError()Z
.end method

.method public abstract hasSubscribers()Z
.end method

.method public abstract hasSuccessfulCrawlTimeUsec()Z
.end method

.method public abstract hasVelocity()Z
.end method

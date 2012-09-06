.class public interface abstract Lcom/google/feedreader/extrpc/Client$UnreadCountsContentOrBuilder;
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
    name = "UnreadCountsContentOrBuilder"
.end annotation


# virtual methods
.method public abstract getDenied()Z
.end method

.method public abstract getMax()I
.end method

.method public abstract getUnreadcounts(I)Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;
.end method

.method public abstract getUnreadcountsCount()I
.end method

.method public abstract getUnreadcountsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UnreadCountsContent$UnreadCountEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasDenied()Z
.end method

.method public abstract hasMax()Z
.end method

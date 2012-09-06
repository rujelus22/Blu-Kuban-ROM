.class public interface abstract Lcom/google/feedreader/extrpc/Client$FriendFeedsOrBuilder;
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
    name = "FriendFeedsOrBuilder"
.end annotation


# virtual methods
.method public abstract getFeeds(I)Lcom/google/feedreader/extrpc/Client$Feed;
.end method

.method public abstract getFeedsCount()I
.end method

.method public abstract getFeedsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Feed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFriendUserId()Ljava/lang/String;
.end method

.method public abstract hasFriendUserId()Z
.end method

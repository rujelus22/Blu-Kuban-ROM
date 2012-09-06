.class public interface abstract Lcom/google/feedreader/extrpc/Client$FriendsFeedsListOrBuilder;
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
    name = "FriendsFeedsListOrBuilder"
.end annotation


# virtual methods
.method public abstract getFriendsFeeds(I)Lcom/google/feedreader/extrpc/Client$FriendFeeds;
.end method

.method public abstract getFriendsFeedsCount()I
.end method

.method public abstract getFriendsFeedsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$FriendFeeds;",
            ">;"
        }
    .end annotation
.end method

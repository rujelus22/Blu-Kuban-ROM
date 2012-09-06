.class public interface abstract Lcom/google/feedreader/extrpc/Client$FriendsListOrBuilder;
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
    name = "FriendsListOrBuilder"
.end annotation


# virtual methods
.method public abstract getEncodedSharersList()Ljava/lang/String;
.end method

.method public abstract getFriends(I)Lcom/google/feedreader/extrpc/Client$Friend;
.end method

.method public abstract getFriendsCount()I
.end method

.method public abstract getFriendsFeedsCount()I
.end method

.method public abstract getFriendsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Friend;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasEncodedSharersList()Z
.end method

.method public abstract hasFriendsFeedsCount()Z
.end method

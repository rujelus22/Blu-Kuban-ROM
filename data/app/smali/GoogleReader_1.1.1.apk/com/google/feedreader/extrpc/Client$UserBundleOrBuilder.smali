.class public interface abstract Lcom/google/feedreader/extrpc/Client$UserBundleOrBuilder;
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
    name = "UserBundleOrBuilder"
.end annotation


# virtual methods
.method public abstract getAuthorName()Ljava/lang/String;
.end method

.method public abstract getAuthorPhotoUrl()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getFeeds(I)Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;
.end method

.method public abstract getFeedsCount()I
.end method

.method public abstract getFeedsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$UserBundle$Feed;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getSubscriberCount()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract hasAuthorName()Z
.end method

.method public abstract hasAuthorPhotoUrl()Z
.end method

.method public abstract hasDescription()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasSubscriberCount()Z
.end method

.method public abstract hasTitle()Z
.end method

.class public interface abstract Lcom/google/feedreader/extrpc/Client$BundleList$BundleOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$BundleList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BundleOrBuilder"
.end annotation


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIsadded()Z
.end method

.method public abstract getIsfeatured()Z
.end method

.method public abstract getSubscriptions(I)Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;
.end method

.method public abstract getSubscriptionsCount()I
.end method

.method public abstract getSubscriptionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$BundleList$Bundle$SubscriptionEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasIsadded()Z
.end method

.method public abstract hasIsfeatured()Z
.end method

.method public abstract hasTitle()Z
.end method

.class public interface abstract Lcom/google/feedreader/extrpc/Client$SubscriptionListOrBuilder;
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
    name = "SubscriptionListOrBuilder"
.end annotation


# virtual methods
.method public abstract getSubscriptions(I)Lcom/google/feedreader/extrpc/Client$SubscriptionData;
.end method

.method public abstract getSubscriptionsCount()I
.end method

.method public abstract getSubscriptionsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$SubscriptionData;",
            ">;"
        }
    .end annotation
.end method

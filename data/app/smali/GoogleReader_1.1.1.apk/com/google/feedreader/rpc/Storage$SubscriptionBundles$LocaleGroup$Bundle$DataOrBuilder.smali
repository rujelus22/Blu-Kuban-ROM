.class public interface abstract Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$DataOrBuilder;
.super Ljava/lang/Object;
.source "Storage.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataOrBuilder"
.end annotation


# virtual methods
.method public abstract getSubscription(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;
.end method

.method public abstract getSubscriptionCount()I
.end method

.method public abstract getSubscriptionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle$Data$Subscription;",
            ">;"
        }
    .end annotation
.end method

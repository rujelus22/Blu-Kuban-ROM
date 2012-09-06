.class public interface abstract Lcom/google/feedreader/rpc/Storage$SubscriptionBundlesOrBuilder;
.super Ljava/lang/Object;
.source "Storage.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SubscriptionBundlesOrBuilder"
.end annotation


# virtual methods
.method public abstract getLocaleGroup(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;
.end method

.method public abstract getLocaleGroupCount()I
.end method

.method public abstract getLocaleGroupList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup;",
            ">;"
        }
    .end annotation
.end method

.class public interface abstract Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroupOrBuilder;
.super Ljava/lang/Object;
.source "Storage.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/rpc/Storage$SubscriptionBundles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocaleGroupOrBuilder"
.end annotation


# virtual methods
.method public abstract getBundle(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;
.end method

.method public abstract getBundleCount()I
.end method

.method public abstract getBundleList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHideDirectoryCategories()Z
.end method

.method public abstract getLocale()Ljava/lang/String;
.end method

.method public abstract getServiceDefinition(I)Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;
.end method

.method public abstract getServiceDefinitionCount()I
.end method

.method public abstract getServiceDefinitionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/rpc/Storage$SubscriptionBundles$LocaleGroup$ServiceDefinition;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasHideDirectoryCategories()Z
.end method

.method public abstract hasLocale()Z
.end method

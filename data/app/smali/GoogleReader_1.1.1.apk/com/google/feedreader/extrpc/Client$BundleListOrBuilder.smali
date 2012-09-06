.class public interface abstract Lcom/google/feedreader/extrpc/Client$BundleListOrBuilder;
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
    name = "BundleListOrBuilder"
.end annotation


# virtual methods
.method public abstract getBundles(I)Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;
.end method

.method public abstract getBundlesCount()I
.end method

.method public abstract getBundlesList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$BundleList$BundleEntry;",
            ">;"
        }
    .end annotation
.end method

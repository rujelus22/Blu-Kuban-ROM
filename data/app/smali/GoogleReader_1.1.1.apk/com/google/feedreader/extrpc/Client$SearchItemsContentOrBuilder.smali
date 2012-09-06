.class public interface abstract Lcom/google/feedreader/extrpc/Client$SearchItemsContentOrBuilder;
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
    name = "SearchItemsContentOrBuilder"
.end annotation


# virtual methods
.method public abstract getResults(I)Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;
.end method

.method public abstract getResultsCount()I
.end method

.method public abstract getResultsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$SearchItemsContent$ItemId;",
            ">;"
        }
    .end annotation
.end method

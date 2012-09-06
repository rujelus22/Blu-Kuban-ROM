.class public interface abstract Lcom/google/feedreader/extrpc/Client$StreamItemsContentOrBuilder;
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
    name = "StreamItemsContentOrBuilder"
.end annotation


# virtual methods
.method public abstract getItemRefs(I)Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;
.end method

.method public abstract getItemRefsCount()I
.end method

.method public abstract getItemRefsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRef;",
            ">;"
        }
    .end annotation
.end method

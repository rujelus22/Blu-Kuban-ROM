.class public interface abstract Lcom/google/feedreader/extrpc/Client$TagListContentOrBuilder;
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
    name = "TagListContentOrBuilder"
.end annotation


# virtual methods
.method public abstract getTags(I)Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;
.end method

.method public abstract getTagsCount()I
.end method

.method public abstract getTagsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$TagListContent$TagEntry;",
            ">;"
        }
    .end annotation
.end method

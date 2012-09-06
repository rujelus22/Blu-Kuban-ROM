.class public interface abstract Lcom/google/feedreader/extrpc/Client$StreamContentOrBuilder;
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
    name = "StreamContentOrBuilder"
.end annotation


# virtual methods
.method public abstract getAuthor()Ljava/lang/String;
.end method

.method public abstract getContinuation()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getDirection()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getItems(I)Lcom/google/feedreader/extrpc/Client$Item;
.end method

.method public abstract getItemsCount()I
.end method

.method public abstract getItemsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Item;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLinks(I)Lcom/google/feedreader/extrpc/Client$Link;
.end method

.method public abstract getLinksCount()I
.end method

.method public abstract getLinksList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$Link;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPublishedMsec()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getUpdatedMsec()J
.end method

.method public abstract hasAuthor()Z
.end method

.method public abstract hasContinuation()Z
.end method

.method public abstract hasDescription()Z
.end method

.method public abstract hasDirection()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasPublishedMsec()Z
.end method

.method public abstract hasTitle()Z
.end method

.method public abstract hasUpdatedMsec()Z
.end method

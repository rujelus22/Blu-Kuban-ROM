.class public interface abstract Lcom/google/feedreader/extrpc/Client$OverviewContent$StreamOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$OverviewContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StreamOrBuilder"
.end annotation


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImage()Lcom/google/feedreader/extrpc/Client$OverviewContent$Stream$Image;
.end method

.method public abstract getItems(I)Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;
.end method

.method public abstract getItemsCount()I
.end method

.method public abstract getItemsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/feedreader/extrpc/Client$OverviewContent$Item;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTitleText()Ljava/lang/String;
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasImage()Z
.end method

.method public abstract hasTitleText()Z
.end method

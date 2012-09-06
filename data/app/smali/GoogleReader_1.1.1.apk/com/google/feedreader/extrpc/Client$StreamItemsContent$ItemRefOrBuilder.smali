.class public interface abstract Lcom/google/feedreader/extrpc/Client$StreamItemsContent$ItemRefOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/feedreader/extrpc/Client$StreamItemsContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ItemRefOrBuilder"
.end annotation


# virtual methods
.method public abstract getDirectStreamIds(I)Ljava/lang/String;
.end method

.method public abstract getDirectStreamIdsCount()I
.end method

.method public abstract getDirectStreamIdsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExternalId()Ljava/lang/String;
.end method

.method public abstract getId()J
.end method

.method public abstract getRankingDebug()Ljava/lang/String;
.end method

.method public abstract getTimestampUsec()J
.end method

.method public abstract hasExternalId()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasRankingDebug()Z
.end method

.method public abstract hasTimestampUsec()Z
.end method

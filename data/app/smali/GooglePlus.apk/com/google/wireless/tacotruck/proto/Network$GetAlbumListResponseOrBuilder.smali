.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListResponseOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetAlbumListResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getAlbum(I)Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
.end method

.method public abstract getAlbumCount()I
.end method

.method public abstract getAlbumList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContinuationToken()I
.end method

.method public abstract hasContinuationToken()Z
.end method

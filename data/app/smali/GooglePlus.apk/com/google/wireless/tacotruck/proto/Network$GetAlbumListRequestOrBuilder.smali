.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetAlbumListRequestOrBuilder;
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
    name = "GetAlbumListRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getAlbumOptions()Lcom/google/wireless/tacotruck/proto/Network$PhotoAlbumOptions;
.end method

.method public abstract getAlbumsToFetch(I)Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
.end method

.method public abstract getAlbumsToFetchCount()I
.end method

.method public abstract getAlbumsToFetchList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContinuationToken()I
.end method

.method public abstract getFocusObfuscatedOwnerId()Ljava/lang/String;
.end method

.method public abstract getMaxAlbumCount()I
.end method

.method public abstract getOwnerGaiaId()J
.end method

.method public abstract getSharedAlbumsOnly()Z
.end method

.method public abstract hasAlbumOptions()Z
.end method

.method public abstract hasContinuationToken()Z
.end method

.method public abstract hasFocusObfuscatedOwnerId()Z
.end method

.method public abstract hasMaxAlbumCount()Z
.end method

.method public abstract hasOwnerGaiaId()Z
.end method

.method public abstract hasSharedAlbumsOnly()Z
.end method

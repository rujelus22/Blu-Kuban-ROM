.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbumOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PhotoAlbumOrBuilder"
.end annotation


# virtual methods
.method public abstract getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
.end method

.method public abstract getCover()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
.end method

.method public abstract getEntityVersion()J
.end method

.method public abstract getFocusObfuscatedOwnerId()Ljava/lang/String;
.end method

.method public abstract getId()J
.end method

.method public abstract getIdentifier()Lcom/google/wireless/tacotruck/proto/Data$AlbumIdentifier;
.end method

.method public abstract getOwnerGaiaId()J
.end method

.method public abstract getPreview(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
.end method

.method public abstract getPreviewCount()I
.end method

.method public abstract getPreviewList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStreamId()Ljava/lang/String;
.end method

.method public abstract getTimestampMsec()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTotalPhotos()I
.end method

.method public abstract hasAudience()Z
.end method

.method public abstract hasCover()Z
.end method

.method public abstract hasEntityVersion()Z
.end method

.method public abstract hasFocusObfuscatedOwnerId()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasIdentifier()Z
.end method

.method public abstract hasOwnerGaiaId()Z
.end method

.method public abstract hasStreamId()Z
.end method

.method public abstract hasTimestampMsec()Z
.end method

.method public abstract hasTitle()Z
.end method

.method public abstract hasTotalPhotos()Z
.end method

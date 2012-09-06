.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MobilePhotoOrBuilder"
.end annotation


# virtual methods
.method public abstract getActivityId(I)Ljava/lang/String;
.end method

.method public abstract getActivityIdCount()I
.end method

.method public abstract getActivityIdList()Ljava/util/List;
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

.method public abstract getAlbum()Lcom/google/wireless/tacotruck/proto/Data$PhotoAlbum;
.end method

.method public abstract getComment(I)Lcom/google/wireless/tacotruck/proto/Data$Comment;
.end method

.method public abstract getCommentCount()I
.end method

.method public abstract getCommentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Comment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getEntityVersion()J
.end method

.method public abstract getFocusObfuscatedOwnerId()Ljava/lang/String;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getId()J
.end method

.method public abstract getIsDeleted()Z
.end method

.method public abstract getIsDownloadable()Z
.end method

.method public abstract getLikeCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLikingUserId(I)J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLikingUserIdCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getLikingUserIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getMediaTag()J
.end method

.method public abstract getOwnerGaiaId()J
.end method

.method public abstract getPhotoActionState()Lcom/google/wireless/tacotruck/proto/Data$PhotoActionState;
.end method

.method public abstract getPlusoneData()Lcom/google/wireless/tacotruck/proto/Data$PlusOneData;
.end method

.method public abstract getShape(I)Lcom/google/wireless/tacotruck/proto/Data$MobileShape;
.end method

.method public abstract getShapeCount()I
.end method

.method public abstract getShapeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobileShape;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSize()J
.end method

.method public abstract getStreamId(I)Ljava/lang/String;
.end method

.method public abstract getStreamIdCount()I
.end method

.method public abstract getStreamIdList()Ljava/util/List;
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

.method public abstract getTimestampMsec()J
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getTotalCommentCount()I
.end method

.method public abstract getUploadStatus()Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto$UploadStatus;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUrlFormat()Lcom/google/wireless/tacotruck/proto/Data$ImageUrlFormat;
.end method

.method public abstract getVideoData()Lcom/google/wireless/tacotruck/proto/Data$VideoData;
.end method

.method public abstract getWidth()I
.end method

.method public abstract hasAlbum()Z
.end method

.method public abstract hasDescription()Z
.end method

.method public abstract hasEntityVersion()Z
.end method

.method public abstract hasFocusObfuscatedOwnerId()Z
.end method

.method public abstract hasHeight()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasIsDeleted()Z
.end method

.method public abstract hasIsDownloadable()Z
.end method

.method public abstract hasLikeCount()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasMediaTag()Z
.end method

.method public abstract hasOwnerGaiaId()Z
.end method

.method public abstract hasPhotoActionState()Z
.end method

.method public abstract hasPlusoneData()Z
.end method

.method public abstract hasSize()Z
.end method

.method public abstract hasTimestampMsec()Z
.end method

.method public abstract hasTitle()Z
.end method

.method public abstract hasTotalCommentCount()Z
.end method

.method public abstract hasUploadStatus()Z
.end method

.method public abstract hasUrl()Z
.end method

.method public abstract hasUrlFormat()Z
.end method

.method public abstract hasVideoData()Z
.end method

.method public abstract hasWidth()Z
.end method

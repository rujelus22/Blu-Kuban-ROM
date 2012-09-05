.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$PostRequestOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PostRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getActivityId()Ljava/lang/String;
.end method

.method public abstract getAlbumId()J
.end method

.method public abstract getAudience()Lcom/google/wireless/tacotruck/proto/Data$Audience;
.end method

.method public abstract getCircleId(I)Ljava/lang/String;
.end method

.method public abstract getCircleIdCount()I
.end method

.method public abstract getCircleIdList()Ljava/util/List;
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

.method public abstract getCommentId()Ljava/lang/String;
.end method

.method public abstract getContent()Ljava/lang/String;
.end method

.method public abstract getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
.end method

.method public abstract getMediaRef(I)Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
.end method

.method public abstract getMediaRefCount()I
.end method

.method public abstract getMediaRefList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$MediaReference;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMention(I)Lcom/google/wireless/tacotruck/proto/Data$Mention;
.end method

.method public abstract getMentionCount()I
.end method

.method public abstract getMentionList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Mention;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOnlinePhotoId(I)Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getOnlinePhotoIdCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getOnlinePhotoIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PostRequest$OnlinePhotoId;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPhoto(I)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPhotoCount()I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPhotoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPostType()Lcom/google/wireless/tacotruck/proto/Network$PostRequest$Type;
.end method

.method public abstract getPublic()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSharedWithUserEmail(I)Ljava/lang/String;
.end method

.method public abstract getSharedWithUserEmailCount()I
.end method

.method public abstract getSharedWithUserEmailList()Ljava/util/List;
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

.method public abstract getTargetPhotoId()Lcom/google/wireless/tacotruck/proto/Network$MediaReference$PicasaPhotoId;
.end method

.method public abstract hasActivityId()Z
.end method

.method public abstract hasAlbumId()Z
.end method

.method public abstract hasAudience()Z
.end method

.method public abstract hasCommentId()Z
.end method

.method public abstract hasContent()Z
.end method

.method public abstract hasLocation()Z
.end method

.method public abstract hasPostType()Z
.end method

.method public abstract hasPublic()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasTargetPhotoId()Z
.end method

.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$CollapsedDataOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CollapsedDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getAclDisplay()Ljava/lang/String;
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

.method public abstract getCreationMsec()J
.end method

.method public abstract getIsPublic()Z
.end method

.method public abstract getLastModifiedMsec()J
.end method

.method public abstract getLikeCount()I
.end method

.method public abstract getLocationClusterId()Ljava/lang/String;
.end method

.method public abstract getLocationName()Ljava/lang/String;
.end method

.method public abstract getMedia(I)Lcom/google/wireless/tacotruck/proto/Data$Media;
.end method

.method public abstract getMediaCount()I
.end method

.method public abstract getMediaList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Media;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPhotoMediaDisplay()Lcom/google/wireless/tacotruck/proto/Data$PhotoMediaDisplay;
.end method

.method public abstract getReshareCount()I
.end method

.method public abstract getTotalCommentCount()I
.end method

.method public abstract hasAclDisplay()Z
.end method

.method public abstract hasCreationMsec()Z
.end method

.method public abstract hasIsPublic()Z
.end method

.method public abstract hasLastModifiedMsec()Z
.end method

.method public abstract hasLikeCount()Z
.end method

.method public abstract hasLocationClusterId()Z
.end method

.method public abstract hasLocationName()Z
.end method

.method public abstract hasPhotoMediaDisplay()Z
.end method

.method public abstract hasReshareCount()Z
.end method

.method public abstract hasTotalCommentCount()Z
.end method

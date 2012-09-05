.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$ExpandedDataOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExpandedDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getActionState()Lcom/google/wireless/tacotruck/proto/Data$ActionState;
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

.method public abstract getLikingUserId(I)J
.end method

.method public abstract getLikingUserIdCount()I
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
.end method

.method public abstract getLocation()Lcom/google/wireless/tacotruck/proto/Data$Location;
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

.method public abstract getReshareData()Lcom/google/wireless/tacotruck/proto/Data$ReshareData;
.end method

.method public abstract hasActionState()Z
.end method

.method public abstract hasLocation()Z
.end method

.method public abstract hasReshareData()Z
.end method

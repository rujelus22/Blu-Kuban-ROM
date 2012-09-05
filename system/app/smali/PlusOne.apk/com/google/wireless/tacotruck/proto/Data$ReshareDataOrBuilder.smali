.class public interface abstract Lcom/google/wireless/tacotruck/proto/Data$ReshareDataOrBuilder;
.super Ljava/lang/Object;
.source "Data.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Data;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReshareDataOrBuilder"
.end annotation


# virtual methods
.method public abstract getOriginalActivityId()Ljava/lang/String;
.end method

.method public abstract getOriginalAuthorGaiaId()J
.end method

.method public abstract getResharingUserId(I)J
.end method

.method public abstract getResharingUserIdCount()I
.end method

.method public abstract getResharingUserIdList()Ljava/util/List;
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

.method public abstract hasOriginalActivityId()Z
.end method

.method public abstract hasOriginalAuthorGaiaId()Z
.end method

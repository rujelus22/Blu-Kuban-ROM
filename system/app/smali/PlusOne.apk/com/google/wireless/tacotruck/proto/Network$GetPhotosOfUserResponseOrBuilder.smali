.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetPhotosOfUserResponseOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetPhotosOfUserResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getApprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
.end method

.method public abstract getApprovedPhotoCount()I
.end method

.method public abstract getApprovedPhotoList()Ljava/util/List;
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

.method public abstract getUnapprovedPhoto(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhoto;
.end method

.method public abstract getUnapprovedPhotoCount()I
.end method

.method public abstract getUnapprovedPhotoList()Ljava/util/List;
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

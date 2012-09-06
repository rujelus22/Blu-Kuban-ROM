.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$UploadPhotoRequestOrBuilder;
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
    name = "UploadPhotoRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getAlbumLabel()Ljava/lang/String;
.end method

.method public abstract getAlbumTitle()Ljava/lang/String;
.end method

.method public abstract getMediaRef()Lcom/google/wireless/tacotruck/proto/Network$MediaReference;
.end method

.method public abstract getReturnAlbumInfo()Z
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

.method public abstract hasAlbumLabel()Z
.end method

.method public abstract hasAlbumTitle()Z
.end method

.method public abstract hasMediaRef()Z
.end method

.method public abstract hasReturnAlbumInfo()Z
.end method

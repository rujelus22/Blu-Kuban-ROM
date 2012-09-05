.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetPhotoOrderResponseOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GetPhotoOrderResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getAlbumEntityVersion()J
.end method

.method public abstract getPhotoOrder(I)Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;
.end method

.method public abstract getPhotoOrderCount()I
.end method

.method public abstract getPhotoOrderList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$PhotoOrder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAlbumEntityVersion()Z
.end method

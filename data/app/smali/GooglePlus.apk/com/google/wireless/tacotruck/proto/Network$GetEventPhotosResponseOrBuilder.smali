.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetEventPhotosResponseOrBuilder;
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
    name = "GetEventPhotosResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getPhotoGroup(I)Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;
.end method

.method public abstract getPhotoGroupCount()I
.end method

.method public abstract getPhotoGroupList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$MobilePhotoGroup;",
            ">;"
        }
    .end annotation
.end method

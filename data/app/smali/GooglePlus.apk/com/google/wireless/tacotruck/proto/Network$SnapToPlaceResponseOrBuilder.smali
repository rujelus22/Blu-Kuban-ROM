.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$SnapToPlaceResponseOrBuilder;
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
    name = "SnapToPlaceResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getPlace(I)Lcom/google/wireless/tacotruck/proto/Data$Location;
.end method

.method public abstract getPlaceCount()I
.end method

.method public abstract getPlaceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$Location;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReverseGeocode(I)Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;
.end method

.method public abstract getReverseGeocodeCount()I
.end method

.method public abstract getReverseGeocodeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Data$ReverseGeocode;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserIsAtFirstLocation()Z
.end method

.method public abstract hasUserIsAtFirstLocation()Z
.end method

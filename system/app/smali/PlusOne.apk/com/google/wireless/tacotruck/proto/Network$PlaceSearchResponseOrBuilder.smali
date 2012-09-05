.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchResponseOrBuilder;
.super Ljava/lang/Object;
.source "Network.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/tacotruck/proto/Network;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlaceSearchResponseOrBuilder"
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

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public abstract getSearchEvent()Lcom/google/wireless/tacotruck/proto/Data$PlaceSearchEvent;
.end method

.method public abstract hasQuery()Z
.end method

.method public abstract hasSearchEvent()Z
.end method

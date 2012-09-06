.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$PlaceSearchRequestOrBuilder;
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
    name = "PlaceSearchRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getPosition()Lcom/google/wireless/tacotruck/proto/Data$Point;
.end method

.method public abstract getQuery()Ljava/lang/String;
.end method

.method public abstract getSearchRadius()I
.end method

.method public abstract hasPosition()Z
.end method

.method public abstract hasQuery()Z
.end method

.method public abstract hasSearchRadius()Z
.end method

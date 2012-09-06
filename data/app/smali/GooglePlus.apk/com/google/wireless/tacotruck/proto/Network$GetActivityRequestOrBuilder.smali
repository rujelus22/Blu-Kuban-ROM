.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequestOrBuilder;
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
    name = "GetActivityRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getActivityId(I)Ljava/lang/String;
.end method

.method public abstract getActivityIdCount()I
.end method

.method public abstract getActivityIdList()Ljava/util/List;
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

.method public abstract getCollapsedDataOnly()Z
.end method

.method public abstract getFetchReadState()Z
.end method

.method public abstract getIdType()Lcom/google/wireless/tacotruck/proto/Network$GetActivityRequest$IdType;
.end method

.method public abstract getObfuscatedOwnerId(I)Ljava/lang/String;
.end method

.method public abstract getObfuscatedOwnerIdCount()I
.end method

.method public abstract getObfuscatedOwnerIdList()Ljava/util/List;
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

.method public abstract hasCollapsedDataOnly()Z
.end method

.method public abstract hasFetchReadState()Z
.end method

.method public abstract hasIdType()Z
.end method

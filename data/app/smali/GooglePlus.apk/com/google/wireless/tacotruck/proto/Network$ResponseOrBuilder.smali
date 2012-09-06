.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$ResponseOrBuilder;
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
    name = "ResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getErrorCode()Lcom/google/wireless/tacotruck/proto/Network$Response$ErrorCode;
.end method

.method public abstract getFavaRequestId(I)J
.end method

.method public abstract getFavaRequestIdCount()I
.end method

.method public abstract getFavaRequestIdList()Ljava/util/List;
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

.method public abstract getIsMasterResponse()Z
.end method

.method public abstract getRequestId()Ljava/lang/String;
.end method

.method public abstract getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
.end method

.method public abstract getResponseBody()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasErrorCode()Z
.end method

.method public abstract hasIsMasterResponse()Z
.end method

.method public abstract hasRequestId()Z
.end method

.method public abstract hasRequestType()Z
.end method

.method public abstract hasResponseBody()Z
.end method

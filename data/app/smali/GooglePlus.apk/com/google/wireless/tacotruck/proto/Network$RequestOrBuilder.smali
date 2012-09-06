.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$RequestOrBuilder;
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
    name = "RequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getFavaRequestId()J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getRequestBody()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getRequestId()Ljava/lang/String;
.end method

.method public abstract getRequestType()Lcom/google/wireless/tacotruck/proto/Network$Request$Type;
.end method

.method public abstract hasFavaRequestId()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract hasRequestBody()Z
.end method

.method public abstract hasRequestId()Z
.end method

.method public abstract hasRequestType()Z
.end method

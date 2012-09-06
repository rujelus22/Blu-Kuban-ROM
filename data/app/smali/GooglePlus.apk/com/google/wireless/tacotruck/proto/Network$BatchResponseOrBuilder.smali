.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$BatchResponseOrBuilder;
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
    name = "BatchResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getResponse(I)Lcom/google/wireless/tacotruck/proto/Network$Response;
.end method

.method public abstract getResponseCount()I
.end method

.method public abstract getResponseList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$Response;",
            ">;"
        }
    .end annotation
.end method

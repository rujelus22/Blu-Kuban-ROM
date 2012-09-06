.class public interface abstract Lcom/google/wireless/tacotruck/proto/Network$BatchRequestOrBuilder;
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
    name = "BatchRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getActionToken()Ljava/lang/String;
.end method

.method public abstract getRequest(I)Lcom/google/wireless/tacotruck/proto/Network$Request;
.end method

.method public abstract getRequestCount()I
.end method

.method public abstract getRequestList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/tacotruck/proto/Network$Request;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSendActionTokenHeader()Z
.end method

.method public abstract getUnauth()Z
.end method

.method public abstract hasActionToken()Z
.end method

.method public abstract hasSendActionTokenHeader()Z
.end method

.method public abstract hasUnauth()Z
.end method

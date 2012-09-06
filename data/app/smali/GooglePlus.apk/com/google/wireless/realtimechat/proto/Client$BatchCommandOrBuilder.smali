.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$BatchCommandOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatchCommandOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientVersion()Ljava/lang/String;
.end method

.method public abstract getClientVersionMessage()Lcom/google/wireless/webapps/Version$ClientVersion;
.end method

.method public abstract getCommand(I)Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;
.end method

.method public abstract getCommandCount()I
.end method

.method public abstract getCommandList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchCommand;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRequest(I)Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;
.end method

.method public abstract getRequestCount()I
.end method

.method public abstract getRequestList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchClientRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getResponse(I)Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;
.end method

.method public abstract getResponseCount()I
.end method

.method public abstract getResponseList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchServerResponse;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStateUpdate(I)Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;
.end method

.method public abstract getStateUpdateCount()I
.end method

.method public abstract getStateUpdateList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$BunchServerStateUpdate;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasClientVersion()Z
.end method

.method public abstract hasClientVersionMessage()Z
.end method

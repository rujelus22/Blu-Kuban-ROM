.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$TileEventRequestOrBuilder;
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
    name = "TileEventRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getEventData(I)Lcom/google/wireless/realtimechat/proto/Data$KeyValue;
.end method

.method public abstract getEventDataCount()I
.end method

.method public abstract getEventDataList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$KeyValue;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEventType()Ljava/lang/String;
.end method

.method public abstract getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
.end method

.method public abstract getTileType()Ljava/lang/String;
.end method

.method public abstract getTileVersion()I
.end method

.method public abstract hasConversationId()Z
.end method

.method public abstract hasEventType()Z
.end method

.method public abstract hasStubbyInfo()Z
.end method

.method public abstract hasTileType()Z
.end method

.method public abstract hasTileVersion()Z
.end method

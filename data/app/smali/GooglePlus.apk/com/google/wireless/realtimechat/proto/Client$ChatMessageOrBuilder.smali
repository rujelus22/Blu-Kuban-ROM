.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$ChatMessageOrBuilder;
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
    name = "ChatMessageOrBuilder"
.end annotation


# virtual methods
.method public abstract getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;
.end method

.method public abstract getContentCount()I
.end method

.method public abstract getContentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Content;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getMessageClientId()Ljava/lang/String;
.end method

.method public abstract getReceiverState()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage$ReceiverState;
.end method

.method public abstract getRecipientId(I)Ljava/lang/String;
.end method

.method public abstract getRecipientIdCount()I
.end method

.method public abstract getRecipientIdList()Ljava/util/List;
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

.method public abstract getRetry()Z
.end method

.method public abstract getSenderId()Ljava/lang/String;
.end method

.method public abstract getShardingHint()Ljava/lang/String;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract hasConversationId()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasMessageClientId()Z
.end method

.method public abstract hasReceiverState()Z
.end method

.method public abstract hasRetry()Z
.end method

.method public abstract hasSenderId()Z
.end method

.method public abstract hasShardingHint()Z
.end method

.method public abstract hasTimestamp()Z
.end method

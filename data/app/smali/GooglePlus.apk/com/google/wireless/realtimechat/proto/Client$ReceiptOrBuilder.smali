.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$ReceiptOrBuilder;
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
    name = "ReceiptOrBuilder"
.end annotation


# virtual methods
.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getMessageClientId()Ljava/lang/String;
.end method

.method public abstract getMessageId()Ljava/lang/String;
.end method

.method public abstract getMessageTimestamp()J
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

.method public abstract getSenderId()Ljava/lang/String;
.end method

.method public abstract getShardingHint()Ljava/lang/String;
.end method

.method public abstract getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getType()Lcom/google/wireless/realtimechat/proto/Client$Receipt$Type;
.end method

.method public abstract hasConversationId()Z
.end method

.method public abstract hasMessageClientId()Z
.end method

.method public abstract hasMessageId()Z
.end method

.method public abstract hasMessageTimestamp()Z
.end method

.method public abstract hasSenderId()Z
.end method

.method public abstract hasShardingHint()Z
.end method

.method public abstract hasStubbyInfo()Z
.end method

.method public abstract hasTimestamp()Z
.end method

.method public abstract hasType()Z
.end method

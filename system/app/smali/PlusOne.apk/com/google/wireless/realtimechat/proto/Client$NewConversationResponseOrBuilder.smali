.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponseOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NewConversationResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
.end method

.method public abstract getConversationClientId()Ljava/lang/String;
.end method

.method public abstract getInviteType()Lcom/google/wireless/realtimechat/proto/Client$NewConversationResponse$InviteType;
.end method

.method public abstract getParticipantError(I)Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;
.end method

.method public abstract getParticipantErrorCount()I
.end method

.method public abstract getParticipantErrorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ParticipantError;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getReceipt()Lcom/google/wireless/realtimechat/proto/Client$Receipt;
.end method

.method public abstract getRecentMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
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

.method public abstract getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
.end method

.method public abstract hasClientConversation()Z
.end method

.method public abstract hasConversationClientId()Z
.end method

.method public abstract hasInviteType()Z
.end method

.method public abstract hasReceipt()Z
.end method

.method public abstract hasRecentMessage()Z
.end method

.method public abstract hasSenderId()Z
.end method

.method public abstract hasStatus()Z
.end method

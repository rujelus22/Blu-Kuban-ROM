.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$NewConversationRequestOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NewConversationRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getChatMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
.end method

.method public abstract getConversationClientId()Ljava/lang/String;
.end method

.method public abstract getConversationMetadata()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
.end method

.method public abstract getParticipantCount()I
.end method

.method public abstract getParticipantId(I)Ljava/lang/String;
.end method

.method public abstract getParticipantIdCount()I
.end method

.method public abstract getParticipantIdList()Ljava/util/List;
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

.method public abstract getParticipantList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Participant;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRetry()Z
.end method

.method public abstract getSenderId()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
.end method

.method public abstract hasChatMessage()Z
.end method

.method public abstract hasConversationClientId()Z
.end method

.method public abstract hasConversationMetadata()Z
.end method

.method public abstract hasDisplayName()Z
.end method

.method public abstract hasRetry()Z
.end method

.method public abstract hasSenderId()Z
.end method

.method public abstract hasType()Z
.end method

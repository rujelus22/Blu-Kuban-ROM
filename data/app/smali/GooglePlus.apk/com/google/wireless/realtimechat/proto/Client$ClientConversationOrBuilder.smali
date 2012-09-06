.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$ClientConversationOrBuilder;
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
    name = "ClientConversationOrBuilder"
.end annotation


# virtual methods
.method public abstract getConversationClientId()Ljava/lang/String;
.end method

.method public abstract getConversationMetadata()Lcom/google/wireless/realtimechat/proto/Data$ConversationMetadata;
.end method

.method public abstract getCreatedAt()J
.end method

.method public abstract getFirstEventTimestamp()J
.end method

.method public abstract getHidden()Z
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInactiveParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
.end method

.method public abstract getInactiveParticipantCount()I
.end method

.method public abstract getInactiveParticipantList()Ljava/util/List;
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

.method public abstract getInviter()Lcom/google/wireless/realtimechat/proto/Data$Participant;
.end method

.method public abstract getLastMessage()Lcom/google/wireless/realtimechat/proto/Client$ChatMessage;
.end method

.method public abstract getLastPreviewEvent()Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
.end method

.method public abstract getMuted()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNeedsAccept()Z
.end method

.method public abstract getOffTheRecord()Z
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

.method public abstract getType()Lcom/google/wireless/realtimechat/proto/Data$ConversationType;
.end method

.method public abstract getUnreadCount()J
.end method

.method public abstract hasConversationClientId()Z
.end method

.method public abstract hasConversationMetadata()Z
.end method

.method public abstract hasCreatedAt()Z
.end method

.method public abstract hasFirstEventTimestamp()Z
.end method

.method public abstract hasHidden()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasInviter()Z
.end method

.method public abstract hasLastMessage()Z
.end method

.method public abstract hasLastPreviewEvent()Z
.end method

.method public abstract hasMuted()Z
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasNeedsAccept()Z
.end method

.method public abstract hasOffTheRecord()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract hasUnreadCount()Z
.end method

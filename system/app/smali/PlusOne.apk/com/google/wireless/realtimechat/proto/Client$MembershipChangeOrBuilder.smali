.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$MembershipChangeOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MembershipChangeOrBuilder"
.end annotation


# virtual methods
.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
.end method

.method public abstract getParticipantCount()I
.end method

.method public abstract getParticipantId()Ljava/lang/String;
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

.method public abstract getTimestamp()J
.end method

.method public abstract getType()Lcom/google/wireless/realtimechat/proto/Client$MembershipChange$Type;
.end method

.method public abstract hasConversationId()Z
.end method

.method public abstract hasParticipantId()Z
.end method

.method public abstract hasSenderId()Z
.end method

.method public abstract hasTimestamp()Z
.end method

.method public abstract hasType()Z
.end method

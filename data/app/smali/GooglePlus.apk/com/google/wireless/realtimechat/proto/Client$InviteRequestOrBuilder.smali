.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$InviteRequestOrBuilder;
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
    name = "InviteRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getParticipant(I)Lcom/google/wireless/realtimechat/proto/Data$Participant;
.end method

.method public abstract getParticipantCount()I
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

.method public abstract getSenderId()Ljava/lang/String;
.end method

.method public abstract getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
.end method

.method public abstract hasConversationId()Z
.end method

.method public abstract hasSenderId()Z
.end method

.method public abstract hasStubbyInfo()Z
.end method

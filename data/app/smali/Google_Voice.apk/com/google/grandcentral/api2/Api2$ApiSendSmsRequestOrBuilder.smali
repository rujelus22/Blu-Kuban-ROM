.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiSendSmsRequestOrBuilder;
.super Ljava/lang/Object;
.source "Api2.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/grandcentral/api2/Api2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ApiSendSmsRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientLoginToken()Ljava/lang/String;
.end method

.method public abstract getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getConversationIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getCreatePhonebookIfNotExist()Z
.end method

.method public abstract getDEPRECATEDOutgoingNumber()Ljava/lang/String;
.end method

.method public abstract getDEPRECATEDOutgoingNumberBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getMessageId(I)J
.end method

.method public abstract getMessageIdCount()I
.end method

.method public abstract getMessageIdList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOutgoingDestination(I)Ljava/lang/String;
.end method

.method public abstract getOutgoingDestinationBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getOutgoingDestinationCount()I
.end method

.method public abstract getOutgoingDestinationList()Ljava/util/List;
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

.method public abstract getSendErrorSmsOnFreeQuotaError()Z
.end method

.method public abstract getSmsMessage()Ljava/lang/String;
.end method

.method public abstract getSmsMessageBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getSubscriberDid()Ljava/lang/String;
.end method

.method public abstract getSubscriberDidBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract hasClientLoginToken()Z
.end method

.method public abstract hasConversationId()Z
.end method

.method public abstract hasCreatePhonebookIfNotExist()Z
.end method

.method public abstract hasDEPRECATEDOutgoingNumber()Z
.end method

.method public abstract hasSendErrorSmsOnFreeQuotaError()Z
.end method

.method public abstract hasSmsMessage()Z
.end method

.method public abstract hasSubscriberDid()Z
.end method

.class public interface abstract Lcom/google/wireless/realtimechat/proto/Buzz$MessagingPayloadOrBuilder;
.super Ljava/lang/Object;
.source "Buzz.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Buzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessagingPayloadOrBuilder"
.end annotation


# virtual methods
.method public abstract getBuzzHeader()Lcom/google/wireless/realtimechat/proto/Buzz$BuzzHeader;
.end method

.method public abstract getPayload()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getPayloadType()I
.end method

.method public abstract getRecipient(I)Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;
.end method

.method public abstract getRecipientCount()I
.end method

.method public abstract getRecipientList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Buzz$MessagingRecipientData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSender()Lcom/google/wireless/realtimechat/proto/Buzz$InternalAddress;
.end method

.method public abstract hasBuzzHeader()Z
.end method

.method public abstract hasPayload()Z
.end method

.method public abstract hasPayloadType()Z
.end method

.method public abstract hasSender()Z
.end method

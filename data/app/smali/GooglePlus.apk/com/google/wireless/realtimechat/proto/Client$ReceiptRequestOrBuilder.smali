.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequestOrBuilder;
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
    name = "ReceiptRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getReceiptInfo(I)Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;
.end method

.method public abstract getReceiptInfoCount()I
.end method

.method public abstract getReceiptInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$ReceiptRequest$ReceiptInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
.end method

.method public abstract hasConversationId()Z
.end method

.method public abstract hasStubbyInfo()Z
.end method

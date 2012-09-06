.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$ConversationRenameRequestOrBuilder;
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
    name = "ConversationRenameRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getNewDisplayName()Ljava/lang/String;
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

.method public abstract getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
.end method

.method public abstract hasConversationId()Z
.end method

.method public abstract hasNewDisplayName()Z
.end method

.method public abstract hasStubbyInfo()Z
.end method

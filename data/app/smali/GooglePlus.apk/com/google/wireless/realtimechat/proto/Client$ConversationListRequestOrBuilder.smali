.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequestOrBuilder;
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
    name = "ConversationListRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getSenderId()Ljava/lang/String;
.end method

.method public abstract getTimestamp()J
.end method

.method public abstract getType()Lcom/google/wireless/realtimechat/proto/Client$ConversationListRequest$Type;
.end method

.method public abstract hasConversationId()Z
.end method

.method public abstract hasSenderId()Z
.end method

.method public abstract hasTimestamp()Z
.end method

.method public abstract hasType()Z
.end method

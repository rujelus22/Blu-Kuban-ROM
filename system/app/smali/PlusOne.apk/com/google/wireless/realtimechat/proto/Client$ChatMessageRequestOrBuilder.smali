.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$ChatMessageRequestOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatMessageRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getContent(I)Lcom/google/wireless/realtimechat/proto/Data$Content;
.end method

.method public abstract getContentCount()I
.end method

.method public abstract getContentList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Data$Content;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConversationId()Ljava/lang/String;
.end method

.method public abstract getMessageClientId()Ljava/lang/String;
.end method

.method public abstract getRetry()Z
.end method

.method public abstract getStubbyInfo()Lcom/google/wireless/realtimechat/proto/Data$StubbyInfo;
.end method

.method public abstract hasConversationId()Z
.end method

.method public abstract hasMessageClientId()Z
.end method

.method public abstract hasRetry()Z
.end method

.method public abstract hasStubbyInfo()Z
.end method

.class public interface abstract Lcom/google/wireless/realtimechat/proto/Client$EventSearchResponseOrBuilder;
.super Ljava/lang/Object;
.source "Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/realtimechat/proto/Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventSearchResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getConversation()Lcom/google/wireless/realtimechat/proto/Client$ClientConversation;
.end method

.method public abstract getEvent(I)Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;
.end method

.method public abstract getEventCount()I
.end method

.method public abstract getEventList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/wireless/realtimechat/proto/Client$EventStreamResponse$Event;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStatus()Lcom/google/wireless/realtimechat/proto/Data$ResponseStatus;
.end method

.method public abstract hasConversation()Z
.end method

.method public abstract hasStatus()Z
.end method

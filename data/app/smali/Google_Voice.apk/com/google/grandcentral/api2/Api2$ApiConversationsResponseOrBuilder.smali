.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiConversationsResponseOrBuilder;
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
    name = "ApiConversationsResponseOrBuilder"
.end annotation


# virtual methods
.method public abstract getConversation(I)Lcom/google/grandcentral/api2/Api2$ApiConversation;
.end method

.method public abstract getConversationCount()I
.end method

.method public abstract getConversationList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiConversation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRemaining()I
.end method

.method public abstract getStatus()Lcom/google/grandcentral/api2/Api2$ApiStatus;
.end method

.method public abstract hasRemaining()Z
.end method

.method public abstract hasStatus()Z
.end method

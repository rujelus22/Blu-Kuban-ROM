.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiGetConversationRequestOrBuilder;
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
    name = "ApiGetConversationRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientLoginToken()Ljava/lang/String;
.end method

.method public abstract getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getConversationId(I)Ljava/lang/String;
.end method

.method public abstract getConversationIdBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getConversationIdCount()I
.end method

.method public abstract getConversationIdList()Ljava/util/List;
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

.method public abstract hasClientLoginToken()Z
.end method

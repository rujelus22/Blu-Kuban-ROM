.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiConversationOrBuilder;
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
    name = "ApiConversationOrBuilder"
.end annotation


# virtual methods
.method public abstract getConversationTime()J
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIdBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLabel(I)Ljava/lang/String;
.end method

.method public abstract getLabelBytes(I)Lcom/google/protobuf/ByteString;
.end method

.method public abstract getLabelCount()I
.end method

.method public abstract getLabelList()Ljava/util/List;
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

.method public abstract getLastModifiedTimestamp()J
.end method

.method public abstract getPhoneCall(I)Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;
.end method

.method public abstract getPhoneCallCount()I
.end method

.method public abstract getPhoneCallList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiPhoneCall;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRead()Z
.end method

.method public abstract hasConversationTime()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasLastModifiedTimestamp()Z
.end method

.method public abstract hasRead()Z
.end method

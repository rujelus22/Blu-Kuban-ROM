.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiListConversationsRequestOrBuilder;
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
    name = "ApiListConversationsRequestOrBuilder"
.end annotation


# virtual methods
.method public abstract getClientLoginToken()Ljava/lang/String;
.end method

.method public abstract getClientLoginTokenBytes()Lcom/google/protobuf/ByteString;
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

.method public abstract getLimit()I
.end method

.method public abstract getModifiedSinceTimestamp()J
.end method

.method public abstract getOffset()I
.end method

.method public abstract getWantTranscript()Z
.end method

.method public abstract hasClientLoginToken()Z
.end method

.method public abstract hasLimit()Z
.end method

.method public abstract hasModifiedSinceTimestamp()Z
.end method

.method public abstract hasOffset()Z
.end method

.method public abstract hasWantTranscript()Z
.end method

.class public interface abstract Lcom/google/grandcentral/api2/Api2$ApiTranscriptSimpleOrBuilder;
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
    name = "ApiTranscriptSimpleOrBuilder"
.end annotation


# virtual methods
.method public abstract getConfidence()F
.end method

.method public abstract getEditedText()Ljava/lang/String;
.end method

.method public abstract getEditedTextBytes()Lcom/google/protobuf/ByteString;
.end method

.method public abstract getWordTokens(I)Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;
.end method

.method public abstract getWordTokensCount()I
.end method

.method public abstract getWordTokensList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/grandcentral/api2/Api2$ApiTranscriptWordToken;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasConfidence()Z
.end method

.method public abstract hasEditedText()Z
.end method
